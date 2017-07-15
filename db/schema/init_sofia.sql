INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'rtp-digit-delay', '40', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'media-option', 'resume-media-on-hold', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'media-option', 'bypass-media-after-att-xfer', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'user-agent-string', 'FreeSWITCH Rocks!', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'debug', '0', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'shutdown-on-fail', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'sip-trace', 'no', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'sip-capture', 'no', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'presence-proto-lookup', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'liberal-dtmf', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'watchdog-enabled', 'no', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'watchdog-step-timeout', '30000', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'watchdog-event-timeout', '30000', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'log-auth-failures', 'false', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'forward-unsolicited-mwi-notify', 'false', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'rfc2833-pt', '101', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'sip-port', '5060', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'dtmf-duration', '2000', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'inbound-codec-prefs', '$${inbound_codec_prefs},H264', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'outbound-codec-prefs', '$${outbound_codec_prefs},H264', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'rtp-timer-name', 'soft', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'rtp-ip', '$${local_ip_v4}', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'sip-ip', '$${local_ip_v4}', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'hold-music', '$${hold_music}', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'apply-nat-acl', 'nat.auto', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'cid-in-1xx', 'false', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'extended-info-parsing', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'aggressive-nat-detection', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'enable-100rel', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'disable-srv503', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'enable-compact-headers', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'enable-timer', 'false', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'minimum-session-expires', '120', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'apply-inbound-acl', 'domains', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'local-network-acl', 'localnet.auto', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'apply-register-acl', 'domains', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'dtmf-type', 'info', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'send-message-query-on-register', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'send-presence-on-register', 'first-only', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'caller-id-type', 'rpid', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'caller-id-type', 'pid', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'caller-id-type', 'none', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'record-path', '$${recordings_dir}', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'record-template', '${caller_id_number}.${target_domain}.${strftime(%Y-%m-%d-%H-%M-%S)}.wav', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'manage-presence', 'true', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'presence-probe-on-register', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'manage-shared-appearance', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'dbname', 'share_presence', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'presence-hosts', '$${domain},$${local_ip_v4}', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'presence-privacy', '$${presence_privacy}', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'bitpacking', 'aal2', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'max-proceeding', '1000', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'session-timeout', '1800', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'multiple-registrations', 'contact', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'inbound-codec-negotiation', 'generous', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'bind-params', 'transport=udp', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'unregister-on-options-fail', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'all-reg-options-ping', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'nat-options-ping', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'sip-options-respond-503-on-busy', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'sip-messages-respond-200-ok', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'sip-subscribe-respond-200-ok', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'tls', '$${internal_ssl_enable}', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'tls-only', 'false', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'tls-bind-params', 'transport=tls', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'tls-sip-port', '$${internal_tls_port}', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'tls-cert-dir', '', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'tls-passphrase', '', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'tls-verify-date', 'true', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'tls-verify-policy', 'none', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'tls-verify-depth', '2', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'tls-verify-in-subjects', '', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'tls-version', '$${sip_tls_version}', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'tls-ciphers', '$${sip_tls_ciphers}', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'rtp-autoflush-during-bridge', 'false', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'rtp-rewrite-timestamps', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'pass-rfc2833', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'odbc-dsn', 'dsn:user:pass', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'inbound-bypass-media', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'inbound-proxy-media', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'inbound-late-negotiation', 'true', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'inbound-zrtp-passthru', 'true', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'accept-blind-reg', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'accept-blind-auth', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'suppress-cng', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'nonce-ttl', '60', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'disable-transcoding', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'manual-redirect', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'disable-transfer', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'disable-register', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'NDLB-broken-auth-hash', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'NDLB-received-in-nat-reg-contact', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'auth-calls', 'true', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'inbound-reg-force-matching-username', 'true', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'auth-all-packets', 'false', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'ext-rtp-ip', 'auto-nat', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'ext-sip-ip', 'auto-nat', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'rtp-timeout-sec', '300', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'rtp-hold-timeout-sec', '1800', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'vad', 'in', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'vad', 'out', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'vad', 'both', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'alias', 'sip:10.0.1.251:5555', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'force-register-domain', '$${domain}', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'force-subscription-domain', '$${domain}', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'force-register-db-domain', '$${domain}', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'ws-binding', ':5066', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'wss-binding', ':7443', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'delete-subs-on-register', 'false', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'inbound-reg-in-new-thread', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'rtcp-audio-interval-msec', '5000', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'rtcp-video-interval-msec', '5000', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'force-subscription-expires', '60', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'sip-subscription-max-deviation', '120', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'disable-transfer', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'disable-register', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'enable-3pcc', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'NDLB-force-rport', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'challenge-realm', 'auto_from', 0, 0);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'disable-rtp-auto-adjust', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'inbound-use-callid-as-uuid', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'outbound-use-uuid-as-callid', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'rtp-autofix-timing', 'false', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'pass-callee-id', 'false', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'auto-rtp-bugs', 'clear', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'disable-srv', 'false', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'disable-naptr', 'false', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'timer-T1', '500', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'timer-T1X64', '32000', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'timer-T2', '4000', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'timer-T4', '4000', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'auto-jitterbuffer-msec', '60', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'renegotiate-codec-on-hold', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('SOFIA', 'context', 'public', 0, 0);

INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'scheme', 'Digest', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'extension-in-contact', 'true', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'auth-username', 'cluecon', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'caller-id-in-from', 'false', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'extension', 'cluecon', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'proxy', 'example.com', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'context', 'default', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'expire-seconds', '600', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', '908-retry-seconds', '90', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'retry-seconds', '30', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'timeout-seconds', '30', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'from-user', 'cluecon', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'from-domain', 'example.com', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'contact-host', 'example.com', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'register-proxy', 'example.com', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'outbound-proxy', 'sip:example.com', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'distinct-to', '?', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'destination-prefix', '?', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'rfc-5626', '?', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'reg-id', '?', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'contact-params', '?', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'register-transport', 'tcp', 0, 1);
INSERT INTO params (realm, k, v, ref_id, disabled) VALUES('gateway', 'ping', '25', 0, 1);

INSERT INTO gateways (name, realm, register) VALUES ('example','example.com','false');
INSERT INTO sip_profiles (name) VALUES ('default');
INSERT INTO sip_profiles (name) VALUES ('public');

INSERT INTO params (realm, k, v, ref_id, disabled)
	SELECT 'gateway', k, v, (SELECT id FROM gateways WHERE name = 'example'), disabled From params WHERE realm = 'gateway' and ref_id = 0;

INSERT INTO params (realm, k, v, ref_id, disabled)
	SELECT 'sip_profile', k, v, (SELECT id FROM sip_profiles WHERE name = 'default'), disabled From params WHERE realm = 'SOFIA' and ref_id = 0;

INSERT INTO params (realm, k, v, ref_id, disabled)
	SELECT 'sip_profile', k, v, (SELECT id FROM sip_profiles WHERE name = 'public'), disabled From params WHERE realm = 'SOFIA' and ref_id = 0;

UPDATE params set v = '5080'
	WHERE k = 'sip-port' and realm = 'sip_profile' and ref_id = (SELECT id FROM sip_profiles WHERE name = 'public');

UPDATE params set v = 'false'
	WHERE k = 'auth-calls' and realm = 'sip_profile' and ref_id = (SELECT id FROM sip_profiles WHERE name = 'public');

UPDATE params set disabled = 1
	WHERE k = 'apply-inbound-acl' and realm = 'sip_profile' and ref_id = (SELECT id FROM sip_profiles WHERE name = 'public');
