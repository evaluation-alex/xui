/*
 * HTML5 GUI Framework for FreeSWITCH - XUI
 * Copyright (C) 2015-2017, Seven Du <dujinfang@x-y-t.cn>
 *
 * Version: MPL 1.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is XUI - GUI for FreeSWITCH
 *
 * The Initial Developer of the Original Code is
 * Mariah Yang <yangxiaojin@x-y-t.cn>
 * Portions created by the Initial Developer are Copyright (C)
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *
 * XueYun Jiang <jiangxueyun@x-y-t.cn>
 *
 *
 */

'use strict';

import React from 'react';
import T from 'i18n-react';
import { ProgressBar, Grid, ButtonToolbar, ButtonGroup, Button } from 'react-bootstrap';
import { xFetchJSON } from '../jsx/libs/xtools';

// class NewServer extends React.Component {

// }

// class ServerList extends React.Component {
// 	constructor(props) {
// 		super(props);
// 		this.state = { servers: null, formShow: false };
// 	}

// 	componentDidMount() {
// 		let _this = this;

// 		xFetchJSON('/api/server_monitor/').then((data) => {
// 			if (data.code == 200) {
// 				_this.setState({servers: data.data});
// 			}
// 		});
// 	}

// 	handleSortClick(e) {
// 		let data = e.target.getAttribute("data");
// 	}

// 	handleClick(e) {
// 		let data = e.target.getAttribute("data");

// 		console.log("data", data);

// 		if (data == "new") {
// 			this.setState({ formShow: true});
// 		}
// 	}

// 	handleServerAdded(e) {

// 	}

// 	render() {
// 		let rows = (this.state.servers || []).map((s) => {
// 			return <tr><td>{s.domain}</td><td></td></tr>
// 		})
// 		let formClose = () => this.setState({ formShow: false });

// 		return <div>
// 				<h2><T.span text="Servers"/></h2>
// 				<ButtonToolbar className="pull-right">
// 				<ButtonGroup>
// 					<Button onClick={this.handleClick.bind(this)} data="new">
// 						<i className="fa fa-plus" aria-hidden="true" data="new"></i>&nbsp;
// 						<T.span text="New" data="new"/>
// 					</Button>
// 				</ButtonGroup>
// 				</ButtonToolbar>
// 				<table className="table">
// 				<tbody>
// 				<tr>
// 					<th><T.span text="Name" onClick={this.handleSortClick.bind(this)} data="Name" /></th>
// 					<th><T.span text="Description" onClick={this.handleSortClick.bind(this)} data="Description" /></th>
// 					<th><T.span style={{ cursor: "pointer" }} text="Delete" onClick={this.handleSortClick.bind(this)} title={T.translate("Click me to toggle fast delete mode")}/></th>
// 				</tr>
// 				{
// 					(this.state.servers || []).map((s) => {
// 						return <tr>
// 								<td>{s.domain}</td>
// 								<td></td>
// 								<td><T.a onClick={this.handleClick.bind(this)} data="Delete" text="Delete"/></td>
// 							</tr>
// 					})
// 				}
// 				</tbody>
// 				</table>
// 				<NewServer show={this.state.formShow} onHide={formClose} onNewAdded={this.handleServerAdded.bind(this)}/>
// 			</div>
// 	}
// }

class ServerPage extends React.Component {
	constructor(props) {
		super(props);
		this.state = { info: null };
		this.websocket = null;
		this.timer = 0;
	}

	onOpen(evt) {
		let _this = this;

		console.error("connected\n");
		_this.timer = setInterval(function() {
				_this.doSend('1')
			}, 1000);
	}

	onClose(evt) {
		console.log("disconnected\n");
	}

	doDisconnect() {
		if (this.websocket) {
			this.websocket.close();
		}
	}

	onMessage(evt) {
		// console.log(evt, JSON.parse(evt.data));
		this.setState({info: JSON.parse(evt.data)});
	}

	onError(evt) {
		console.log("error: ", evt.data);
		this.websocket.close();
	}

	doSend(message) {
		console.log("sent: ", message, this.websocket);
		this.websocket.send(message);
	}

	test() {
		console.log("test");
		this.doSend("111");
	}

	doConnect() {
		let _this = this;

		_this.websocket = new WebSocket("ws://" + _this.props.domain + ":8000/");
		_this.websocket.onopen = function(evt) { _this.onOpen(evt) };
		_this.websocket.onclose = function(evt) { _this.onClose(evt) };
		_this.websocket.onmessage = function(evt) { _this.onMessage(evt) };
		_this.websocket.onerror = function(evt) { _this.onError(evt) };
	}

	componentDidMount() {
		this.doConnect();
	}

	componentWillUnmount() {
		let _this = this;

		if (_this.timer) {
			clearInterval(_this.timer);
		}
		_this.doDisconnect();
	}

	handleClick(e) {
		let data = e.target.getAttribute("data");

		if (data == "Reconnect") {
			console.log("Reconnect");
			this.doDisconnect();
			this.doConnect();
		}
	}

	render() {
		// console.error("render", info);
		return <div>
			<font color="#00F0F0" size="6">{this.props.domain}</font>
			<ButtonToolbar className="pull-right">
				<Button onClick={this.handleClick.bind(this)} data="new">
					<T.span text="Reconnect" data="Reconnect"/>
				</Button>
			</ButtonToolbar>
			{
				this.state.info ?
					<div>
						<font>CPU: {this.state.info.cpu}% </font>
						<ProgressBar bsStyle="success" now={this.state.info.cpu} label={this.state.info.cpu + '%'}  />
						<font>memory: {this.state.info.memory.percent}% {this.state.info.memory.used}M/{this.state.info.memory.total}M</font>
						<ProgressBar active bsStyle="success" now={this.state.info.memory.percent} label={this.state.info.memory.percent + '%'} />
					</div>
				: ''
			}
		</div>
	}
}

class ServerMonitorPage extends React.Component {
	constructor(props) {
		super(props);
		this.state = {servers: null};
	}

	componentDidMount() {
		let _this = this;

		xFetchJSON('/api/server_monitor/').then((data) => {
			if (data.code == 200) {
				_this.setState({servers: data.data});
			}
		});
	}

	render() {
		let myStyle = {
			'width': "48%",
			'float': "left",
			'padding-right': "10px",
			'padding-left': "10px",
			'padding-top': "5px",
			'padding-bottom': "5px",
			'margin-right': "1%",
			'margin-left': "1%",
			'margin-top': "5px",
			'margin-bottom': "5px",
			'border': "3px solid blue",
			'background-color': '#F5F5F5'
		};
		return <div>
			{
				(this.state.servers || []).map((s) => {
					return <div style={myStyle}>
						<ServerPage domain={s.domain}/>
						</div>
				})
			}
		</div>
	}
}

export default ServerMonitorPage;
