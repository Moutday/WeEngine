<?php
goto qGe8Z; xGFdC: require_once IA_ROOT . '/addons/nx_activity/functions.php';
goto AiDza; qGe8Z: defined('IN_IA') or exit('Access Denied');
goto xGFdC;
class Nx_activityModuleSite  extends WeModuleSite {

    public  function doWebNews(){
        require 'inc/web/activity.ctrl.php';
    }

    public  function activity(){
        require 'inc/api/activity.ctrl.php';
    }

    public function doWebSetting() { goto FIAKe; dzxzp: Cws6G: goto oJt27; WOqQN: pMYxr: goto LtzI7; VNhzv: chmod($dir, 0777); goto dzxzp; Dl0yv: PXVff: goto Z_oLb; oJt27: if (empty($_GPC['apiclient_cert'])) { goto bpGqr; } goto vZI7V; TKy0E: kKc1s: goto smaPs; DdTMV: if (empty($_GPC['apiclient_key'])) { goto pMYxr; } goto uB6ae; PEke4: if ($_GPC['act'] == 'submit') { goto kKc1s; } goto car2e; FIAKe: global $_GPC, $_W; goto lHNqT; tkc3K: include $this->template('web/setting'); goto bZliD; lHNqT: $weid = $_W['uniacid']; goto PEke4; bZliD: goto PXVff; goto TKy0E; an0Ma: Yx9pE: goto tkc3K; moPXt: mkdir($dir); goto VNhzv; vZI7V: file_put_contents($dir . '/apiclient_cert_' . $weid . '.pem', $_GPC['apiclient_cert']); goto BGRbM; LtzI7: message('保存成功', 'referer', 'info'); goto Dl0yv; IF_ey: $dir = IA_ROOT . '/addons/hc_doudou/cert'; goto wjL9G; AjdTY: CXEzd: goto IF_ey; AD9Un: foreach ($res as $key => $val) { $set[$val['title']] = json_decode($val['value'], true); OCzg5: } goto an0Ma; lkKGd: foreach ($data as $key => $val) { pdo_insert('hcdoudou_setting', array("weid" => $weid, "only" => $key . $weid, "title" => $key, "value" => $val), 'true'); h2Fn_: } goto AjdTY; car2e: $res = pdo_getall('hcdoudou_setting', array("weid" => $weid)); goto AD9Un; BGRbM: bpGqr: goto DdTMV; wjL9G: if (file_exists($dir)) { goto Cws6G; } goto moPXt; uB6ae: file_put_contents($dir . '/apiclient_key_' . $weid . '.pem', $_GPC['apiclient_key']); goto WOqQN; smaPs: $data = array("basic" => json_encode($_GPC['basic']), "icon" => json_encode($_GPC['icon']), "pay" => json_encode($_GPC['pay']), "forward" => json_encode($_GPC['forward']), "version" => json_encode($_GPC['version']), "notice" => json_encode($_GPC['notice']), "fenxiao" => json_encode($_GPC['fenxiao']), "cash" => json_encode($_GPC['cash'])); goto lkKGd; Z_oLb: } public function doWebUsers() { goto b4RZ2; iLt64: goto jz_aD; goto B7Fkw; M8dz1: $where = array("weid" => $weid); goto iLt64; QLKtX: jz_aD: goto DhKPv; cxqwc: $page = pagination($total, $pageindex, $pagesize); goto Nw66p; Nw66p: include $this->template('web/users'); goto BFz5a; kly23: $weid = $_W['uniacid']; goto b7VHu; rcASQ: $where = array("weid" => $weid, "nickname like" => '%' . $_GPC['keyword'] . '%'); goto QLKtX; DMSkt: if (!empty($keyword)) { goto yWK5J; } goto M8dz1; rOfOH: $keyword = $_GPC['keyword']; goto DMSkt; b7VHu: $pageindex = max(1, intval($_GPC['page'])); goto bCyUV; DhKPv: $users = pdo_getslice('hcdoudou_users', $where, array($pageindex, $pagesize), $total, array(), '', 'createtime desc'); goto cxqwc; bCyUV: $pagesize = 10; goto rOfOH; b4RZ2: global $_GPC, $_W; goto kly23; B7Fkw: yWK5J: goto rcASQ; BFz5a: } public function doWebUserdo() { goto OekV2; DQMZw: message('操作成功', $this->createWebUrl('users'), 'success'); goto WeQL1; qPSiF: pdo_delete('hcdoudou_users', array("uid" => $_GPC['uid'])); goto DQMZw; WeQL1: tOlJx: goto OLdAl; OLdAl: $info = pdo_get('hcdoudou_users', array("uid" => $_GPC['uid'])); goto jnRdU; jnRdU: include $this->template('web/users_post'); goto B4ZMV; GC6pq: if (!($_GPC['act'] == 'del')) { goto tOlJx; } goto qPSiF; OekV2: global $_GPC, $_W; goto GC6pq; B4ZMV: } public function doWebGuan() { goto JI52m; j9sGH: $pagesize = 20; goto y5Ard; JWx01: Yizlk: goto dRPei; Kpn0A: $pageindex = max(1, intval($_GPC['page'])); goto j9sGH; JI52m: global $_GPC, $_W; goto WFu2G; zwv2K: if (empty($keyword)) { goto krzj4; } goto XjVCV; dRPei: $page = pagination($total, $pageindex, $pagesize); goto jyevv; RqdgC: krzj4: goto TJaad; Bwh1a: $list = pdo_getslice('hcdoudou_guan', $where, array($pageindex, $pagesize), $total, array(), '', 'id desc'); goto F0gjH; jyevv: include $this->template('web/guan'); goto L3biL; y5Ard: $keyword = $_GPC['keyword']; goto zwv2K; F0gjH: foreach ($list as $key => $val) { goto zYwAB; jtSDZ: $list[$key]['losebgm'] = tomedia($val['losebgm']); goto frb9g; XLruo: $list[$key]['gamebgm'] = tomedia($val['gamebgm']); goto A9yyE; frb9g: F_OlF: goto y2hY4; DfLPv: $list[$key]['rollpic'] = tomedia($val['rollpic']); goto KQm_P; KQm_P: $list[$key]['proppic'] = tomedia($val['proppic']); goto XLruo; A9yyE: $list[$key]['passbgm'] = tomedia($val['passbgm']); goto jtSDZ; zYwAB: $list[$key]['loadpic'] = tomedia($val['loadpic']); goto DfLPv; y2hY4: } goto JWx01; TJaad: $where['weid'] = $weid; goto Bwh1a; XjVCV: $where['title like'] = '%' . $keyword . '%'; goto RqdgC; WFu2G: $weid = $_W['uniacid']; goto Kpn0A; L3biL: } public function doWebGuan_post() { goto qOHF8; qGGWv: Rt0be: goto iuBP6; VmaYL: include $this->template('web/guan_post'); goto Sl3JT; r3lIn: rojvR: goto VmaYL; yfM3O: $weid = $_W['uniacid']; goto YOZxH; iuBP6: $data = array("weid" => $weid, "sort" => $_GPC['sort'], "times" => $_GPC['times'], "loadpic" => $_GPC['loadpic'], "rollpic" => $_GPC['rollpic'], "proppic" => $_GPC['proppic'], "gamebgm" => $_GPC['gamebgm'], "passbgm" => $_GPC['passbgm'], "losebgm" => $_GPC['losebgm']); goto NAXwR; YOZxH: if ($_GPC['act'] == 'edit') { goto Rt0be; } goto LZ2bh; qOHF8: global $_GPC, $_W; goto yfM3O; rFiH3: message('操作成功', $this->createWebUrl('guan'), 'success'); goto nqsjn; MeZ3u: $info = pdo_get('hcdoudou_guan', array("id" => $_GPC['id'])); goto r3lIn; nqsjn: LYuug: goto yUO5k; NAXwR: pdo_update('hcdoudou_guan', $data, array("id" => $_GPC['id'])); goto rFiH3; Sl3JT: goto LYuug; goto qGGWv; LZ2bh: if (empty($_GPC['id'])) { goto rojvR; } goto MeZ3u; yUO5k: } public function doWebGoods() { goto VL5gY; ChKf5: $list = pdo_getslice('hcdoudou_goods', $where, array($pageindex, $pagesize), $total, array(), '', 'id desc'); goto GxW1g; WN0vU: $weid = $_W['uniacid']; goto DgANc; Tjyhd: if (empty($keyword)) { goto wFp2k; } goto B5Mu6; GxW1g: foreach ($list as $key => $val) { $list[$key]['thumb'] = tomedia($val['thumb']); oZmO3: } goto TVbvS; VL5gY: global $_GPC, $_W; goto WN0vU; DgANc: $pageindex = max(1, intval($_GPC['page'])); goto bXo7x; B5Mu6: $where['title like'] = '%' . $keyword . '%'; goto zhVrt; J25Ch: include $this->template('web/goods'); goto Xu4L1; FuXuW: $keyword = $_GPC['keyword']; goto Tjyhd; Uw1DY: $where['weid'] = $weid; goto ChKf5; bXo7x: $pagesize = 20; goto FuXuW; zhVrt: wFp2k: goto Uw1DY; i_69L: $page = pagination($total, $pageindex, $pagesize); goto J25Ch; TVbvS: cWABQ: goto i_69L; Xu4L1: } public function doWebGoods_post() { goto UG1r0; yjpS1: if ($_GPC['act'] == 'edit') { goto HMlGf; } goto ghRqk; knfDe: $info = pdo_get('hcdoudou_goods', array("id" => $_GPC['id'])); goto DcM5C; nBmKT: goto fTrfe; goto wqXBN; jcOAe: if ($_GPC['act'] == 'moredel') { goto w0vZz; } goto Leie9; G2j15: message('操作成功', $this->createWebUrl('goods'), 'success'); goto jrbU3; ghRqk: if ($_GPC['act'] == 'del') { goto yn_Fz; } goto jcOAe; LSnyq: include $this->template('web/goods_post'); goto JXcGN; awhIG: fTrfe: goto neSIP; nlf0U: $weid = $_W['uniacid']; goto QAgGD; SPttK: aLoG3: goto dQgnv; Leie9: if (empty($_GPC['id'])) { goto PYP88; } goto knfDe; pves7: message('操作成功', $this->createWebUrl('goods'), 'success'); goto uKb1G; DcM5C: PYP88: goto LSnyq; Ig1C7: foreach (explode(',', $_GPC['ids']) as $key => $val) { pdo_delete('hcdoudou_goods', array("id" => $val)); qQuQC: } goto BDB6P; OH9eo: pdo_update('hcdoudou_goods', $data, array("id" => $_GPC['id'])); goto eVAAj; QAgGD: if ($_GPC['act'] == 'add') { goto aLoG3; } goto yjpS1; eVAAj: message('操作成功', $this->createWebUrl('goods'), 'success'); goto nBmKT; IRIYm: pdo_insert('hcdoudou_goods', $data); goto G2j15; BDB6P: bXr1L: goto nds4w; uKb1G: goto fTrfe; goto fdnlf; wqXBN: yn_Fz: goto w2oJ0; UG1r0: global $_GPC, $_W; goto nlf0U; Dq_Ma: HMlGf: goto Kuroe; jrbU3: goto fTrfe; goto Dq_Ma; fdnlf: w0vZz: goto Ig1C7; JXcGN: goto fTrfe; goto SPttK; nds4w: message('操作成功', $this->createWebUrl('question'), 'success'); goto awhIG; w2oJ0: pdo_delete('hcdoudou_goods', array("id" => $_GPC['id'])); goto pves7; dQgnv: $data = array("weid" => $weid, "sort" => $_GPC['sort'], "title" => $_GPC['title'], "model" => $_GPC['model'], "price" => $_GPC['price'], "storeprice" => $_GPC['storeprice'], "thumb" => $_GPC['thumb']); goto IRIYm; Kuroe: $data = array("weid" => $weid, "sort" => $_GPC['sort'], "title" => $_GPC['title'], "model" => $_GPC['model'], "price" => $_GPC['price'], "storeprice" => $_GPC['storeprice'], "thumb" => $_GPC['thumb']); goto OH9eo; neSIP: } public function doWebCount() { goto LmU4t; ApziY: $total_price = pdo_getcolumn('hcdoudou_order', array("weid" => $weid), array("sum(price)")); goto HBTHK; F3TZZ: Okdz5: goto YuqOj; cGq14: if (empty($keyword)) { goto jIA0c; } goto K1OP0; X8gP9: $type = $_GPC['type']; goto pMFnL; H6eyg: QAJAQ: goto c9RGX; QkvnZ: foreach ($list as $key => $val) { goto cloTs; cloTs: $user = pdo_get('hcdoudou_users', array("uid" => $val['uid']), array("avatar", "nickname")); goto VzMgR; zSDza: unset($user); goto fekHP; fekHP: $goods = pdo_get('hcdoudou_goods', array("id" => $val['gid']), array("thumb")); goto JRdFn; vMxv8: unset($goods); goto c8K2J; VzMgR: $list[$key]['avatar'] = $user['avatar']; goto YFSCF; c8K2J: vWRMm: goto keM3O; JRdFn: $list[$key]['goodsthumb'] = tomedia($goods['thumb']); goto vMxv8; YFSCF: $list[$key]['nickname'] = $user['nickname']; goto zSDza; keM3O: } goto gfZua; aqkYa: jIA0c: goto Biic9; c9RGX: if (!($type == 2)) { goto Okdz5; } goto gX0ty; EqufE: $page = pagination($total, $pageindex, $pagesize); goto ApziY; YuqOj: $keyword = $_GPC['keyword']; goto cGq14; LmU4t: global $_GPC, $_W; goto G2z1G; pMFnL: if (!($type == 1)) { goto QAJAQ; } goto RQCYM; MTFZp: $pageindex = max(1, intval($_GPC['page'])); goto kTSxM; K1OP0: $where['trade_no'] = $keyword; goto aqkYa; gfZua: xAQtc: goto EqufE; kTSxM: $pagesize = 20; goto X8gP9; gX0ty: $where['type'] = 0; goto F3TZZ; RQCYM: $where['type'] = 1; goto H6eyg; Biic9: $where['weid'] = $weid; goto Z9EtW; HBTHK: include $this->template('web/count'); goto Jcrce; Z9EtW: $list = pdo_getslice('hcdoudou_order', $where, array($pageindex, $pagesize), $total, array(), '', 'id desc'); goto QkvnZ; G2z1G: $weid = $_W['uniacid']; goto MTFZp; Jcrce: } public function doWebOrder() { goto MGbRE; DfW5s: DNlJb: goto Zt79x; DoAi2: $page = pagination($total, $pageindex, $pagesize); goto BZuQ6; CnU_R: PfI0h: goto av_qz; qggvf: $pageindex = max(1, intval($_GPC['page'])); goto nD4Me; mDGSS: $keyword = $_GPC['keyword']; goto omBhq; jv5rF: goto YxDR4; goto ekApP; GdZnH: if ($keywordtype == '1') { goto V_yF4; } goto dfjM0; qDdYv: goto YxDR4; goto CnU_R; a2u4I: if ($keywordtype == '4') { goto PfI0h; } goto jv5rF; fLpLO: oWDNw: goto GdZnH; S9iHk: ATOD2: goto DoAi2; khQAS: $where['status'] = $status; goto fLpLO; cg9SV: $weid = $_W['uniacid']; goto ULp40; V5R7e: YxDR4: goto CPcLv; Zt79x: $where['openid'] = $keyword; goto Lyat1; HZyPD: oBcQ2: goto dWsgy; WcL62: goto YxDR4; goto DfW5s; ULp40: $keywordtype = $_GPC['keywordtype']; goto mDGSS; CPcLv: $where['type'] = 1; goto juGNK; ekApP: V_yF4: goto zuT3S; kXpYJ: foreach ($list as $key => $val) { goto MG383; qe3rO: $list[$key]['avatar'] = $user['avatar']; goto AvaY6; DTdUa: unset($user); goto xHQxW; xHQxW: $goods = pdo_get('hcdoudou_goods', array("id" => $val['gid']), array("thumb")); goto dkAEx; TmZw9: IHrak: goto GE0QW; dkAEx: $list[$key]['goodsthumb'] = tomedia($goods['thumb']); goto KOJK0; AvaY6: $list[$key]['nickname'] = $user['nickname']; goto DTdUa; KOJK0: unset($goods); goto TmZw9; MG383: $user = pdo_get('hcdoudou_users', array("uid" => $val['uid']), array("avatar", "nickname")); goto qe3rO; GE0QW: } goto S9iHk; dWsgy: $where['title like'] = '%' . $keyword . '%'; goto qDdYv; MGbRE: global $_GPC, $_W; goto cg9SV; nD4Me: $pagesize = 20; goto LX5P9; juGNK: $where['weid'] = $weid; goto qggvf; zuT3S: $where['trade_no'] = $keyword; goto WcL62; av_qz: $where['gid'] = $keyword; goto V5R7e; CcgG_: if ($keywordtype == '3') { goto oBcQ2; } goto a2u4I; eSI0A: if (empty($status)) { goto oWDNw; } goto khQAS; dfjM0: if ($keywordtype == '2') { goto DNlJb; } goto CcgG_; omBhq: $status = $_GPC['status']; goto eSI0A; LX5P9: $list = pdo_getslice('hcdoudou_order', $where, array($pageindex, $pagesize), $total, array(), '', 'createtime desc'); goto kXpYJ; BZuQ6: include $this->template('web/order'); goto Av6oA; Lyat1: goto YxDR4; goto HZyPD; Av6oA: } public function doWebOrder_post() { goto TxjHJ; UJVcs: $weid = $_W['uniacid']; goto CnDJV; iD6Fb: pdo_update('hcdoudou_order', array("expretime" => time(), "expresn" => $_GPC['code'], "status" => 2), array("id" => $_GPC['id'])); goto RV3mq; M4522: eb2Xe: goto IuvXk; tfmOx: goto eb2Xe; goto Rfw8C; C82s_: $info = pdo_get('hcdoudou_order', array("trade_no" => $_GPC['trade_no'])); goto gZoPz; Rfw8C: YxMnE: goto iD6Fb; RV3mq: message('操作成功', $this->createWebUrl('order'), 'success'); goto M4522; TxjHJ: global $_GPC, $_W; goto UJVcs; CnDJV: if ($_GPC['act'] == 'addexpresn') { goto YxMnE; } goto C82s_; WX4mh: include $this->template('web/order_post'); goto tfmOx; gZoPz: $address = pdo_get('hcdoudou_address', array("uid" => $info['uid'], "weid" => $weid)); goto WX4mh; IuvXk: } public function doWebRecharge() { goto QDBYu; ts25m: if ($status == 1) { goto NPPUo; } goto oWQ89; UjOBU: $status = $_GPC['status']; goto ts25m; l2iUI: goto qI6Az; goto ycbRJ; iKsQs: if ($status == 3) { goto fuLkH; } goto l2iUI; wBLJ2: $pageindex = max(1, intval($_GPC['page'])); goto pH8Kl; jpsFw: $where['weid'] = $weid; goto Su0wq; chjiA: $where['status'] = 2; goto oXC2r; SP8Yv: WxrnF: goto chjiA; wCzaZ: $where['status'] = 1; goto NZ3o5; FctNj: $where['trade_no'] = $keyword; goto q0_vP; ycbRJ: NPPUo: goto wCzaZ; oXC2r: goto qI6Az; goto RZsjT; oWQ89: if ($status == 2) { goto WxrnF; } goto iKsQs; D13Cz: $weid = $_W['uniacid']; goto wBLJ2; HtZaC: $keyword = $_GPC['keyword']; goto S55Q8; e8mHm: $total_fee = pdo_getcolumn('hcdoudou_paylog', array("status" => 1, "weid" => $weid), array("sum(total_fee)")); goto Xcl0i; S55Q8: if (empty($keyword)) { goto AK_MJ; } goto FctNj; Su0wq: $list = pdo_getslice('hcdoudou_paylog', $where, array($pageindex, $pagesize), $total, array(), '', 'createtime desc'); goto rER7u; NZ3o5: goto qI6Az; goto SP8Yv; qdks8: zrKYQ: goto XOedF; rER7u: foreach ($list as $key => $val) { goto SYFzk; zZWTC: unset($user); goto WFlhD; x_MR7: $list[$key]['avatar'] = $user['avatar']; goto wm_vs; WFlhD: Gbbl_: goto vNdx9; SYFzk: $user = pdo_get('hcdoudou_users', array("uid" => $val['uid']), array("avatar", "nickname")); goto x_MR7; wm_vs: $list[$key]['nickname'] = $user['nickname']; goto zZWTC; vNdx9: } goto qdks8; Kqj0K: $where['status'] = 0; goto KKTuF; Xcl0i: include $this->template('web/recharge'); goto fbdLV; KKTuF: qI6Az: goto HtZaC; RZsjT: fuLkH: goto Kqj0K; q0_vP: AK_MJ: goto jpsFw; XOedF: $page = pagination($total, $pageindex, $pagesize); goto e8mHm; pH8Kl: $pagesize = 20; goto UjOBU; QDBYu: global $_GPC, $_W; goto D13Cz; fbdLV: } public function doWebCheckgoods() { goto y8zvN; torxF: $list = pdo_getslice('hcdoudou_checkgoods', $where, array($pageindex, $pagesize), $total, array(), '', 'id desc'); goto xW2AH; T2Ohv: $page = pagination($total, $pageindex, $pagesize); goto t7aIh; MA7qy: $pagesize = 20; goto Vzn5M; xW2AH: foreach ($list as $key => $val) { $list[$key]['thumb'] = tomedia($val['thumb']); GOwQ5: } goto l6Qbz; y8zvN: global $_GPC, $_W; goto TYgjO; TYgjO: $weid = $_W['uniacid']; goto A4rhz; Vzn5M: $where['weid'] = $weid; goto torxF; A4rhz: $pageindex = max(1, intval($_GPC['page'])); goto MA7qy; t7aIh: include $this->template('web/checkgoods'); goto HljvD; l6Qbz: XtbE3: goto T2Ohv; HljvD: } public function doWebCheckgoods_post() { goto O2y0w; O2y0w: global $_GPC, $_W; goto gdXXh; BBLz3: goto iAOJk; goto CmEen; Y9wJb: goto iAOJk; goto hA_RJ; R48k8: YZOuu: goto fskfb; hA_RJ: QzYYi: goto pDgJH; CmEen: xhrRN: goto ENCc2; enDKt: if ($_GPC['act'] == 'add') { goto xhrRN; } goto jYQO1; JRaeZ: goto iAOJk; goto owQUy; GtYwu: $data = array("weid" => $weid, "sort" => $_GPC['sort'], "title" => $_GPC['title'], "model" => $_GPC['model'], "price" => $_GPC['price'], "thumb" => $_GPC['thumb']); goto vWK2_; qFcGT: if (empty($_GPC['id'])) { goto YZOuu; } goto HhImv; PMZYZ: message('操作成功', $this->createWebUrl('checkgoods'), 'success'); goto Y9wJb; fskfb: include $this->template('web/checkgoods_post'); goto BBLz3; gdXXh: $weid = $_W['uniacid']; goto enDKt; QEuoi: message('操作成功', $this->createWebUrl('checkgoods'), 'success'); goto JRaeZ; MP08X: message('操作成功', $this->createWebUrl('checkgoods'), 'success'); goto ov58w; IKIp6: if ($_GPC['act'] == 'del') { goto QzYYi; } goto qFcGT; owQUy: d_dn3: goto GtYwu; vWK2_: pdo_update('hcdoudou_checkgoods', $data, array("id" => $_GPC['id'])); goto PMZYZ; m37Cm: pdo_insert('hcdoudou_checkgoods', $data); goto QEuoi; HhImv: $info = pdo_get('hcdoudou_checkgoods', array("id" => $_GPC['id'])); goto R48k8; pDgJH: pdo_delete('hcdoudou_checkgoods', array("id" => $_GPC['id'])); goto MP08X; jYQO1: if ($_GPC['act'] == 'edit') { goto d_dn3; } goto IKIp6; ENCc2: $data = array("weid" => $weid, "sort" => $_GPC['sort'], "title" => $_GPC['title'], "model" => $_GPC['model'], "price" => $_GPC['price'], "thumb" => $_GPC['thumb']); goto m37Cm; ov58w: iAOJk: goto MOQ2d; MOQ2d: } public function doWebUpgrade() { goto Z8Nww; XyZkX: $where['weid'] = $weid; goto B_wDy; VBJLz: $weid = $_W['uniacid']; goto XyZkX; S3o0Q: foreach ($list as $key => $val) { goto AeAfm; mNOMm: unset($user); goto F9XWE; F9XWE: nZKfY: goto dVPRV; AeAfm: $user = pdo_get('hcdoudou_users', array("uid" => $val['uid']), array("avatar", "nickname")); goto Mfm5b; AeD9c: $list[$key]['nickname'] = $user['nickname']; goto mNOMm; Mfm5b: $list[$key]['avatar'] = $user['avatar']; goto AeD9c; dVPRV: } goto j5kO2; AJGLy: $pagesize = 10; goto VBJLz; j5kO2: EyePF: goto m512U; y0vgB: $pageindex = max(1, intval($_GPC['page'])); goto AJGLy; B_wDy: $list = pdo_getslice('hcdoudou_upgrade', $where, array($pageindex, $pagesize), $total, array(), '', 'createtime desc'); goto S3o0Q; m512U: $page = pagination($total, $pageindex, $pagesize); goto XcANx; Z8Nww: global $_GPC, $_W; goto y0vgB; XcANx: include $this->template('web/upgrade'); goto u5yeR; u5yeR: } public function doWebCash() { goto SIa42; bhsGu: include $this->template('web/cash'); goto rNwWK; LVmAF: $pagesize = 10; goto Vi1iW; qWI0R: UemvO: goto xgsCo; DZQg9: $where['weid'] = $weid; goto pPdu2; q12ZG: foreach ($list as $key => $val) { goto h2i0S; XCU2u: $list[$key]['receipt_code'] = $user['receipt_code']; goto e4cAe; h2i0S: $user = pdo_get('hcdoudou_users', array("uid" => $val['uid']), array("avatar", "nickname", "receipt_code")); goto hoJ74; hoJ74: $list[$key]['avatar'] = $user['avatar']; goto gKH2X; gKH2X: $list[$key]['nickname'] = $user['nickname']; goto XCU2u; e4cAe: unset($user); goto yb1Hq; yb1Hq: TUwPo: goto oEauR; oEauR: } goto qWI0R; Vi1iW: $weid = $_W['uniacid']; goto DZQg9; xgsCo: $page = pagination($total, $pageindex, $pagesize); goto bhsGu; pPdu2: $list = pdo_getslice('hcdoudou_cash', $where, array($pageindex, $pagesize), $total, array(), '', 'createtime desc'); goto q12ZG; SIa42: global $_GPC, $_W; goto W8z9P; W8z9P: $pageindex = max(1, intval($_GPC['page'])); goto LVmAF; rNwWK: } public function doWebSyscash() { goto lErpz; UDdfJ: $openid = pdo_getcolumn('hcdoudou_users', array("uid" => $uid), array("openid")); goto He1Oj; bx0DD: goto Njx88; goto vwUgE; MQQdG: LtgUD: goto e7TB4; gqMIS: if ($type == 3) { goto LtgUD; } goto TFHB9; q7P0t: pdo_update('hcdoudou_commission', array("freeze" => 0, "status" => 1), $where); goto OFkPP; n0H2l: if ($res['result_code'] == 'FAIL') { goto SaJDv; } goto jjsTd; gGzWR: $type = $_GPC['type']; goto uSdds; lErpz: global $_GPC, $_W; goto dG3T2; Nmssi: if ($type == 2) { goto i2KCd; } goto gqMIS; ArzwF: $res = $this->cash($openid, $money, $cash['transid'], $conf['title']); goto n0H2l; n8guq: goto TcUeG; goto lSxOq; xLkVW: pdo_update('hcdoudou_commission', array("freeze" => 0, "status" => 1), $where); goto mVduS; OFkPP: message('发放成功', '', 'success'); goto mv6Eg; dG3T2: $weid = $_W['uniacid']; goto vVOMB; jjsTd: pdo_update('hcdoudou_cash', array("status" => 1), array("id" => $id)); goto xLkVW; dG1E0: $where = array("user_id" => $uid, "status" => 0, "freeze" => 1); goto a4iWV; l8k1v: goto TcUeG; goto MQQdG; He1Oj: $conf = json_decode(pdo_getcolumn('hcdoudou_setting', array("only" => 'basic' . $weid), array("value")), 'true'); goto UIBgX; eUzpH: message($res['err_code_des'], '', 'error'); goto UEqjd; a4iWV: if ($type == 1) { goto ymYZh; } goto Nmssi; UIBgX: $money = $cash['money'] - $cash['fee']; goto ArzwF; mv6Eg: TcUeG: goto JbDnj; Szr_5: ymYZh: goto UDdfJ; F6h3X: $uid = $cash['uid']; goto dG1E0; TFHB9: goto TcUeG; goto Szr_5; vVOMB: $id = $_GPC['id']; goto gGzWR; vwUgE: SaJDv: goto eUzpH; uSdds: $cash = pdo_get('hcdoudou_cash', array("id" => $id)); goto F6h3X; UEqjd: Njx88: goto n8guq; e7TB4: pdo_update('hcdoudou_cash', array("status" => 1), array("id" => $id)); goto q7P0t; bCtgg: pdo_update('hcdoudou_commission', array("freeze" => 0), $where); goto A8vKC; XLwKE: pdo_update('hcdoudou_cash', array("status" => 2), array("id" => $id)); goto bCtgg; mVduS: message('提现成功', '', 'success'); goto bx0DD; lSxOq: i2KCd: goto XLwKE; A8vKC: message('拒绝成功', '', 'success'); goto l8k1v; JbDnj: } public function cash($openid, $money, $transid, $wxappname) { goto DjhEI; Eilej: $model = new HcfkModel(); goto UvJLL; bIFN0: $pars['mchid'] = $mchid; goto JLM8s; enaRR: $pars['partner_trade_no'] = $transid; goto iLhJc; VeFlh: $weid = $_W['uniacid']; goto AWag1; VPr3W: $xml = $model->array2xml($pars); goto T7FeH; T7FeH: $cert = array("CURLOPT_SSLCERT" => IA_ROOT . '/addons/hc_doudou/cert/apiclient_cert_' . $weid . '.pem', "CURLOPT_SSLKEY" => IA_ROOT . '/addons/hc_doudou/cert/apiclient_key_' . $weid . '.pem'); goto c19ah; c19ah: $resp = ihttp_request($url, $xml, $cert); goto WL79g; cqx3i: $mchid = $setting['payment']['wechat']['mchid']; goto Eilej; J3eAi: $mch_appid = $_W['account']['key']; goto E5qG6; AWag1: load()->model('payment'); goto sNteM; sNteM: load()->model('account'); goto TrupO; Gp8U8: $pars['desc'] = $wxappname . '余额提现'; goto yg_Va; JLM8s: $pars['nonce_str'] = random(32); goto enaRR; d9I9F: $pars['mch_appid'] = $mch_appid; goto bIFN0; k3a__: $pars['check_name'] = 'NO_CHECK'; goto qHp7N; YOEL5: $pars['sign'] = $model->getSign($pars, $signkey); goto VPr3W; WL79g: return $model->xmlstr_to_array($resp['content']); goto WQ36D; E5qG6: $signkey = $setting['payment']['wechat']['signkey']; goto cqx3i; iLhJc: $pars['openid'] = $openid; goto k3a__; UvJLL: $pars = array(); goto l1cJ8; DjhEI: global $_W; goto VeFlh; l1cJ8: $url = 'https://api.mch.weixin.qq.com/mmpaymkttransfers/promotion/transfers'; goto d9I9F; TrupO: $setting = uni_setting($_W['uniacid'], array("payment")); goto J3eAi; qHp7N: $pars['amount'] = intval($money * 100); goto Gp8U8; yg_Va: $pars['spbill_create_ip'] = $model->get_client_ip(); goto YOEL5; WQ36D: } public function doMobileGames() { goto knO7K; Hs3yh: goto WLpKc; goto Kc8HK; KrCPq: WLpKc: goto qedq7; XjjSu: include $this->template('play'); goto Hs3yh; Kc8HK: F12PN: goto DbXha; JSv8S: if ($game == 1) { goto F12PN; } goto XjjSu; knO7K: global $_GPC, $_W; goto lrzBP; DbXha: include $this->template('taste'); goto KrCPq; lrzBP: $game = $_GPC['game']; goto JSv8S; qedq7: } } ?>
