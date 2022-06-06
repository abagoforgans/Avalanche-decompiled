contract main {




// =====================  Runtime code  =====================


#
#  - sub_8e031cb6(?)
#
const EIP712_DOMAIN_TYPEHASH = 0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472


array of uint256 stor0;
array of uint256 version;
array of uint256 stor2;
mapping of uint256 sub_4d419abc;
mapping of uint8 stor7;
mapping of uint256 stor6710629;
mapping of address stor478745093490;
mapping of uint256 stor27980790284306788;
mapping of address stor34784943920356371488173876594;

function initialized() {
    return bool(stor7['rs_multisender_initialized'])
}

function sub_4d419abc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4d419abc['customFee'][address(arg1)]
}

function getUnlimAccess(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_4d419abc['unlimAccess'][arg1]
}

function version() {
    return version[0 len version.length]
}

function implementation() {
    return address(stor2.length)
}

function upgradeabilityOwner() {
    return address(stor0.length)
}

function referralFee() {
    return sub_4d419abc['referralFee']
}

function owner() {
    return stor5[('name', 'stor6F77', 478745093490)]
}

function getAllVipPrices() {
    return uint256(stor3[('name', 'stor0', 0)]), 
           stor3[('map', 0, ('name', 'version', 1))],
           uint256(stor3[('map', 0, ('name', 'stor2', 2))])
}

function fee() {
    return stor3[('name', 'stor6665', 6710629)]
}

function pendingOwner() {
    return stor5[('name', 'stor7065', 34784943920356371488173876594)]
}

function _fallback() payable {
  stop
}

function hash(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sha3(0xe419504a688f0e6ea59c2708f49b2bbc10a2da71770bd6e1b324e39c73e7dc25, address(arg1), arg2)
}

function sub_d6de2d09(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor7[0][msg.sender]:
        revert with 0, 'not moderator'
    sub_4d419abc['customFee'][address(arg1)] = arg2
}

function sub_8b21f71d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor7[0][msg.sender]:
        revert with 0, 'not moderator'
    sub_4d419abc['unlimAccess'][address(arg1)] = arg2
}

function DOMAIN_SEPARATOR() {
    return sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], address(this.address), 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558)
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        if stor7['rs_multisender_initialized']:
            revert with 0, 'not an owner'
    require arg1
    stor3[('name', 'stor6665', 6710629)] = arg1
}

function currentFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_4d419abc['unlimAccess'][arg1] >= block.timestamp:
        return 0
    if not sub_4d419abc['customFee'][arg1]:
        return stor3[('name', 'stor6665', 6710629)]
    return sub_4d419abc['customFee'][arg1]
}

function getDeadline(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return (block.timestamp + (24 * 3600))
    if 1 == arg1:
        return (block.timestamp + (168 * 24 * 3600))
    if arg1 != 2:
        return 0
    return (block.timestamp + (720 * 24 * 3600))
}

function setVipPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        if stor7['rs_multisender_initialized']:
            revert with 0, 'not an owner'
    sub_4d419abc[0][arg1] = arg2
}

function sub_336df106(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        if stor7['rs_multisender_initialized']:
            revert with 0, 'not an owner'
    stor7[0][address(arg1)] = uint8(bool(arg2))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        if stor7['rs_multisender_initialized']:
            revert with 0, 'not an owner'
    require arg1
    stor5[('name', 'stor7065', 34784943920356371488173876594)] = arg1
}

function setReferralFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        if stor7['rs_multisender_initialized']:
            revert with 0, 'not an owner'
    require stor3[('name', 'stor6665', 6710629)] >= arg1
    sub_4d419abc['referralFee'] = arg1
}

function sub_cb0d6e2d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    sub_4d419abc['changes'][address(arg1)][sub_4d419abc[0][address(arg1)]] = msg.value
    sub_4d419abc['timestamps'][address(arg1)][sub_4d419abc[0][address(arg1)]] = block.timestamp
    sub_4d419abc[0][address(arg1)]++
    emit 0x7accfe89: msg.value, sub_4d419abc[0][address(arg1)], address(arg1)
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
}

function claimOwnership() {
    require msg.sender == stor5[('name', 'stor7065', 34784943920356371488173876594)]
    emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], stor5[('name', 'stor7065', 34784943920356371488173876594)]);
    stor5[('name', 'stor6F77', 478745093490)] = stor5[('name', 'stor7065', 34784943920356371488173876594)]
    stor5[('name', 'stor7065', 34784943920356371488173876594)] = 0
}

function sub_279648b6(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_4d419abc['changes'][msg.sender][arg1] <= 0:
        revert with 0, 'you dont have change'
    sub_4d419abc['changes'][msg.sender][arg1] = 0
    sub_4d419abc['timestamps'][msg.sender][arg1] = 0
    call msg.sender with:
       value sub_4d419abc['changes'][msg.sender][arg1] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x89a69070: sub_4d419abc['changes'][msg.sender][arg1], arg1, msg.sender
}

function buyVip(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.value >= sub_4d419abc[0][arg1]
    if not arg1:
        sub_4d419abc['unlimAccess'][msg.sender] = block.timestamp + (24 * 3600)
    else:
        if 1 == arg1:
            sub_4d419abc['unlimAccess'][msg.sender] = block.timestamp + (168 * 24 * 3600)
        else:
            if arg1 != 2:
                sub_4d419abc['unlimAccess'][msg.sender] = 0
            else:
                sub_4d419abc['unlimAccess'][msg.sender] = block.timestamp + (720 * 24 * 3600)
    emit PurchaseVIP(msg.sender, arg1);
}

function sub_40d6f059(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg1 < block.timestamp:
        mem[ceil32(arg2.length) + 128] = 0
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + 160] = 0xe419504a688f0e6ea59c2708f49b2bbc10a2da71770bd6e1b324e39c73e7dc25
    mem[ceil32(arg2.length) + 192] = msg.sender
    mem[ceil32(arg2.length) + 224] = arg1
    mem[ceil32(arg2.length) + 128] = 96
    signer = erecover(sha3(0, sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], address(this.address), 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558), sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function recoverAddress(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    mem[ceil32(arg2.length) + 160] = 0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472
    mem[ceil32(arg2.length) + 192] = sha3(Mask(88, -(8 * ceil32(arg2.length) + -arg2.length + 11) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 11) + 256)
    mem[ceil32(arg2.length) + 224] = sha3(Mask(24, -(8 * ceil32(arg2.length) + -arg2.length + 3) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 3) + 256)
    mem[ceil32(arg2.length) + 256] = sub_4d419abc[Mask(56, -(8 * ceil32(arg2.length) + -arg2.length + 7) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc8 + (8 * -ceil32(arg2.length)) + (8 * arg2.length) + 256]
    mem[ceil32(arg2.length) + 288] = this.address
    mem[ceil32(arg2.length) + 320] = 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558
    mem[ceil32(arg2.length) + 128] = 192
    signer = erecover(sha3(0, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), arg1), 0, _2, _3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_fbaac15e(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _52 = mem[(32 * idx) + 128]
        _53 = mem[64]
        mem[mem[64] + 32] = 'changes' << 200
        mem[mem[64] + 39] = address(msg.sender)
        mem[mem[64] + 59] = _52
        _54 = mem[64]
        mem[mem[64]] = 59
        mem[64] = mem[64] + 91
        mem[0] = sha3(mem[_54 + 32 len mem[_54]])
        _57 = sha3(mem[0], 3)
        if sub_4d419abc[mem[0]] <= 0:
            revert with 0, 'you dont have change'
        mem[_53 + 123] = 'changes' << 200
        mem[_53 + 130] = address(msg.sender)
        mem[_53 + 150] = _52
        mem[_53 + 91] = 59
        sub_4d419abc['changes'][msg.sender][_52] = 0
        mem[_53 + 214] = 'timestamps' << 176
        mem[_53 + 224] = address(msg.sender)
        mem[_53 + 244] = _52
        mem[_53 + 182] = 62
        mem[64] = _53 + 276
        mem[0] = sha3('timestamps', msg.sender, _52)
        mem[32] = 3
        sub_4d419abc['timestamps'][msg.sender][_52] = 0
        call msg.sender with:
           value stor[_57] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_53 + 276] = stor[_57]
        mem[_53 + 308] = _52
        emit 0x89a69070: stor[_57], _52, msg.sender
        idx = idx + 1
        continue 
}

function claimTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor5[('name', 'stor6F77', 478745093490)] != msg.sender:
        if stor7['rs_multisender_initialized']:
            revert with 0, 'not an owner'
    if arg2:
        if not arg1:
            call stor5[('name', 'stor6F77', 478745093490)] with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args stor5[('name', 'stor6F77', 478745093490)], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit ClaimedTokens(address(arg1), stor5[('name', 'stor6F77', 478745093490)], ext_call.return_data[0]);
    else:
        if not arg1:
            call stor5[('name', 'stor6F77', 478745093490)] with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args stor5[('name', 'stor6F77', 478745093490)], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit ClaimedTokens(address(arg1), stor5[('name', 'stor6F77', 478745093490)], ext_call.return_data[0]);
}

function sub_c260af98(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[128] = 0x6368616e6765732e6c656e677468000000000000000000000000000000000000
    mem[142] = address(arg1)
    mem[96] = 34
    mem[0] = sha3(0, address(arg1))
    mem[32] = 3
    mem[162] = sub_4d419abc[0][address(arg1)]
    mem[64] = (32 * sub_4d419abc[0][address(arg1)]) + 194
    if not sub_4d419abc[0][address(arg1)]:
        idx = 0
        while idx < sub_4d419abc[0][address(arg1)]:
            _42 = mem[64]
            mem[64] = mem[64] + 64
            mem[_42 + 96] = 'changes' << 200
            mem[_42 + 103] = address(msg.sender)
            mem[_42 + 123] = idx
            _57 = mem[64]
            mem[mem[64]] = _42 + -mem[64] + 123
            mem[64] = _42 + 155
            mem[0] = sha3(mem[_57 + 32 len mem[_57]])
            mem[_42] = sub_4d419abc[mem[0]]
            mem[_42 + 187] = 'timestamps' << 176
            mem[_42 + 197] = address(msg.sender)
            mem[_42 + 217] = idx
            mem[_42 + 155] = 62
            mem[64] = _42 + 249
            mem[0] = sha3('timestamps', msg.sender, idx)
            mem[32] = 3
            mem[_42 + 32] = sub_4d419abc['timestamps'][msg.sender][idx]
            require idx < mem[162]
            mem[(32 * idx) + 194] = _42
            idx = idx + 1
            continue 
        _44 = mem[64]
        mem[mem[64]] = 32
        _45 = mem[162]
        mem[mem[64] + 32] = mem[162]
        idx = 0
        s = 194
        t = mem[64] + 64
        while idx < _45:
            _78 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_78 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _44 + (64 * _45) + -mem[64] + 64
    mem[64] = (32 * sub_4d419abc[0][address(arg1)]) + 258
    mem[(32 * sub_4d419abc[0][address(arg1)]) + 194] = 0
    mem[(32 * sub_4d419abc[0][address(arg1)]) + 226] = 0
    mem[var38001] = (32 * sub_4d419abc[0][address(arg1)]) + 194
    s = var38001
    idx = var38002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * sub_4d419abc[0][address(arg1)]) + 194] = 0
        mem[(32 * sub_4d419abc[0][address(arg1)]) + 226] = 0
        mem[s + 32] = (32 * sub_4d419abc[0][address(arg1)]) + 194
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < sub_4d419abc[0][address(arg1)]:
        _99 = mem[64]
        mem[64] = mem[64] + 64
        mem[_99 + 96] = 'changes' << 200
        mem[_99 + 103] = address(msg.sender)
        mem[_99 + 123] = idx
        _106 = mem[64]
        mem[mem[64]] = _99 + -mem[64] + 123
        mem[64] = _99 + 155
        mem[0] = sha3(mem[_106 + 32 len mem[_106]])
        mem[_99] = sub_4d419abc[mem[0]]
        mem[_99 + 187] = 'timestamps' << 176
        mem[_99 + 197] = address(msg.sender)
        mem[_99 + 217] = idx
        mem[_99 + 155] = 62
        mem[64] = _99 + 249
        mem[0] = sha3('timestamps', msg.sender, idx)
        mem[32] = 3
        mem[_99 + 32] = sub_4d419abc['timestamps'][msg.sender][idx]
        require idx < mem[162]
        mem[(32 * idx) + 194] = _99
        idx = idx + 1
        continue 
    _100 = mem[64]
    mem[mem[64]] = 32
    _101 = mem[162]
    mem[mem[64] + 32] = mem[162]
    idx = 0
    s = 194
    t = mem[64] + 64
    while idx < _101:
        _116 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_116 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _100 + (64 * _101) + -mem[64] + 64
}

function sub_56e89613(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    require msg.value <= eth.balance(this.address)
    if sub_4d419abc['unlimAccess'][msg.sender] >= block.timestamp:
        require 0 <= msg.value
        emit 0xfe04afd2: msg.value, 48879
        idx = 0
        s = msg.value
        while idx < ('cd', 4).length:
            require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
            require idx < ('cd', 4).length
            call address(cd[((64 * idx) + cd[4] + 36)]) with:
               value cd[((64 * idx) + cd[4] + 68)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                if idx < ('cd', 4).length:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if idx < ('cd', 4).length:
                    if cd[((64 * idx) + cd[4] + 68)] <= s:
                        idx = idx + 1
                        s = s - cd[((64 * idx) + cd[4] + 68)]
                        continue 
            revert
        if eth.balance(this.address) < eth.balance(this.address) - msg.value:
            revert with 0, 
                        32,
                        38,
                        0x646f6ee28099742074727920746f2074616b652074686520636f6e7472616374,
                        0x206d6f6e65790000000000000000000000000000000000000000000000000000
    else:
        if not sub_4d419abc['customFee'][msg.sender]:
            require stor3[('name', 'stor6665', 6710629)] <= msg.value
            emit 0xfe04afd2: msg.value - stor3[('name', 'stor6665', 6710629)], 48879
            idx = 0
            s = msg.value - stor3[('name', 'stor6665', 6710629)]
            while idx < ('cd', 4).length:
                require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
                require idx < ('cd', 4).length
                call address(cd[((64 * idx) + cd[4] + 36)]) with:
                   value cd[((64 * idx) + cd[4] + 68)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    if idx < ('cd', 4).length:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if idx < ('cd', 4).length:
                        if cd[((64 * idx) + cd[4] + 68)] <= s:
                            idx = idx + 1
                            s = s - cd[((64 * idx) + cd[4] + 68)]
                            continue 
                revert
            require stor3[('name', 'stor6665', 6710629)] >= 0
            if eth.balance(this.address) < stor3[('name', 'stor6665', 6710629)] + eth.balance(this.address) - msg.value:
                revert with 0, 
                            32,
                            38,
                            0x646f6ee28099742074727920746f2074616b652074686520636f6e7472616374,
                            0x206d6f6e65790000000000000000000000000000000000000000000000000000
        else:
            require sub_4d419abc['customFee'][msg.sender] <= msg.value
            emit 0xfe04afd2: msg.value - sub_4d419abc['customFee'][msg.sender], 48879
            idx = 0
            s = msg.value - sub_4d419abc['customFee'][address(msg.sender)]
            while idx < ('cd', 4).length:
                require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
                require idx < ('cd', 4).length
                call address(cd[((64 * idx) + cd[4] + 36)]) with:
                   value cd[((64 * idx) + cd[4] + 68)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    if idx < ('cd', 4).length:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if idx < ('cd', 4).length:
                        if cd[((64 * idx) + cd[4] + 68)] <= s:
                            idx = idx + 1
                            s = s - cd[((64 * idx) + cd[4] + 68)]
                            continue 
                revert
            require sub_4d419abc['customFee'][msg.sender] >= 0
            if eth.balance(this.address) < sub_4d419abc['customFee'][msg.sender] + eth.balance(this.address) - msg.value:
                revert with 0, 
                            32,
                            38,
                            0x646f6ee28099742074727920746f2074616b652074686520636f6e7472616374,
                            0x206d6f6e65790000000000000000000000000000000000000000000000000000
    return gas_remaining
}

function sub_29d822c2(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
            require idx < ('cd', 36).length
            _57 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((64 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((64 * idx) + cd[36] + 68)]
            _66 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_66 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_66 + 36 len 28]
            _69 = mem[_66]
            s = 0
            while s < _69:
                mem[s + _57 + 132] = mem[s + _66 + 32]
                s = s + 32
                continue 
            if ceil32(_69) <= _69:
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _69 + _57 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        require idx < ('cd', 36).length
                        require calldata.size + -(64 * idx) + -cd[36] - 36 >= 64
                        _112 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                        mem[_112] = cd[((64 * idx) + cd[36] + 36)]
                        require cd[((64 * idx) + cd[36] + 68)] == cd[((64 * idx) + cd[36] + 68)]
                        mem[_112 + 32] = cd[((64 * idx) + cd[36] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _112
                else:
                    _107 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_107] = return_data.size
                    mem[_107 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < ('cd', 36).length
                        require calldata.size + -(64 * idx) + -cd[36] - 36 >= 64
                        _113 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                        mem[_113] = cd[((64 * idx) + cd[36] + 36)]
                        require cd[((64 * idx) + cd[36] + 68)] == cd[((64 * idx) + cd[36] + 68)]
                        mem[_113 + 32] = cd[((64 * idx) + cd[36] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _113
            else:
                mem[_69 + _57 + 132] = 0
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _69 + _57 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        require idx < ('cd', 36).length
                        require calldata.size + -(64 * idx) + -cd[36] - 36 >= 64
                        _114 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                        mem[_114] = cd[((64 * idx) + cd[36] + 36)]
                        require cd[((64 * idx) + cd[36] + 68)] == cd[((64 * idx) + cd[36] + 68)]
                        mem[_114 + 32] = cd[((64 * idx) + cd[36] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _114
                else:
                    _108 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_108] = return_data.size
                    mem[_108 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < ('cd', 36).length
                        require calldata.size + -(64 * idx) + -cd[36] - 36 >= 64
                        _115 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                        mem[_115] = cd[((64 * idx) + cd[36] + 36)]
                        require cd[((64 * idx) + cd[36] + 68)] == cd[((64 * idx) + cd[36] + 68)]
                        mem[_115 + 32] = cd[((64 * idx) + cd[36] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _115
            idx = idx + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = gas_remaining
        mem[mem[64] + 32] = 64
        _54 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _54:
            _101 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_101 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _52 + (64 * _54) + -mem[64] + 96
    mem[64] = (32 * ('cd', 36).length) + 192
    mem[(32 * ('cd', 36).length) + 128] = 0
    mem[(32 * ('cd', 36).length) + 160] = 0
    mem[var27001] = (32 * ('cd', 36).length) + 128
    s = var27001
    idx = var27002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * ('cd', 36).length) + 128] = 0
        mem[(32 * ('cd', 36).length) + 160] = 0
        mem[s + 32] = (32 * ('cd', 36).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
        require idx < ('cd', 36).length
        _145 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(cd[((64 * idx) + cd[36] + 36)])
        mem[mem[64] + 100] = cd[((64 * idx) + cd[36] + 68)]
        _149 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_149 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_149 + 36 len 28]
        _152 = mem[_149]
        s = 0
        while s < _152:
            mem[s + _145 + 132] = mem[s + _149 + 32]
            s = s + 32
            continue 
        if ceil32(_152) <= _152:
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _152 + _145 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require calldata.size + -(64 * idx) + -cd[36] - 36 >= 64
                    _175 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                    mem[_175] = cd[((64 * idx) + cd[36] + 36)]
                    require cd[((64 * idx) + cd[36] + 68)] == cd[((64 * idx) + cd[36] + 68)]
                    mem[_175 + 32] = cd[((64 * idx) + cd[36] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _175
            else:
                _172 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_172] = return_data.size
                mem[_172 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require calldata.size + -(64 * idx) + -cd[36] - 36 >= 64
                    _176 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                    mem[_176] = cd[((64 * idx) + cd[36] + 36)]
                    require cd[((64 * idx) + cd[36] + 68)] == cd[((64 * idx) + cd[36] + 68)]
                    mem[_176 + 32] = cd[((64 * idx) + cd[36] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _176
        else:
            mem[_152 + _145 + 132] = 0
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _152 + _145 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require calldata.size + -(64 * idx) + -cd[36] - 36 >= 64
                    _177 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                    mem[_177] = cd[((64 * idx) + cd[36] + 36)]
                    require cd[((64 * idx) + cd[36] + 68)] == cd[((64 * idx) + cd[36] + 68)]
                    mem[_177 + 32] = cd[((64 * idx) + cd[36] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _177
            else:
                _173 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_173] = return_data.size
                mem[_173 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < ('cd', 36).length
                    require calldata.size + -(64 * idx) + -cd[36] - 36 >= 64
                    _178 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                    mem[_178] = cd[((64 * idx) + cd[36] + 36)]
                    require cd[((64 * idx) + cd[36] + 68)] == cd[((64 * idx) + cd[36] + 68)]
                    mem[_178 + 32] = cd[((64 * idx) + cd[36] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _178
        idx = idx + 1
        continue 
    _142 = mem[64]
    mem[mem[64]] = gas_remaining
    mem[mem[64] + 32] = 64
    _143 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _143:
        _166 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_166 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _142 + (64 * _143) + -mem[64] + 96
}

function sub_fb5fe1c2(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == address(cd[100])
    mem[128] = 'unlimAccess' << 168
    mem[139] = address(msg.sender)
    mem[96] = 31
    mem[64] = 159
    mem[0] = sha3('unlimAccess', msg.sender)
    mem[32] = 3
    if sub_4d419abc['unlimAccess'][msg.sender] >= block.timestamp:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
            require idx < ('cd', 36).length
            _160 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(cd[((64 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((64 * idx) + cd[36] + 68)]
            _182 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_182 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_182 + 36 len 28]
            _190 = mem[_182]
            s = 0
            while s < _190:
                mem[s + _160 + 132] = mem[s + _182 + 32]
                s = s + 32
                continue 
            if ceil32(_190) <= _190:
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _190 + _160 + -mem[64] + 128]
                if return_data.size:
                    _249 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_249] = return_data.size
                    mem[_249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                mem[_190 + _160 + 132] = 0
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _190 + _160 + -mem[64] + 128]
                if return_data.size:
                    _250 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_250] = return_data.size
                    mem[_250 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[191] = 'customFee' << 184
        mem[200] = address(msg.sender)
        mem[159] = 29
        mem[64] = 220
        mem[0] = sha3('customFee', msg.sender)
        mem[32] = 3
        if sub_4d419abc['customFee'][msg.sender]:
            if msg.value < sub_4d419abc['customFee'][msg.sender]:
                revert with 0, 'no fee'
            if not address(cd[100]):
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                    require idx < ('cd', 36).length
                    _158 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(cd[((64 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = cd[((64 * idx) + cd[36] + 68)]
                    _176 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_176 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_176 + 36 len 28]
                    _188 = mem[_176]
                    s = 0
                    while s < _188:
                        mem[s + _158 + 132] = mem[s + _176 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_188) <= _188:
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _188 + _158 + -mem[64] + 128]
                        if return_data.size:
                            _245 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_245] = return_data.size
                            mem[_245 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_188 + _158 + 132] = 0
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _188 + _158 + -mem[64] + 128]
                        if return_data.size:
                            _246 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_246] = return_data.size
                            mem[_246 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                mem[220] = 'referralFee' << 168
                mem[0] = sha3('referralFee')
                mem[32] = 3
                call address(cd[100]) with:
                   value sub_4d419abc['referralFee'] wei
                     gas 2300 * is_zero(value) wei
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                    require idx < ('cd', 36).length
                    _159 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(cd[((64 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = cd[((64 * idx) + cd[36] + 68)]
                    _179 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_179 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_179 + 36 len 28]
                    _189 = mem[_179]
                    s = 0
                    while s < _189:
                        mem[s + _159 + 132] = mem[s + _179 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_189) <= _189:
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _189 + _159 + -mem[64] + 128]
                        if return_data.size:
                            _247 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_247] = return_data.size
                            mem[_247 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_189 + _159 + 132] = 0
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _189 + _159 + -mem[64] + 128]
                        if return_data.size:
                            _248 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_248] = return_data.size
                            mem[_248 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[220] = 0x6665650000000000000000000000000000000000000000000000000000000000
            mem[0] = sha3(6710629)
            mem[32] = 3
            if not stor3[('name', 'stor6665', 6710629)]:
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                    require idx < ('cd', 36).length
                    _155 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(cd[((64 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = cd[((64 * idx) + cd[36] + 68)]
                    _167 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_167 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_167 + 36 len 28]
                    _185 = mem[_167]
                    s = 0
                    while s < _185:
                        mem[s + _155 + 132] = mem[s + _167 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_185) <= _185:
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _185 + _155 + -mem[64] + 128]
                        if return_data.size:
                            _239 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_239] = return_data.size
                            mem[_239 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_185 + _155 + 132] = 0
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _185 + _155 + -mem[64] + 128]
                        if return_data.size:
                            _240 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_240] = return_data.size
                            mem[_240 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                if msg.value < stor3[('name', 'stor6665', 6710629)]:
                    revert with 0, 'no fee'
                if not address(cd[100]):
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                        require idx < ('cd', 36).length
                        _156 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = address(cd[((64 * idx) + cd[36] + 36)])
                        mem[mem[64] + 100] = cd[((64 * idx) + cd[36] + 68)]
                        _170 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_170 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_170 + 36 len 28]
                        _186 = mem[_170]
                        s = 0
                        while s < _186:
                            mem[s + _156 + 132] = mem[s + _170 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_186) <= _186:
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _186 + _156 + -mem[64] + 128]
                            if return_data.size:
                                _241 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_241] = return_data.size
                                mem[_241 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_186 + _156 + 132] = 0
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _186 + _156 + -mem[64] + 128]
                            if return_data.size:
                                _242 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_242] = return_data.size
                                mem[_242 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    mem[220] = 'referralFee' << 168
                    mem[0] = sha3('referralFee')
                    mem[32] = 3
                    call address(cd[100]) with:
                       value sub_4d419abc['referralFee'] wei
                         gas 2300 * is_zero(value) wei
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                        require idx < ('cd', 36).length
                        _157 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = address(cd[((64 * idx) + cd[36] + 36)])
                        mem[mem[64] + 100] = cd[((64 * idx) + cd[36] + 68)]
                        _173 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_173 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_173 + 36 len 28]
                        _187 = mem[_173]
                        s = 0
                        while s < _187:
                            mem[s + _157 + 132] = mem[s + _173 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_187) <= _187:
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _187 + _157 + -mem[64] + 128]
                            if return_data.size:
                                _243 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_243] = return_data.size
                                mem[_243 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_187 + _157 + 132] = 0
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _187 + _157 + -mem[64] + 128]
                            if return_data.size:
                                _244 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_244] = return_data.size
                                mem[_244 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
    emit 0xfe04afd2: cd[68], address(cd[4])
    return gas_remaining
}

function sub_2defb6fd(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        require msg.value <= eth.balance(this.address)
        mem[(32 * ('cd', 4).length) + 160] = 'unlimAccess' << 168
        mem[(32 * ('cd', 4).length) + 171] = address(msg.sender)
        mem[(32 * ('cd', 4).length) + 128] = 31
        mem[64] = (32 * ('cd', 4).length) + 191
        mem[0] = sha3('unlimAccess', msg.sender)
        mem[32] = 3
        if sub_4d419abc['unlimAccess'][msg.sender] >= block.timestamp:
            require 0 <= msg.value
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
                require idx < ('cd', 4).length
                call address(cd[((64 * idx) + cd[4] + 36)]) with:
                   value cd[((64 * idx) + cd[4] + 68)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    require idx < ('cd', 4).length
                    require cd[((64 * idx) + cd[4] + 68)] <= msg.value
                    idx = idx + 1
                    continue 
                require idx < ('cd', 4).length
                require calldata.size + -(64 * idx) + -cd[4] - 36 >= 64
                _134 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
                mem[_134] = cd[((64 * idx) + cd[4] + 36)]
                require cd[((64 * idx) + cd[4] + 68)] == cd[((64 * idx) + cd[4] + 68)]
                mem[_134 + 32] = cd[((64 * idx) + cd[4] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _134
                idx = idx + 1
                continue 
            if eth.balance(this.address) < eth.balance(this.address) - msg.value:
                revert with 0, 
                            32,
                            38,
                            0x646f6ee28099742074727920746f2074616b652074686520636f6e7472616374,
                            0x206d6f6e65790000000000000000000000000000000000000000000000000000
            _109 = mem[64]
            mem[mem[64]] = gas_remaining
            mem[mem[64] + 32] = 64
            _116 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _116:
                _193 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_193 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _109 + (64 * _116) + -mem[64] + 96
        mem[(32 * ('cd', 4).length) + 223] = 'customFee' << 184
        mem[(32 * ('cd', 4).length) + 232] = address(msg.sender)
        mem[(32 * ('cd', 4).length) + 191] = 29
        mem[64] = (32 * ('cd', 4).length) + 252
        mem[0] = sha3('customFee', msg.sender)
        mem[32] = 3
        if sub_4d419abc['customFee'][msg.sender]:
            require sub_4d419abc['customFee'][msg.sender] <= msg.value
            idx = 0
            while idx < ('cd', 4).length:
                require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
                require idx < ('cd', 4).length
                call address(cd[((64 * idx) + cd[4] + 36)]) with:
                   value cd[((64 * idx) + cd[4] + 68)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    require idx < ('cd', 4).length
                    require cd[((64 * idx) + cd[4] + 68)] <= msg.value - sub_4d419abc['customFee'][msg.sender]
                    idx = idx + 1
                    continue 
                require idx < ('cd', 4).length
                require calldata.size + -(64 * idx) + -cd[4] - 36 >= 64
                _133 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
                mem[_133] = cd[((64 * idx) + cd[4] + 36)]
                require cd[((64 * idx) + cd[4] + 68)] == cd[((64 * idx) + cd[4] + 68)]
                mem[_133 + 32] = cd[((64 * idx) + cd[4] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _133
                idx = idx + 1
                continue 
            require sub_4d419abc['customFee'][msg.sender] >= 0
            if eth.balance(this.address) < sub_4d419abc['customFee'][msg.sender] + eth.balance(this.address) - msg.value:
                revert with 0, 
                            32,
                            38,
                            0x646f6ee28099742074727920746f2074616b652074686520636f6e7472616374,
                            0x206d6f6e65790000000000000000000000000000000000000000000000000000
            _108 = mem[64]
            mem[mem[64]] = gas_remaining
            mem[mem[64] + 32] = 64
            _115 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _115:
                _192 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_192 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _108 + (64 * _115) + -mem[64] + 96
        mem[(32 * ('cd', 4).length) + 252] = 0x6665650000000000000000000000000000000000000000000000000000000000
        mem[0] = sha3(6710629)
        mem[32] = 3
        require stor3[('name', 'stor6665', 6710629)] <= msg.value
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
            require idx < ('cd', 4).length
            call address(cd[((64 * idx) + cd[4] + 36)]) with:
               value cd[((64 * idx) + cd[4] + 68)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                require idx < ('cd', 4).length
                require cd[((64 * idx) + cd[4] + 68)] <= msg.value - stor3[('name', 'stor6665', 6710629)]
                idx = idx + 1
                continue 
            require idx < ('cd', 4).length
            require calldata.size + -(64 * idx) + -cd[4] - 36 >= 64
            _132 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
            mem[_132] = cd[((64 * idx) + cd[4] + 36)]
            require cd[((64 * idx) + cd[4] + 68)] == cd[((64 * idx) + cd[4] + 68)]
            mem[_132 + 32] = cd[((64 * idx) + cd[4] + 68)]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _132
            idx = idx + 1
            continue 
        require stor3[('name', 'stor6665', 6710629)] >= 0
        if eth.balance(this.address) < stor3[('name', 'stor6665', 6710629)] + eth.balance(this.address) - msg.value:
            revert with 0, 
                        32,
                        38,
                        0x646f6ee28099742074727920746f2074616b652074686520636f6e7472616374,
                        0x206d6f6e65790000000000000000000000000000000000000000000000000000
        _107 = mem[64]
        mem[mem[64]] = gas_remaining
        mem[mem[64] + 32] = 64
        _114 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _114:
            _191 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_191 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _107 + (64 * _114) + -mem[64] + 96
    mem[64] = (32 * ('cd', 4).length) + 192
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[var16001] = (32 * ('cd', 4).length) + 128
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    require msg.value <= eth.balance(this.address)
    _200 = mem[64]
    mem[mem[64] + 32] = 'unlimAccess' << 168
    mem[mem[64] + 43] = address(msg.sender)
    _204 = mem[64]
    mem[mem[64]] = 31
    mem[64] = mem[64] + 63
    mem[0] = sha3(mem[_204 + 32 len mem[_204]])
    mem[32] = 3
    if sub_4d419abc[mem[0]] >= block.timestamp:
        require 0 <= msg.value
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
            require idx < ('cd', 4).length
            call address(cd[((64 * idx) + cd[4] + 36)]) with:
               value cd[((64 * idx) + cd[4] + 68)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                require idx < ('cd', 4).length
                require cd[((64 * idx) + cd[4] + 68)] <= msg.value
                idx = idx + 1
                continue 
            require idx < ('cd', 4).length
            require calldata.size + -(64 * idx) + -cd[4] - 36 >= 64
            _282 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
            mem[_282] = cd[((64 * idx) + cd[4] + 36)]
            require cd[((64 * idx) + cd[4] + 68)] == cd[((64 * idx) + cd[4] + 68)]
            mem[_282 + 32] = cd[((64 * idx) + cd[4] + 68)]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _282
            idx = idx + 1
            continue 
        if eth.balance(this.address) < eth.balance(this.address) - msg.value:
            revert with 0, 
                        32,
                        38,
                        0x646f6ee28099742074727920746f2074616b652074686520636f6e7472616374,
                        0x206d6f6e65790000000000000000000000000000000000000000000000000000
        _258 = mem[64]
        mem[mem[64]] = gas_remaining
        mem[mem[64] + 32] = 64
        _264 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _264:
            _291 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_291 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _258 + (64 * _264) + -mem[64] + 96
    mem[_200 + 95] = 'customFee' << 184
    mem[_200 + 104] = address(msg.sender)
    mem[_200 + 63] = 29
    mem[64] = _200 + 124
    mem[0] = sha3('customFee', msg.sender)
    mem[32] = 3
    if sub_4d419abc['customFee'][msg.sender]:
        require sub_4d419abc['customFee'][msg.sender] <= msg.value
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
            require idx < ('cd', 4).length
            call address(cd[((64 * idx) + cd[4] + 36)]) with:
               value cd[((64 * idx) + cd[4] + 68)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                require idx < ('cd', 4).length
                require cd[((64 * idx) + cd[4] + 68)] <= msg.value - sub_4d419abc['customFee'][msg.sender]
                idx = idx + 1
                continue 
            require idx < ('cd', 4).length
            require calldata.size + -(64 * idx) + -cd[4] - 36 >= 64
            _281 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
            mem[_281] = cd[((64 * idx) + cd[4] + 36)]
            require cd[((64 * idx) + cd[4] + 68)] == cd[((64 * idx) + cd[4] + 68)]
            mem[_281 + 32] = cd[((64 * idx) + cd[4] + 68)]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _281
            idx = idx + 1
            continue 
        require sub_4d419abc['customFee'][msg.sender] >= 0
        if eth.balance(this.address) < sub_4d419abc['customFee'][msg.sender] + eth.balance(this.address) - msg.value:
            revert with 0, 
                        32,
                        38,
                        0x646f6ee28099742074727920746f2074616b652074686520636f6e7472616374,
                        0x206d6f6e65790000000000000000000000000000000000000000000000000000
        _257 = mem[64]
        mem[mem[64]] = gas_remaining
        mem[mem[64] + 32] = 64
        _263 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _263:
            _290 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_290 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _257 + (64 * _263) + -mem[64] + 96
    mem[_200 + 124] = 0x6665650000000000000000000000000000000000000000000000000000000000
    mem[0] = sha3(6710629)
    mem[32] = 3
    require stor3[('name', 'stor6665', 6710629)] <= msg.value
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        call address(cd[((64 * idx) + cd[4] + 36)]) with:
           value cd[((64 * idx) + cd[4] + 68)] wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            require idx < ('cd', 4).length
            require cd[((64 * idx) + cd[4] + 68)] <= msg.value - stor3[('name', 'stor6665', 6710629)]
            idx = idx + 1
            continue 
        require idx < ('cd', 4).length
        require calldata.size + -(64 * idx) + -cd[4] - 36 >= 64
        _280 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[((64 * idx) + cd[4] + 36)] == address(cd[((64 * idx) + cd[4] + 36)])
        mem[_280] = cd[((64 * idx) + cd[4] + 36)]
        require cd[((64 * idx) + cd[4] + 68)] == cd[((64 * idx) + cd[4] + 68)]
        mem[_280 + 32] = cd[((64 * idx) + cd[4] + 68)]
        require idx < mem[96]
        mem[(32 * idx) + 128] = _280
        idx = idx + 1
        continue 
    require stor3[('name', 'stor6665', 6710629)] >= 0
    if eth.balance(this.address) < stor3[('name', 'stor6665', 6710629)] + eth.balance(this.address) - msg.value:
        revert with 0, 
                    32,
                    38,
                    0x646f6ee28099742074727920746f2074616b652074686520636f6e7472616374,
                    0x206d6f6e65790000000000000000000000000000000000000000000000000000
    _256 = mem[64]
    mem[mem[64]] = gas_remaining
    mem[mem[64] + 32] = 64
    _262 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _262:
        _289 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_289 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _256 + (64 * _262) + -mem[64] + 96
}

function sub_b9ee1015(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    require cd[164] == cd[164]
    if not ('cd', 36).length:
        revert with 0, 'no contributors sent'
    mem[96] = ('cd', 132).length
    mem[128 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[('cd', 132).length + 128] = 0
    if cd[164] < block.timestamp:
        revert with 0, 'the signature is invalid or has expired'
    mem[ceil32(('cd', 132).length) + 160] = 0xe419504a688f0e6ea59c2708f49b2bbc10a2da71770bd6e1b324e39c73e7dc25
    mem[ceil32(('cd', 132).length) + 192] = msg.sender
    mem[ceil32(('cd', 132).length) + 224] = cd[164]
    mem[ceil32(('cd', 132).length) + 128] = 96
    _9 = sha3(mem[ceil32(('cd', 132).length) + 160 len Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[('cd', 132).length + 160 len -('cd', 132).length + ceil32(('cd', 132).length)]])
    mem[ceil32(('cd', 132).length) + 288] = 0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472
    mem[ceil32(('cd', 132).length) + 320] = sha3(93641805625544816009176434)
    mem[ceil32(('cd', 132).length) + 352] = sha3(3288624)
    mem[ceil32(('cd', 132).length) + 384] = stor3[('name', 'stor6368', 27980790284306788)]
    mem[ceil32(('cd', 132).length) + 416] = this.address
    mem[ceil32(('cd', 132).length) + 448] = 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558
    mem[ceil32(('cd', 132).length) + 256] = 192
    mem[ceil32(('cd', 132).length) + 512] = 0x1901000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(('cd', 132).length) + 514] = sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], address(this.address), 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558)
    mem[ceil32(('cd', 132).length) + 546] = _9
    mem[ceil32(('cd', 132).length) + 480] = 66
    mem[ceil32(('cd', 132).length) + 674] = mem[128]
    mem[ceil32(('cd', 132).length) + 706] = mem[160]
    signer = erecover(sha3(0, sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], address(this.address), 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558), _9), 0, mem[128], mem[160]) 
    mem[ceil32(('cd', 132).length) + 578] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'the signature is invalid or has expired'
    mem[ceil32(('cd', 132).length) + 642] = 'unlimAccess' << 168
    mem[ceil32(('cd', 132).length) + 653] = address(signer)
    mem[ceil32(('cd', 132).length) + 610] = 31
    mem[64] = ceil32(('cd', 132).length) + 673
    mem[0] = sha3('unlimAccess', address(signer))
    mem[32] = 3
    if sub_4d419abc['unlimAccess'][address(signer)] >= block.timestamp:
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
            require idx < ('cd', 36).length
            _197 = mem[64]
            mem[mem[64] + 36] = address(signer)
            mem[mem[64] + 68] = address(cd[((64 * idx) + cd[36] + 36)])
            mem[mem[64] + 100] = cd[((64 * idx) + cd[36] + 68)]
            _219 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_219 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_219 + 36 len 28]
            _227 = mem[_219]
            s = 0
            while s < _227:
                mem[s + _197 + 132] = mem[s + _219 + 32]
                s = s + 32
                continue 
            if ceil32(_227) <= _227:
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _227 + _197 + -mem[64] + 128]
                if return_data.size:
                    _286 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_286] = return_data.size
                    mem[_286 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                mem[_227 + _197 + 132] = 0
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _227 + _197 + -mem[64] + 128]
                if return_data.size:
                    _287 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_287] = return_data.size
                    mem[_287 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[ceil32(('cd', 132).length) + 705] = 'customFee' << 184
        mem[ceil32(('cd', 132).length) + 714] = address(signer)
        mem[ceil32(('cd', 132).length) + 673] = 29
        mem[64] = ceil32(('cd', 132).length) + 734
        mem[0] = sha3('customFee', address(signer))
        mem[32] = 3
        if sub_4d419abc['customFee'][address(signer)]:
            if msg.value < sub_4d419abc['customFee'][address(signer)]:
                revert with 0, 'no fee'
            if not address(cd[100]):
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                    require idx < ('cd', 36).length
                    _195 = mem[64]
                    mem[mem[64] + 36] = address(signer)
                    mem[mem[64] + 68] = address(cd[((64 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = cd[((64 * idx) + cd[36] + 68)]
                    _213 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_213 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_213 + 36 len 28]
                    _225 = mem[_213]
                    s = 0
                    while s < _225:
                        mem[s + _195 + 132] = mem[s + _213 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_225) <= _225:
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _225 + _195 + -mem[64] + 128]
                        if return_data.size:
                            _282 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_282] = return_data.size
                            mem[_282 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_225 + _195 + 132] = 0
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _225 + _195 + -mem[64] + 128]
                        if return_data.size:
                            _283 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_283] = return_data.size
                            mem[_283 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(('cd', 132).length) + 734] = 'referralFee' << 168
                mem[0] = sha3('referralFee')
                mem[32] = 3
                call address(cd[100]) with:
                   value sub_4d419abc['referralFee'] wei
                     gas 2300 * is_zero(value) wei
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                    require idx < ('cd', 36).length
                    _196 = mem[64]
                    mem[mem[64] + 36] = address(signer)
                    mem[mem[64] + 68] = address(cd[((64 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = cd[((64 * idx) + cd[36] + 68)]
                    _216 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_216 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_216 + 36 len 28]
                    _226 = mem[_216]
                    s = 0
                    while s < _226:
                        mem[s + _196 + 132] = mem[s + _216 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_226) <= _226:
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _226 + _196 + -mem[64] + 128]
                        if return_data.size:
                            _284 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_284] = return_data.size
                            mem[_284 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_226 + _196 + 132] = 0
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _226 + _196 + -mem[64] + 128]
                        if return_data.size:
                            _285 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_285] = return_data.size
                            mem[_285 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            mem[ceil32(('cd', 132).length) + 734] = 0x6665650000000000000000000000000000000000000000000000000000000000
            mem[0] = sha3(6710629)
            mem[32] = 3
            if not stor3[('name', 'stor6665', 6710629)]:
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                    require idx < ('cd', 36).length
                    _192 = mem[64]
                    mem[mem[64] + 36] = address(signer)
                    mem[mem[64] + 68] = address(cd[((64 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = cd[((64 * idx) + cd[36] + 68)]
                    _204 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_204 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_204 + 36 len 28]
                    _222 = mem[_204]
                    s = 0
                    while s < _222:
                        mem[s + _192 + 132] = mem[s + _204 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_222) <= _222:
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _222 + _192 + -mem[64] + 128]
                        if return_data.size:
                            _276 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_276] = return_data.size
                            mem[_276 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_222 + _192 + 132] = 0
                        call address(cd[4]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _222 + _192 + -mem[64] + 128]
                        if return_data.size:
                            _277 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_277] = return_data.size
                            mem[_277 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                if msg.value < stor3[('name', 'stor6665', 6710629)]:
                    revert with 0, 'no fee'
                if not address(cd[100]):
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                        require idx < ('cd', 36).length
                        _193 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = address(cd[((64 * idx) + cd[36] + 36)])
                        mem[mem[64] + 100] = cd[((64 * idx) + cd[36] + 68)]
                        _207 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_207 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_207 + 36 len 28]
                        _223 = mem[_207]
                        s = 0
                        while s < _223:
                            mem[s + _193 + 132] = mem[s + _207 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_223) <= _223:
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _223 + _193 + -mem[64] + 128]
                            if return_data.size:
                                _278 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_278] = return_data.size
                                mem[_278 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_223 + _193 + 132] = 0
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _223 + _193 + -mem[64] + 128]
                            if return_data.size:
                                _279 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_279] = return_data.size
                                mem[_279 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(('cd', 132).length) + 734] = 'referralFee' << 168
                    mem[0] = sha3('referralFee')
                    mem[32] = 3
                    call address(cd[100]) with:
                       value sub_4d419abc['referralFee'] wei
                         gas 2300 * is_zero(value) wei
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                        require idx < ('cd', 36).length
                        _194 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = address(cd[((64 * idx) + cd[36] + 36)])
                        mem[mem[64] + 100] = cd[((64 * idx) + cd[36] + 68)]
                        _210 = mem[64]
                        mem[mem[64]] = 100
                        mem[64] = mem[64] + 132
                        mem[_210 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_210 + 36 len 28]
                        _224 = mem[_210]
                        s = 0
                        while s < _224:
                            mem[s + _194 + 132] = mem[s + _210 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_224) <= _224:
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _224 + _194 + -mem[64] + 128]
                            if return_data.size:
                                _280 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_280] = return_data.size
                                mem[_280 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_224 + _194 + 132] = 0
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _224 + _194 + -mem[64] + 128]
                            if return_data.size:
                                _281 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_281] = return_data.size
                                mem[_281 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
    emit 0xfe04afd2: cd[68], address(cd[4])
    return gas_remaining
}

function sub_b23a1088(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    require cd[164] == cd[164]
    mem[96] = ('cd', 132).length
    mem[128 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[('cd', 132).length + 128] = 0
    if cd[164] < block.timestamp:
        revert with 0, 'the signature is invalid or has expired'
    mem[ceil32(('cd', 132).length) + 160] = 0xe419504a688f0e6ea59c2708f49b2bbc10a2da71770bd6e1b324e39c73e7dc25
    mem[ceil32(('cd', 132).length) + 192] = msg.sender
    mem[ceil32(('cd', 132).length) + 224] = cd[164]
    mem[ceil32(('cd', 132).length) + 128] = 96
    _7 = sha3(mem[ceil32(('cd', 132).length) + 160 len Mask(8 * -ceil32(('cd', 132).length) + ('cd', 132).length + 32, 0, 0), mem[('cd', 132).length + 160 len -('cd', 132).length + ceil32(('cd', 132).length)]])
    mem[ceil32(('cd', 132).length) + 288] = 0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472
    mem[ceil32(('cd', 132).length) + 320] = sha3(93641805625544816009176434)
    mem[ceil32(('cd', 132).length) + 352] = sha3(3288624)
    mem[ceil32(('cd', 132).length) + 384] = stor3[('name', 'stor6368', 27980790284306788)]
    mem[ceil32(('cd', 132).length) + 416] = this.address
    mem[ceil32(('cd', 132).length) + 448] = 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558
    mem[ceil32(('cd', 132).length) + 256] = 192
    mem[ceil32(('cd', 132).length) + 512] = 0x1901000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(('cd', 132).length) + 514] = sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], address(this.address), 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558)
    mem[ceil32(('cd', 132).length) + 546] = _7
    mem[ceil32(('cd', 132).length) + 480] = 66
    signer = erecover(sha3(0, sha3(0xd87cd6ef79d4e2b95e15ce8abf732db51ec771f1ca2edccf22a46c729ac56472, sha3(93641805625544816009176434), sha3(3288624), stor3[('name', 'stor6368', 27980790284306788)], address(this.address), 0xf2d857f4a3edcb9b78b4d503bfe733db1e3f6cdc2b7971ee739626c97e86a558), _7), 0, mem[128], mem[160]) 
    mem[ceil32(('cd', 132).length) + 578] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'the signature is invalid or has expired'
    if not ('cd', 36).length:
        revert with 0, 'no contributors sent'
    mem[ceil32(('cd', 132).length) + 642] = 'unlimAccess' << 168
    mem[ceil32(('cd', 132).length) + 653] = address(signer)
    mem[ceil32(('cd', 132).length) + 610] = 31
    mem[0] = sha3('unlimAccess', address(signer))
    mem[32] = 3
    if sub_4d419abc['unlimAccess'][address(signer)] >= block.timestamp:
        mem[ceil32(('cd', 132).length) + 709] = address(signer)
        mem[ceil32(('cd', 132).length) + 741] = this.address
        mem[ceil32(('cd', 132).length) + 773] = cd[68]
        mem[ceil32(('cd', 132).length) + 673] = 100
        mem[64] = ceil32(('cd', 132).length) + 805
        mem[ceil32(('cd', 132).length) + 709 len 28] = address(signer) << 64
        mem[ceil32(('cd', 132).length) + 705 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(('cd', 132).length) + 805 len 128] = unknown_0x23b872dd(?????), address(signer) << 64, 0, address(this.address), cd[68], mem[ceil32(('cd', 132).length) + 805 len 28]
        mem[ceil32(('cd', 132).length) + 905] = 0
        call address(cd[4]).mem[ceil32(('cd', 132).length) + 805 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(('cd', 132).length) + 809 len 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'not enough allowed tokens'
            idx = 0
            s = 0
            while idx < ('cd', 36).length:
                require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                require idx < ('cd', 36).length
                _1257 = mem[64]
                mem[mem[64] + 36] = address(cd[((64 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((64 * idx) + cd[36] + 68)]
                _1492 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1492 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1492 + 36 len 28]
                _1798 = mem[_1492]
                t = 0
                while t < _1798:
                    mem[t + _1257 + 100] = mem[t + _1492 + 32]
                    t = t + 32
                    continue 
                if ceil32(_1798) <= _1798:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1798 + _1257 + -mem[64] + 96]
                    if return_data.size:
                        _2454 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2454] = return_data.size
                        mem[_2454 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[_1798 + _1257 + 100] = 0
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1798 + _1257 + -mem[64] + 96]
                    if return_data.size:
                        _2455 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2455] = return_data.size
                        mem[_2455 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                if idx < ('cd', 36).length:
                    idx = idx + 1
                    s = s + cd[((64 * idx) + cd[36] + 68)]
                    continue 
                revert
            if s:
                _1114 = mem[64]
                mem[mem[64] + 36] = address(signer)
                mem[mem[64] + 68] = s
                _1182 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1182 + 32 len 4] = unknown_0xa9059cbb(?????)
                _1282 = mem[_1182]
                mem[_1114 + 100 len ceil32(mem[_1182])] = mem[_1182 + 32 len ceil32(mem[_1182])]
                if ceil32(_1282) > _1282:
                    mem[_1282 + _1114 + 100] = 0
                call address(cd[4]) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1282 + _1114 + -mem[64] + 96]
        else:
            mem[64] = ceil32(('cd', 132).length) + ceil32(return_data.size) + 806
            mem[ceil32(('cd', 132).length) + 805] = return_data.size
            mem[ceil32(('cd', 132).length) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'not enough allowed tokens'
            idx = 0
            s = 0
            while idx < ('cd', 36).length:
                require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                require idx < ('cd', 36).length
                _1259 = mem[64]
                mem[mem[64] + 36] = address(cd[((64 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = cd[((64 * idx) + cd[36] + 68)]
                _1497 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1497 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1497 + 36 len 28]
                _1811 = mem[_1497]
                t = 0
                while t < _1811:
                    mem[t + _1259 + 100] = mem[t + _1497 + 32]
                    t = t + 32
                    continue 
                if ceil32(_1811) <= _1811:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1811 + _1259 + -mem[64] + 96]
                    if return_data.size:
                        _2458 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2458] = return_data.size
                        mem[_2458 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[_1811 + _1259 + 100] = 0
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1811 + _1259 + -mem[64] + 96]
                    if return_data.size:
                        _2459 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2459] = return_data.size
                        mem[_2459 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    idx = idx + 1
                    s = s
                    continue 
                if idx < ('cd', 36).length:
                    idx = idx + 1
                    s = s + cd[((64 * idx) + cd[36] + 68)]
                    continue 
                revert
            if s:
                _1115 = mem[64]
                mem[mem[64] + 36] = address(signer)
                mem[mem[64] + 68] = s
                _1185 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1185 + 32 len 4] = unknown_0xa9059cbb(?????)
                _1283 = mem[_1185]
                mem[_1115 + 100 len ceil32(mem[_1185])] = mem[_1185 + 32 len ceil32(mem[_1185])]
                if ceil32(_1283) > _1283:
                    mem[_1283 + _1115 + 100] = 0
                call address(cd[4]) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1283 + _1115 + -mem[64] + 96]
    else:
        mem[ceil32(('cd', 132).length) + 705] = 'customFee' << 184
        mem[ceil32(('cd', 132).length) + 714] = address(signer)
        mem[ceil32(('cd', 132).length) + 673] = 29
        mem[0] = sha3('customFee', address(signer))
        mem[32] = 3
        if sub_4d419abc['customFee'][address(signer)]:
            if msg.value < sub_4d419abc['customFee'][address(signer)]:
                revert with 0, 'no fee'
            if not address(cd[100]):
                mem[ceil32(('cd', 132).length) + 770] = address(signer)
                mem[ceil32(('cd', 132).length) + 802] = this.address
                mem[ceil32(('cd', 132).length) + 834] = cd[68]
                mem[ceil32(('cd', 132).length) + 734] = 100
                mem[64] = ceil32(('cd', 132).length) + 866
                mem[ceil32(('cd', 132).length) + 770 len 28] = address(signer) << 64
                mem[ceil32(('cd', 132).length) + 766 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(('cd', 132).length) + 866 len 128] = unknown_0x23b872dd(?????), address(signer) << 64, 0, address(this.address), cd[68], mem[ceil32(('cd', 132).length) + 866 len 28]
                mem[ceil32(('cd', 132).length) + 966] = 0
                call address(cd[4]).mem[ceil32(('cd', 132).length) + 866 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(('cd', 132).length) + 870 len 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'not enough allowed tokens'
                    idx = 0
                    s = 0
                    while idx < ('cd', 36).length:
                        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                        require idx < ('cd', 36).length
                        _1241 = mem[64]
                        mem[mem[64] + 36] = address(cd[((64 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = cd[((64 * idx) + cd[36] + 68)]
                        _1452 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1452 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1452 + 36 len 28]
                        _1694 = mem[_1452]
                        t = 0
                        while t < _1694:
                            mem[t + _1241 + 100] = mem[t + _1452 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1694) <= _1694:
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1694 + _1241 + -mem[64] + 96]
                            if return_data.size:
                                _2422 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2422] = return_data.size
                                mem[_2422 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_1694 + _1241 + 100] = 0
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1694 + _1241 + -mem[64] + 96]
                            if return_data.size:
                                _2423 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2423] = return_data.size
                                mem[_2423 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < ('cd', 36).length:
                            idx = idx + 1
                            s = s + cd[((64 * idx) + cd[36] + 68)]
                            continue 
                        revert
                    if s:
                        _1106 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = s
                        _1158 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1158 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _1274 = mem[_1158]
                        mem[_1106 + 100 len ceil32(mem[_1158])] = mem[_1158 + 32 len ceil32(mem[_1158])]
                        if ceil32(_1274) > _1274:
                            mem[_1274 + _1106 + 100] = 0
                        call address(cd[4]) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1274 + _1106 + -mem[64] + 96]
                else:
                    mem[64] = ceil32(('cd', 132).length) + ceil32(return_data.size) + 867
                    mem[ceil32(('cd', 132).length) + 866] = return_data.size
                    mem[ceil32(('cd', 132).length) + 898 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'not enough allowed tokens'
                    idx = 0
                    s = 0
                    while idx < ('cd', 36).length:
                        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                        require idx < ('cd', 36).length
                        _1243 = mem[64]
                        mem[mem[64] + 36] = address(cd[((64 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = cd[((64 * idx) + cd[36] + 68)]
                        _1457 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1457 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1457 + 36 len 28]
                        _1707 = mem[_1457]
                        t = 0
                        while t < _1707:
                            mem[t + _1243 + 100] = mem[t + _1457 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1707) <= _1707:
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1707 + _1243 + -mem[64] + 96]
                            if return_data.size:
                                _2426 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2426] = return_data.size
                                mem[_2426 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_1707 + _1243 + 100] = 0
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1707 + _1243 + -mem[64] + 96]
                            if return_data.size:
                                _2427 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2427] = return_data.size
                                mem[_2427 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < ('cd', 36).length:
                            idx = idx + 1
                            s = s + cd[((64 * idx) + cd[36] + 68)]
                            continue 
                        revert
                    if s:
                        _1107 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = s
                        _1161 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1161 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _1275 = mem[_1161]
                        mem[_1107 + 100 len ceil32(mem[_1161])] = mem[_1161 + 32 len ceil32(mem[_1161])]
                        if ceil32(_1275) > _1275:
                            mem[_1275 + _1107 + 100] = 0
                        call address(cd[4]) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1275 + _1107 + -mem[64] + 96]
            else:
                mem[0] = sha3('referralFee')
                mem[32] = 3
                call address(cd[100]) with:
                   value sub_4d419abc['referralFee'] wei
                     gas 2300 * is_zero(value) wei
                mem[ceil32(('cd', 132).length) + 770] = address(signer)
                mem[ceil32(('cd', 132).length) + 802] = this.address
                mem[ceil32(('cd', 132).length) + 834] = cd[68]
                mem[ceil32(('cd', 132).length) + 734] = 100
                mem[64] = ceil32(('cd', 132).length) + 866
                mem[ceil32(('cd', 132).length) + 770 len 28] = address(signer) << 64
                mem[ceil32(('cd', 132).length) + 766 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(('cd', 132).length) + 866 len 128] = unknown_0x23b872dd(?????), address(signer) << 64, 0, address(this.address), cd[68], mem[ceil32(('cd', 132).length) + 866 len 28]
                mem[ceil32(('cd', 132).length) + 966] = 0
                call address(cd[4]).mem[ceil32(('cd', 132).length) + 866 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(('cd', 132).length) + 870 len 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'not enough allowed tokens'
                    idx = 0
                    s = 0
                    while idx < ('cd', 36).length:
                        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                        require idx < ('cd', 36).length
                        _1249 = mem[64]
                        mem[mem[64] + 36] = address(cd[((64 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = cd[((64 * idx) + cd[36] + 68)]
                        _1472 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1472 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1472 + 36 len 28]
                        _1746 = mem[_1472]
                        t = 0
                        while t < _1746:
                            mem[t + _1249 + 100] = mem[t + _1472 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1746) <= _1746:
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1746 + _1249 + -mem[64] + 96]
                            if return_data.size:
                                _2438 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2438] = return_data.size
                                mem[_2438 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_1746 + _1249 + 100] = 0
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1746 + _1249 + -mem[64] + 96]
                            if return_data.size:
                                _2439 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2439] = return_data.size
                                mem[_2439 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < ('cd', 36).length:
                            idx = idx + 1
                            s = s + cd[((64 * idx) + cd[36] + 68)]
                            continue 
                        revert
                    if s:
                        _1110 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = s
                        _1170 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1170 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _1278 = mem[_1170]
                        mem[_1110 + 100 len ceil32(mem[_1170])] = mem[_1170 + 32 len ceil32(mem[_1170])]
                        if ceil32(_1278) > _1278:
                            mem[_1278 + _1110 + 100] = 0
                        call address(cd[4]) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1278 + _1110 + -mem[64] + 96]
                else:
                    mem[64] = ceil32(('cd', 132).length) + ceil32(return_data.size) + 867
                    mem[ceil32(('cd', 132).length) + 866] = return_data.size
                    mem[ceil32(('cd', 132).length) + 898 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'not enough allowed tokens'
                    idx = 0
                    s = 0
                    while idx < ('cd', 36).length:
                        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                        require idx < ('cd', 36).length
                        _1251 = mem[64]
                        mem[mem[64] + 36] = address(cd[((64 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = cd[((64 * idx) + cd[36] + 68)]
                        _1477 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1477 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1477 + 36 len 28]
                        _1759 = mem[_1477]
                        t = 0
                        while t < _1759:
                            mem[t + _1251 + 100] = mem[t + _1477 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1759) <= _1759:
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1759 + _1251 + -mem[64] + 96]
                            if return_data.size:
                                _2442 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2442] = return_data.size
                                mem[_2442 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_1759 + _1251 + 100] = 0
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1759 + _1251 + -mem[64] + 96]
                            if return_data.size:
                                _2443 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2443] = return_data.size
                                mem[_2443 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < ('cd', 36).length:
                            idx = idx + 1
                            s = s + cd[((64 * idx) + cd[36] + 68)]
                            continue 
                        revert
                    if s:
                        _1111 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = s
                        _1173 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1173 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _1279 = mem[_1173]
                        mem[_1111 + 100 len ceil32(mem[_1173])] = mem[_1173 + 32 len ceil32(mem[_1173])]
                        if ceil32(_1279) > _1279:
                            mem[_1279 + _1111 + 100] = 0
                        call address(cd[4]) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1279 + _1111 + -mem[64] + 96]
        else:
            mem[0] = sha3(6710629)
            mem[32] = 3
            if not stor3[('name', 'stor6665', 6710629)]:
                mem[ceil32(('cd', 132).length) + 770] = address(signer)
                mem[ceil32(('cd', 132).length) + 802] = this.address
                mem[ceil32(('cd', 132).length) + 834] = cd[68]
                mem[ceil32(('cd', 132).length) + 734] = 100
                mem[64] = ceil32(('cd', 132).length) + 866
                mem[ceil32(('cd', 132).length) + 770 len 28] = address(signer) << 64
                mem[ceil32(('cd', 132).length) + 766 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(('cd', 132).length) + 866 len 128] = unknown_0x23b872dd(?????), address(signer) << 64, 0, address(this.address), cd[68], mem[ceil32(('cd', 132).length) + 866 len 28]
                mem[ceil32(('cd', 132).length) + 966] = 0
                call address(cd[4]).mem[ceil32(('cd', 132).length) + 866 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(('cd', 132).length) + 870 len 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'not enough allowed tokens'
                    idx = 0
                    s = 0
                    while idx < ('cd', 36).length:
                        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                        require idx < ('cd', 36).length
                        _1217 = mem[64]
                        mem[mem[64] + 36] = address(cd[((64 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = cd[((64 * idx) + cd[36] + 68)]
                        _1392 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1392 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1392 + 36 len 28]
                        _1538 = mem[_1392]
                        t = 0
                        while t < _1538:
                            mem[t + _1217 + 100] = mem[t + _1392 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1538) <= _1538:
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1538 + _1217 + -mem[64] + 96]
                            if return_data.size:
                                _2374 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2374] = return_data.size
                                mem[_2374 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_1538 + _1217 + 100] = 0
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1538 + _1217 + -mem[64] + 96]
                            if return_data.size:
                                _2375 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2375] = return_data.size
                                mem[_2375 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < ('cd', 36).length:
                            idx = idx + 1
                            s = s + cd[((64 * idx) + cd[36] + 68)]
                            continue 
                        revert
                    if s:
                        _1094 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = s
                        _1122 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1122 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _1262 = mem[_1122]
                        mem[_1094 + 100 len ceil32(mem[_1122])] = mem[_1122 + 32 len ceil32(mem[_1122])]
                        if ceil32(_1262) > _1262:
                            mem[_1262 + _1094 + 100] = 0
                        call address(cd[4]) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1262 + _1094 + -mem[64] + 96]
                else:
                    mem[64] = ceil32(('cd', 132).length) + ceil32(return_data.size) + 867
                    mem[ceil32(('cd', 132).length) + 866] = return_data.size
                    mem[ceil32(('cd', 132).length) + 898 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'not enough allowed tokens'
                    idx = 0
                    s = 0
                    while idx < ('cd', 36).length:
                        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                        require idx < ('cd', 36).length
                        _1219 = mem[64]
                        mem[mem[64] + 36] = address(cd[((64 * idx) + cd[36] + 36)])
                        mem[mem[64] + 68] = cd[((64 * idx) + cd[36] + 68)]
                        _1397 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1397 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1397 + 36 len 28]
                        _1551 = mem[_1397]
                        t = 0
                        while t < _1551:
                            mem[t + _1219 + 100] = mem[t + _1397 + 32]
                            t = t + 32
                            continue 
                        if ceil32(_1551) <= _1551:
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1551 + _1219 + -mem[64] + 96]
                            if return_data.size:
                                _2378 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2378] = return_data.size
                                mem[_2378 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            mem[_1551 + _1219 + 100] = 0
                            call address(cd[4]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1551 + _1219 + -mem[64] + 96]
                            if return_data.size:
                                _2379 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2379] = return_data.size
                                mem[_2379 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < ('cd', 36).length:
                            idx = idx + 1
                            s = s + cd[((64 * idx) + cd[36] + 68)]
                            continue 
                        revert
                    if s:
                        _1095 = mem[64]
                        mem[mem[64] + 36] = address(signer)
                        mem[mem[64] + 68] = s
                        _1125 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1125 + 32 len 4] = unknown_0xa9059cbb(?????)
                        _1263 = mem[_1125]
                        mem[_1095 + 100 len ceil32(mem[_1125])] = mem[_1125 + 32 len ceil32(mem[_1125])]
                        if ceil32(_1263) > _1263:
                            mem[_1263 + _1095 + 100] = 0
                        call address(cd[4]) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1263 + _1095 + -mem[64] + 96]
            else:
                if msg.value < stor3[('name', 'stor6665', 6710629)]:
                    revert with 0, 'no fee'
                if not address(cd[100]):
                    mem[ceil32(('cd', 132).length) + 770] = address(signer)
                    mem[ceil32(('cd', 132).length) + 802] = this.address
                    mem[ceil32(('cd', 132).length) + 834] = cd[68]
                    mem[ceil32(('cd', 132).length) + 734] = 100
                    mem[64] = ceil32(('cd', 132).length) + 866
                    mem[ceil32(('cd', 132).length) + 770 len 28] = address(signer) << 64
                    mem[ceil32(('cd', 132).length) + 766 len 4] = unknown_0x23b872dd(?????)
                    mem[ceil32(('cd', 132).length) + 866 len 128] = unknown_0x23b872dd(?????), address(signer) << 64, 0, address(this.address), cd[68], mem[ceil32(('cd', 132).length) + 866 len 28]
                    mem[ceil32(('cd', 132).length) + 966] = 0
                    call address(cd[4]).mem[ceil32(('cd', 132).length) + 866 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(('cd', 132).length) + 870 len 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'not enough allowed tokens'
                        idx = 0
                        s = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                            require idx < ('cd', 36).length
                            _1225 = mem[64]
                            mem[mem[64] + 36] = address(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = cd[((64 * idx) + cd[36] + 68)]
                            _1412 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1412 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1412 + 36 len 28]
                            _1590 = mem[_1412]
                            t = 0
                            while t < _1590:
                                mem[t + _1225 + 100] = mem[t + _1412 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_1590) <= _1590:
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1590 + _1225 + -mem[64] + 96]
                                if return_data.size:
                                    _2390 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2390] = return_data.size
                                    mem[_2390 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_1590 + _1225 + 100] = 0
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1590 + _1225 + -mem[64] + 96]
                                if return_data.size:
                                    _2391 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2391] = return_data.size
                                    mem[_2391 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                idx = idx + 1
                                s = s
                                continue 
                            if idx < ('cd', 36).length:
                                idx = idx + 1
                                s = s + cd[((64 * idx) + cd[36] + 68)]
                                continue 
                            revert
                        if s:
                            _1098 = mem[64]
                            mem[mem[64] + 36] = address(signer)
                            mem[mem[64] + 68] = s
                            _1134 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1134 + 32 len 4] = unknown_0xa9059cbb(?????)
                            _1266 = mem[_1134]
                            mem[_1098 + 100 len ceil32(mem[_1134])] = mem[_1134 + 32 len ceil32(mem[_1134])]
                            if ceil32(_1266) > _1266:
                                mem[_1266 + _1098 + 100] = 0
                            call address(cd[4]) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1266 + _1098 + -mem[64] + 96]
                    else:
                        mem[64] = ceil32(('cd', 132).length) + ceil32(return_data.size) + 867
                        mem[ceil32(('cd', 132).length) + 866] = return_data.size
                        mem[ceil32(('cd', 132).length) + 898 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'not enough allowed tokens'
                        idx = 0
                        s = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                            require idx < ('cd', 36).length
                            _1227 = mem[64]
                            mem[mem[64] + 36] = address(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = cd[((64 * idx) + cd[36] + 68)]
                            _1417 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1417 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1417 + 36 len 28]
                            _1603 = mem[_1417]
                            t = 0
                            while t < _1603:
                                mem[t + _1227 + 100] = mem[t + _1417 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_1603) <= _1603:
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1603 + _1227 + -mem[64] + 96]
                                if return_data.size:
                                    _2394 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2394] = return_data.size
                                    mem[_2394 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_1603 + _1227 + 100] = 0
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1603 + _1227 + -mem[64] + 96]
                                if return_data.size:
                                    _2395 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2395] = return_data.size
                                    mem[_2395 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                idx = idx + 1
                                s = s
                                continue 
                            if idx < ('cd', 36).length:
                                idx = idx + 1
                                s = s + cd[((64 * idx) + cd[36] + 68)]
                                continue 
                            revert
                        if s:
                            _1099 = mem[64]
                            mem[mem[64] + 36] = address(signer)
                            mem[mem[64] + 68] = s
                            _1137 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1137 + 32 len 4] = unknown_0xa9059cbb(?????)
                            _1267 = mem[_1137]
                            mem[_1099 + 100 len ceil32(mem[_1137])] = mem[_1137 + 32 len ceil32(mem[_1137])]
                            if ceil32(_1267) > _1267:
                                mem[_1267 + _1099 + 100] = 0
                            call address(cd[4]) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1267 + _1099 + -mem[64] + 96]
                else:
                    mem[0] = sha3('referralFee')
                    mem[32] = 3
                    call address(cd[100]) with:
                       value sub_4d419abc['referralFee'] wei
                         gas 2300 * is_zero(value) wei
                    mem[ceil32(('cd', 132).length) + 770] = address(signer)
                    mem[ceil32(('cd', 132).length) + 802] = this.address
                    mem[ceil32(('cd', 132).length) + 834] = cd[68]
                    mem[ceil32(('cd', 132).length) + 734] = 100
                    mem[64] = ceil32(('cd', 132).length) + 866
                    mem[ceil32(('cd', 132).length) + 770 len 28] = address(signer) << 64
                    mem[ceil32(('cd', 132).length) + 766 len 4] = unknown_0x23b872dd(?????)
                    mem[ceil32(('cd', 132).length) + 866 len 128] = unknown_0x23b872dd(?????), address(signer) << 64, 0, address(this.address), cd[68], mem[ceil32(('cd', 132).length) + 866 len 28]
                    mem[ceil32(('cd', 132).length) + 966] = 0
                    call address(cd[4]).mem[ceil32(('cd', 132).length) + 866 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(('cd', 132).length) + 870 len 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'not enough allowed tokens'
                        idx = 0
                        s = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                            require idx < ('cd', 36).length
                            _1233 = mem[64]
                            mem[mem[64] + 36] = address(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = cd[((64 * idx) + cd[36] + 68)]
                            _1432 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1432 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1432 + 36 len 28]
                            _1642 = mem[_1432]
                            t = 0
                            while t < _1642:
                                mem[t + _1233 + 100] = mem[t + _1432 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_1642) <= _1642:
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1642 + _1233 + -mem[64] + 96]
                                if return_data.size:
                                    _2406 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2406] = return_data.size
                                    mem[_2406 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_1642 + _1233 + 100] = 0
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1642 + _1233 + -mem[64] + 96]
                                if return_data.size:
                                    _2407 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2407] = return_data.size
                                    mem[_2407 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                idx = idx + 1
                                s = s
                                continue 
                            if idx < ('cd', 36).length:
                                idx = idx + 1
                                s = s + cd[((64 * idx) + cd[36] + 68)]
                                continue 
                            revert
                        if s:
                            _1102 = mem[64]
                            mem[mem[64] + 36] = address(signer)
                            mem[mem[64] + 68] = s
                            _1146 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1146 + 32 len 4] = unknown_0xa9059cbb(?????)
                            _1270 = mem[_1146]
                            mem[_1102 + 100 len ceil32(mem[_1146])] = mem[_1146 + 32 len ceil32(mem[_1146])]
                            if ceil32(_1270) > _1270:
                                mem[_1270 + _1102 + 100] = 0
                            call address(cd[4]) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1270 + _1102 + -mem[64] + 96]
                    else:
                        mem[64] = ceil32(('cd', 132).length) + ceil32(return_data.size) + 867
                        mem[ceil32(('cd', 132).length) + 866] = return_data.size
                        mem[ceil32(('cd', 132).length) + 898 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'not enough allowed tokens'
                        idx = 0
                        s = 0
                        while idx < ('cd', 36).length:
                            require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
                            require idx < ('cd', 36).length
                            _1235 = mem[64]
                            mem[mem[64] + 36] = address(cd[((64 * idx) + cd[36] + 36)])
                            mem[mem[64] + 68] = cd[((64 * idx) + cd[36] + 68)]
                            _1437 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1437 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1437 + 36 len 28]
                            _1655 = mem[_1437]
                            t = 0
                            while t < _1655:
                                mem[t + _1235 + 100] = mem[t + _1437 + 32]
                                t = t + 32
                                continue 
                            if ceil32(_1655) <= _1655:
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1655 + _1235 + -mem[64] + 96]
                                if return_data.size:
                                    _2410 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2410] = return_data.size
                                    mem[_2410 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                mem[_1655 + _1235 + 100] = 0
                                call address(cd[4]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1655 + _1235 + -mem[64] + 96]
                                if return_data.size:
                                    _2411 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2411] = return_data.size
                                    mem[_2411 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                idx = idx + 1
                                s = s
                                continue 
                            if idx < ('cd', 36).length:
                                idx = idx + 1
                                s = s + cd[((64 * idx) + cd[36] + 68)]
                                continue 
                            revert
                        if s:
                            _1103 = mem[64]
                            mem[mem[64] + 36] = address(signer)
                            mem[mem[64] + 68] = s
                            _1149 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1149 + 32 len 4] = unknown_0xa9059cbb(?????)
                            _1271 = mem[_1149]
                            mem[_1103 + 100 len ceil32(mem[_1149])] = mem[_1149 + 32 len ceil32(mem[_1149])]
                            if ceil32(_1271) > _1271:
                                mem[_1271 + _1103 + 100] = 0
                            call address(cd[4]) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1271 + _1103 + -mem[64] + 96]
    emit 0xfe04afd2: cd[68], address(cd[4])
    return gas_remaining
}

function sub_848af8de(?) {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    require cd[164] == cd[164]
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require (32 * ('cd', 196).length) + 128 >= 96 and (32 * ('cd', 196).length) + 128 <= test266151307()
    mem[96] = ('cd', 196).length
    require cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    idx = 0
    s = cd[196] + 36
    t = 128
    while idx < ('cd', 196).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not stor7['rs_multisender_initialized']:
        if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
            require cd[36]
            stor3[('name', 'stor6665', 6710629)] = cd[36]
            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                mem[(32 * ('cd', 196).length) + 160] = 0x7669700000000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 196).length) + 163] = 0
                mem[(32 * ('cd', 196).length) + 128] = 35
                uint256(stor3[('name', 'stor0', 0)]) = cd[68]
                if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _2646 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_2646)
                                _3065 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3065 + 32 len mem[_3065]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_2646)
                                _3114 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3114 + 32 len mem[_3114]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _2647 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_2647)
                                _3069 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3069 + 32 len mem[_3069]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_2647)
                                _3118 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3118 + 32 len mem[_3118]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                else:
                    if stor7['rs_multisender_initialized']:
                        revert with 0, 'not an owner'
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _2648 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_2648)
                                _3073 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3073 + 32 len mem[_3073]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_2648)
                                _3122 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3122 + 32 len mem[_3122]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3220 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3220)
                                _3636 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3636 + 32 len mem[_3636]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3220)
                                _3740 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3740 + 32 len mem[_3740]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
            else:
                if stor7['rs_multisender_initialized']:
                    revert with 0, 'not an owner'
                mem[(32 * ('cd', 196).length) + 160] = 0x7669700000000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 196).length) + 163] = 0
                mem[(32 * ('cd', 196).length) + 128] = 35
                uint256(stor3[('name', 'stor0', 0)]) = cd[68]
                if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _2649 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_2649)
                                _3077 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3077 + 32 len mem[_3077]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_2649)
                                _3126 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3126 + 32 len mem[_3126]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3221 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3221)
                                _3640 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3640 + 32 len mem[_3640]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3221)
                                _3744 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3744 + 32 len mem[_3744]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                else:
                    if stor7['rs_multisender_initialized']:
                        revert with 0, 'not an owner'
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3222 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3222)
                                _3644 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3644 + 32 len mem[_3644]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3222)
                                _3748 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3748 + 32 len mem[_3748]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3223 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3223)
                                _3648 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3648 + 32 len mem[_3648]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3223)
                                _3752 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3752 + 32 len mem[_3752]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
        else:
            if stor7['rs_multisender_initialized']:
                revert with 0, 'not an owner'
            require cd[36]
            stor3[('name', 'stor6665', 6710629)] = cd[36]
            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                mem[(32 * ('cd', 196).length) + 160] = 0x7669700000000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 196).length) + 163] = 0
                mem[(32 * ('cd', 196).length) + 128] = 35
                uint256(stor3[('name', 'stor0', 0)]) = cd[68]
                if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _2650 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_2650)
                                _3081 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3081 + 32 len mem[_3081]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_2650)
                                _3130 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3130 + 32 len mem[_3130]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3224 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3224)
                                _3652 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3652 + 32 len mem[_3652]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3224)
                                _3756 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3756 + 32 len mem[_3756]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                else:
                    if stor7['rs_multisender_initialized']:
                        revert with 0, 'not an owner'
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3225 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3225)
                                _3656 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3656 + 32 len mem[_3656]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3225)
                                _3760 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3760 + 32 len mem[_3760]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3226 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3226)
                                _3660 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3660 + 32 len mem[_3660]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3226)
                                _3764 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3764 + 32 len mem[_3764]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
            else:
                if stor7['rs_multisender_initialized']:
                    revert with 0, 'not an owner'
                mem[(32 * ('cd', 196).length) + 160] = 0x7669700000000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 196).length) + 163] = 0
                mem[(32 * ('cd', 196).length) + 128] = 35
                uint256(stor3[('name', 'stor0', 0)]) = cd[68]
                if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3227 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3227)
                                _3664 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3664 + 32 len mem[_3664]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3227)
                                _3768 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3768 + 32 len mem[_3768]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3228 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3228)
                                _3668 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3668 + 32 len mem[_3668]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3228)
                                _3772 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3772 + 32 len mem[_3772]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                else:
                    if stor7['rs_multisender_initialized']:
                        revert with 0, 'not an owner'
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3229 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3229)
                                _3672 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3672 + 32 len mem[_3672]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3229)
                                _3776 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3776 + 32 len mem[_3776]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3230 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3230)
                                _3676 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3676 + 32 len mem[_3676]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3230)
                                _3780 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3780 + 32 len mem[_3780]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
    else:
        require msg.sender == stor5[('name', 'stor6F77', 478745093490)]
        if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
            require cd[36]
            stor3[('name', 'stor6665', 6710629)] = cd[36]
            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                mem[(32 * ('cd', 196).length) + 160] = 0x7669700000000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 196).length) + 163] = 0
                mem[(32 * ('cd', 196).length) + 128] = 35
                uint256(stor3[('name', 'stor0', 0)]) = cd[68]
                if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _2651 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_2651)
                                _3085 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3085 + 32 len mem[_3085]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_2651)
                                _3134 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3134 + 32 len mem[_3134]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3231 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3231)
                                _3680 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3680 + 32 len mem[_3680]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3231)
                                _3784 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3784 + 32 len mem[_3784]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                else:
                    if stor7['rs_multisender_initialized']:
                        revert with 0, 'not an owner'
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3232 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3232)
                                _3684 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3684 + 32 len mem[_3684]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3232)
                                _3788 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3788 + 32 len mem[_3788]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3233 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3233)
                                _3688 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3688 + 32 len mem[_3688]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3233)
                                _3792 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3792 + 32 len mem[_3792]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
            else:
                if stor7['rs_multisender_initialized']:
                    revert with 0, 'not an owner'
                mem[(32 * ('cd', 196).length) + 160] = 0x7669700000000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 196).length) + 163] = 0
                mem[(32 * ('cd', 196).length) + 128] = 35
                uint256(stor3[('name', 'stor0', 0)]) = cd[68]
                if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3234 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3234)
                                _3692 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3692 + 32 len mem[_3692]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3234)
                                _3796 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3796 + 32 len mem[_3796]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3235 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3235)
                                _3696 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3696 + 32 len mem[_3696]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3235)
                                _3800 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3800 + 32 len mem[_3800]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                else:
                    if stor7['rs_multisender_initialized']:
                        revert with 0, 'not an owner'
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3236 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3236)
                                _3700 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3700 + 32 len mem[_3700]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3236)
                                _3804 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3804 + 32 len mem[_3804]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3237 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3237)
                                _3704 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3704 + 32 len mem[_3704]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3237)
                                _3808 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3808 + 32 len mem[_3808]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
        else:
            if stor7['rs_multisender_initialized']:
                revert with 0, 'not an owner'
            require cd[36]
            stor3[('name', 'stor6665', 6710629)] = cd[36]
            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                mem[(32 * ('cd', 196).length) + 160] = 0x7669700000000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 196).length) + 163] = 0
                mem[(32 * ('cd', 196).length) + 128] = 35
                uint256(stor3[('name', 'stor0', 0)]) = cd[68]
                if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3238 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3238)
                                _3708 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3708 + 32 len mem[_3708]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3238)
                                _3812 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3812 + 32 len mem[_3812]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3239 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3239)
                                _3712 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3712 + 32 len mem[_3712]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3239)
                                _3816 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3816 + 32 len mem[_3816]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                else:
                    if stor7['rs_multisender_initialized']:
                        revert with 0, 'not an owner'
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3240 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3240)
                                _3716 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3716 + 32 len mem[_3716]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3240)
                                _3820 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3820 + 32 len mem[_3820]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3241 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3241)
                                _3720 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3720 + 32 len mem[_3720]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3241)
                                _3824 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3824 + 32 len mem[_3824]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
            else:
                if stor7['rs_multisender_initialized']:
                    revert with 0, 'not an owner'
                mem[(32 * ('cd', 196).length) + 160] = 0x7669700000000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 196).length) + 163] = 0
                mem[(32 * ('cd', 196).length) + 128] = 35
                uint256(stor3[('name', 'stor0', 0)]) = cd[68]
                if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3242 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3242)
                                _3724 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3724 + 32 len mem[_3724]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3242)
                                _3828 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3828 + 32 len mem[_3828]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3243 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3243)
                                _3728 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3728 + 32 len mem[_3728]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3243)
                                _3832 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3832 + 32 len mem[_3832]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                else:
                    if stor7['rs_multisender_initialized']:
                        revert with 0, 'not an owner'
                    mem[(32 * ('cd', 196).length) + 227] = 0x7669700000000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 196).length) + 230] = 1
                    mem[(32 * ('cd', 196).length) + 195] = 35
                    stor3[('map', 0, ('name', 'version', 1))] = cd[100]
                    if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3244 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3244)
                                _3732 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3732 + 32 len mem[_3732]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3244)
                                _3836 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3836 + 32 len mem[_3836]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
                    else:
                        if stor7['rs_multisender_initialized']:
                            revert with 0, 'not an owner'
                        mem[(32 * ('cd', 196).length) + 294] = 0x7669700000000000000000000000000000000000000000000000000000000000
                        mem[(32 * ('cd', 196).length) + 297] = 2
                        mem[(32 * ('cd', 196).length) + 262] = 35
                        mem[64] = (32 * ('cd', 196).length) + 329
                        uint256(stor3[('map', 0, ('name', 'stor2', 2))]) = cd[132]
                        stor3[('name', 'stor6368', 27980790284306788)] = cd[164]
                        require stor3[('name', 'stor6665', 6710629)] >= 10^16
                        sub_4d419abc['referralFee'] = 10^16
                        mem[(32 * ('cd', 196).length) + 361] = address(cd[4])
                        emit OwnershipTransferred(stor5[('name', 'stor6F77', 478745093490)], address(cd[4]));
                        mem[(32 * ('cd', 196).length) + 329] = 0x6f776e6572000000000000000000000000000000000000000000000000000000
                        mem[0] = sha3(478745093490)
                        mem[32] = 5
                        stor5[('name', 'stor6F77', 478745093490)] = address(cd[4])
                        idx = 0
                        while idx < ('cd', 196).length:
                            require idx < mem[96]
                            _3245 = mem[(32 * idx) + 128]
                            mem[0] = sha3(478745093490)
                            mem[32] = 5
                            if msg.sender == stor5[('name', 'stor6F77', 478745093490)]:
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3245)
                                _3736 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3736 + 32 len mem[_3736]])
                            else:
                                mem[0] = sha3('rs_multisender_initialized')
                                mem[32] = 7
                                if stor7['rs_multisender_initialized']:
                                    revert with 0, 'not an owner'
                                mem[mem[64] + 32] = 0x6d6f64657261746f720000000000000000000000000000000000000000000000
                                mem[mem[64] + 41] = address(_3245)
                                _3840 = mem[64]
                                mem[mem[64]] = 29
                                mem[64] = mem[64] + 61
                                mem[0] = sha3(mem[_3840 + 32 len mem[_3840]])
                            mem[32] = 7
                            stor7[mem[0]] = 1
                            idx = idx + 1
                            continue 
    stor7['rs_multisender_initialized'] = 1
}

function sub_10d56a2c(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (64 * ('cd', 68).length) + 36 <= calldata.size
    mem[96] = ('cd', 68).length
    if not ('cd', 68).length:
        mem[(32 * ('cd', 68).length) + 132] = this.address
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * ('cd', 68).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 164] = msg.sender
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 196] = this.address
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 228] = cd[36]
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] = 100
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 160 len 4] = unknown_0x23b872dd(?????)
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 260 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 260 len 28]
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 360] = 0
        call address(cd[4]).mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 260 len 4] with:
             gas gas_remaining wei
            args mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 264 len 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Bad token, transferFrom failed'
            mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 264] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 260
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[0] <= ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, 'Bad token, transferFrom failed'
            if cd[36] != 0:
                mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 260] = 1
                mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 292] = 0
                mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 324] = 96
                mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 356] = ('cd', 68).length
                idx = 0
                s = 128
                t = (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 388
                while idx < ('cd', 68).length:
                    _850 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_850 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                return memory
                  from (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 260
                   len (129 * ('cd', 68).length) + 128
            idx = 0
            s = mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 260] - ext_call.return_data[0]
            while idx < ('cd', 68).length:
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _901 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _907 = mem[_901]
                require mem[_901] == mem[_901]
                require idx < ('cd', 68).length
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                require idx < ('cd', 68).length
                _915 = mem[64]
                mem[mem[64] + 36] = address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64] + 68] = cd[((64 * idx) + cd[68] + 68)]
                _936 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_936 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_936 + 36 len 28]
                _944 = mem[_936]
                s = 0
                while s < _944:
                    mem[s + _915 + 100] = mem[s + _936 + 32]
                    s = s + 32
                    continue 
                if ceil32(_944) <= _944:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _944 + _915 + -mem[64] + 96]
                    if not return_data.size:
                        require idx < ('cd', 68).length
                        if not ext_call.success:
                            require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                            _1443 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            mem[_1443] = cd[((64 * idx) + cd[68] + 36)]
                            require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                            mem[_1443 + 32] = cd[((64 * idx) + cd[68] + 68)]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1443
                            idx = idx + 1
                            s = 0
                            continue 
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[((64 * idx) + cd[68] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1503 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1531 = mem[_1503]
                        require mem[_1503] == mem[_1503]
                        require _907 <= mem[_1503]
                        require idx < ('cd', 68).length
                        if not ext_call.success:
                            require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                            _1599 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            mem[_1599] = cd[((64 * idx) + cd[68] + 36)]
                            require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                            mem[_1599 + 32] = cd[((64 * idx) + cd[68] + 68)]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1599
                        else:
                            if mem[_1503] - _907 != cd[((64 * idx) + cd[68] + 68)]:
                                _1579 = mem[64]
                                mem[mem[64]] = 1
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 96
                                _1659 = mem[96]
                                mem[mem[64] + 96] = mem[96]
                                idx = 0
                                s = 128
                                t = mem[64] + 128
                                while idx < _1659:
                                    _2079 = mem[s]
                                    mem[t] = mem[mem[s] + 12 len 20]
                                    mem[t + 32] = mem[_2079 + 32]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 64
                                    continue 
                                return memory
                                  from mem[64]
                                   len _1579 + (64 * _1659) + -mem[64] + 128
                            if ext_call.success:
                                idx = idx + 1
                                s = mem[_1503] - _907
                                continue 
                            require idx < ('cd', 68).length
                            require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                            _1627 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            mem[_1627] = cd[((64 * idx) + cd[68] + 36)]
                            require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                            mem[_1627 + 32] = cd[((64 * idx) + cd[68] + 68)]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _1627
                        idx = idx + 1
                        s = _1531 - _907
                        continue 
                    _1413 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1413] = return_data.size
                    mem[_1413 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require idx < ('cd', 68).length
                    if not ext_call.success:
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _1444 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_1444] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_1444 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1444
                        idx = idx + 1
                        s = 0
                        continue 
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((64 * idx) + cd[68] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1504 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1533 = mem[_1504]
                    require mem[_1504] == mem[_1504]
                    require _907 <= mem[_1504]
                    require idx < ('cd', 68).length
                    if not ext_call.success:
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _1600 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_1600] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_1600 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1600
                    else:
                        if mem[_1504] - _907 != cd[((64 * idx) + cd[68] + 68)]:
                            _1580 = mem[64]
                            mem[mem[64]] = 1
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 96
                            _1660 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _1660:
                                _2080 = mem[s]
                                mem[t] = mem[mem[s] + 12 len 20]
                                mem[t + 32] = mem[_2080 + 32]
                                idx = idx + 1
                                s = s + 32
                                t = t + 64
                                continue 
                            return memory
                              from mem[64]
                               len _1580 + (64 * _1660) + -mem[64] + 128
                        if ext_call.success:
                            idx = idx + 1
                            s = mem[_1504] - _907
                            continue 
                        require idx < ('cd', 68).length
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _1628 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_1628] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_1628 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1628
                    idx = idx + 1
                    s = _1533 - _907
                    continue 
                mem[_944 + _915 + 100] = 0
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _944 + _915 + -mem[64] + 96]
                if not return_data.size:
                    require idx < ('cd', 68).length
                    if not ext_call.success:
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _1445 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_1445] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_1445 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1445
                        idx = idx + 1
                        s = 0
                        continue 
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((64 * idx) + cd[68] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1505 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1535 = mem[_1505]
                    require mem[_1505] == mem[_1505]
                    require _907 <= mem[_1505]
                    require idx < ('cd', 68).length
                    if not ext_call.success:
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _1601 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_1601] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_1601 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1601
                    else:
                        if mem[_1505] - _907 != cd[((64 * idx) + cd[68] + 68)]:
                            _1581 = mem[64]
                            mem[mem[64]] = 1
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 96
                            _1661 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _1661:
                                _2081 = mem[s]
                                mem[t] = mem[mem[s] + 12 len 20]
                                mem[t + 32] = mem[_2081 + 32]
                                idx = idx + 1
                                s = s + 32
                                t = t + 64
                                continue 
                            return memory
                              from mem[64]
                               len _1581 + (64 * _1661) + -mem[64] + 128
                        if ext_call.success:
                            idx = idx + 1
                            s = mem[_1505] - _907
                            continue 
                        require idx < ('cd', 68).length
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _1629 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_1629] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_1629 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1629
                    idx = idx + 1
                    s = _1535 - _907
                    continue 
                _1414 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1414] = return_data.size
                mem[_1414 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _1446 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_1446] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_1446 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1446
                    idx = idx + 1
                    s = 0
                    continue 
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1506 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1537 = mem[_1506]
                require mem[_1506] == mem[_1506]
                require _907 <= mem[_1506]
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _1602 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_1602] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_1602 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1602
                else:
                    if mem[_1506] - _907 != cd[((64 * idx) + cd[68] + 68)]:
                        _1582 = mem[64]
                        mem[mem[64]] = 1
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        _1662 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _1662:
                            _2082 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_2082 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        return memory
                          from mem[64]
                           len _1582 + (64 * _1662) + -mem[64] + 128
                    if ext_call.success:
                        idx = idx + 1
                        s = mem[_1506] - _907
                        continue 
                    require idx < ('cd', 68).length
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _1630 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_1630] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_1630 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1630
                idx = idx + 1
                s = _1537 - _907
                continue 
            _858 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = gas_remaining
            mem[mem[64] + 64] = 96
            _871 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _871:
                _1386 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1386 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _858 + (64 * _871) + -mem[64] + 128
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 260] = return_data.size
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Bad token, transferFrom failed'
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0] <= ext_call.return_data[0]
        if not ext_call.success:
            revert with 0, 'Bad token, transferFrom failed'
        if cd[36] != 0:
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 1
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 96
            mem[(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ('cd', 68).length
            idx = 0
            s = 128
            t = (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
            while idx < ('cd', 68).length:
                _851 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_851 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
               len (129 * ('cd', 68).length) + 128
        idx = 0
        s = mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(return_data.size) + 261] - ext_call.return_data[0]
        while idx < ('cd', 68).length:
            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _903 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _908 = mem[_903]
            require mem[_903] == mem[_903]
            require idx < ('cd', 68).length
            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
            require idx < ('cd', 68).length
            _916 = mem[64]
            mem[mem[64] + 36] = address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64] + 68] = cd[((64 * idx) + cd[68] + 68)]
            _939 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_939 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_939 + 36 len 28]
            _945 = mem[_939]
            s = 0
            while s < _945:
                mem[s + _916 + 100] = mem[s + _939 + 32]
                s = s + 32
                continue 
            if ceil32(_945) <= _945:
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _945 + _916 + -mem[64] + 96]
                if not return_data.size:
                    require idx < ('cd', 68).length
                    if not ext_call.success:
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _1447 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_1447] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_1447 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1447
                        idx = idx + 1
                        s = 0
                        continue 
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((64 * idx) + cd[68] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1507 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1539 = mem[_1507]
                    require mem[_1507] == mem[_1507]
                    require _908 <= mem[_1507]
                    require idx < ('cd', 68).length
                    if not ext_call.success:
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _1603 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_1603] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_1603 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1603
                    else:
                        if mem[_1507] - _908 != cd[((64 * idx) + cd[68] + 68)]:
                            _1583 = mem[64]
                            mem[mem[64]] = 1
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 96
                            _1663 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _1663:
                                _2083 = mem[s]
                                mem[t] = mem[mem[s] + 12 len 20]
                                mem[t + 32] = mem[_2083 + 32]
                                idx = idx + 1
                                s = s + 32
                                t = t + 64
                                continue 
                            return memory
                              from mem[64]
                               len _1583 + (64 * _1663) + -mem[64] + 128
                        if ext_call.success:
                            idx = idx + 1
                            s = mem[_1507] - _908
                            continue 
                        require idx < ('cd', 68).length
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _1631 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_1631] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_1631 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _1631
                    idx = idx + 1
                    s = _1539 - _908
                    continue 
                _1415 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1415] = return_data.size
                mem[_1415 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _1448 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_1448] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_1448 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1448
                    idx = idx + 1
                    s = 0
                    continue 
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1508 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1541 = mem[_1508]
                require mem[_1508] == mem[_1508]
                require _908 <= mem[_1508]
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _1604 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_1604] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_1604 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1604
                else:
                    if mem[_1508] - _908 != cd[((64 * idx) + cd[68] + 68)]:
                        _1584 = mem[64]
                        mem[mem[64]] = 1
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        _1664 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _1664:
                            _2084 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_2084 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        return memory
                          from mem[64]
                           len _1584 + (64 * _1664) + -mem[64] + 128
                    if ext_call.success:
                        idx = idx + 1
                        s = mem[_1508] - _908
                        continue 
                    require idx < ('cd', 68).length
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _1632 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_1632] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_1632 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1632
                idx = idx + 1
                s = _1541 - _908
                continue 
            mem[_945 + _916 + 100] = 0
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _945 + _916 + -mem[64] + 96]
            if not return_data.size:
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _1449 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_1449] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_1449 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1449
                    idx = idx + 1
                    s = 0
                    continue 
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1509 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1543 = mem[_1509]
                require mem[_1509] == mem[_1509]
                require _908 <= mem[_1509]
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _1605 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_1605] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_1605 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1605
                else:
                    if mem[_1509] - _908 != cd[((64 * idx) + cd[68] + 68)]:
                        _1585 = mem[64]
                        mem[mem[64]] = 1
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        _1665 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _1665:
                            _2085 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_2085 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        return memory
                          from mem[64]
                           len _1585 + (64 * _1665) + -mem[64] + 128
                    if ext_call.success:
                        idx = idx + 1
                        s = mem[_1509] - _908
                        continue 
                    require idx < ('cd', 68).length
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _1633 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_1633] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_1633 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _1633
                idx = idx + 1
                s = _1543 - _908
                continue 
            _1416 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1416] = return_data.size
            mem[_1416 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require idx < ('cd', 68).length
            if not ext_call.success:
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _1450 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[_1450] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_1450 + 32] = cd[((64 * idx) + cd[68] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _1450
                idx = idx + 1
                s = 0
                continue 
            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1510 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1545 = mem[_1510]
            require mem[_1510] == mem[_1510]
            require _908 <= mem[_1510]
            require idx < ('cd', 68).length
            if not ext_call.success:
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _1606 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[_1606] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_1606 + 32] = cd[((64 * idx) + cd[68] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _1606
            else:
                if mem[_1510] - _908 != cd[((64 * idx) + cd[68] + 68)]:
                    _1586 = mem[64]
                    mem[mem[64]] = 1
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    _1666 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 128
                    while idx < _1666:
                        _2086 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_2086 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    return memory
                      from mem[64]
                       len _1586 + (64 * _1666) + -mem[64] + 128
                if ext_call.success:
                    idx = idx + 1
                    s = mem[_1510] - _908
                    continue 
                require idx < ('cd', 68).length
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _1634 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[_1634] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_1634 + 32] = cd[((64 * idx) + cd[68] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _1634
            idx = idx + 1
            s = _1545 - _908
            continue 
        _861 = mem[64]
        mem[mem[64]] = 0
        mem[mem[64] + 32] = gas_remaining
        mem[mem[64] + 64] = 96
        _872 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _872:
            _1388 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1388 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _861 + (64 * _872) + -mem[64] + 128
    mem[64] = (32 * ('cd', 68).length) + 192
    mem[(32 * ('cd', 68).length) + 128] = 0
    mem[(32 * ('cd', 68).length) + 160] = 0
    mem[var34001] = (32 * ('cd', 68).length) + 128
    s = var34001
    idx = var34002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * ('cd', 68).length) + 128] = 0
        mem[(32 * ('cd', 68).length) + 160] = 0
        mem[s + 32] = (32 * ('cd', 68).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _878 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _879 = mem[_878]
    require mem[_878] == mem[_878]
    _904 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = cd[36]
    _909 = mem[64]
    mem[mem[64]] = 100
    mem[64] = mem[64] + 132
    mem[_909 + 32 len 4] = unknown_0x23b872dd(?????)
    _912 = mem[_909]
    mem[_904 + 132 len ceil32(mem[_909])] = mem[_909 + 32 len ceil32(mem[_909])]
    if ceil32(_912) <= _912:
        call address(cd[4]) with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _912 + _904 + -mem[64] + 128]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Bad token, transferFrom failed'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1471 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1471] == mem[_1471]
            require _879 <= mem[_1471]
            if not ext_call.success:
                revert with 0, 'Bad token, transferFrom failed'
            if mem[_1471] - _879 != cd[36]:
                _1547 = mem[64]
                mem[mem[64]] = 1
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                _1559 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _1559:
                    _2087 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_2087 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                return memory
                  from mem[64]
                   len _1547 + (64 * _1559) + -mem[64] + 128
            idx = 0
            s = mem[_1471] - _879
            while idx < ('cd', 68).length:
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2180 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2187 = mem[_2180]
                require mem[_2180] == mem[_2180]
                require idx < ('cd', 68).length
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                require idx < ('cd', 68).length
                _2191 = mem[64]
                mem[mem[64] + 36] = address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64] + 68] = cd[((64 * idx) + cd[68] + 68)]
                _2195 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_2195 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2195 + 36 len 28]
                _2207 = mem[_2195]
                s = 0
                while s < _2207:
                    mem[s + _2191 + 100] = mem[s + _2195 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2207) <= _2207:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2207 + _2191 + -mem[64] + 96]
                    if not return_data.size:
                        require idx < ('cd', 68).length
                        if not ext_call.success:
                            require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                            _2523 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            mem[_2523] = cd[((64 * idx) + cd[68] + 36)]
                            require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                            mem[_2523 + 32] = cd[((64 * idx) + cd[68] + 68)]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _2523
                            idx = idx + 1
                            s = 0
                            continue 
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(cd[((64 * idx) + cd[68] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2571 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2587 = mem[_2571]
                        require mem[_2571] == mem[_2571]
                        require _2187 <= mem[_2571]
                        require idx < ('cd', 68).length
                        if not ext_call.success:
                            require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                            _2635 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            mem[_2635] = cd[((64 * idx) + cd[68] + 36)]
                            require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                            mem[_2635 + 32] = cd[((64 * idx) + cd[68] + 68)]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _2635
                        else:
                            if mem[_2571] - _2187 != cd[((64 * idx) + cd[68] + 68)]:
                                _2619 = mem[64]
                                mem[mem[64]] = 1
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 96
                                _2667 = mem[96]
                                mem[mem[64] + 96] = mem[96]
                                idx = 0
                                s = 128
                                t = mem[64] + 128
                                while idx < _2667:
                                    _2779 = mem[s]
                                    mem[t] = mem[mem[s] + 12 len 20]
                                    mem[t + 32] = mem[_2779 + 32]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 64
                                    continue 
                                return memory
                                  from mem[64]
                                   len _2619 + (64 * _2667) + -mem[64] + 128
                            if ext_call.success:
                                idx = idx + 1
                                s = mem[_2571] - _2187
                                continue 
                            require idx < ('cd', 68).length
                            require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                            _2651 = mem[64]
                            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                            mem[64] = mem[64] + 64
                            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                            mem[_2651] = cd[((64 * idx) + cd[68] + 36)]
                            require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                            mem[_2651 + 32] = cd[((64 * idx) + cd[68] + 68)]
                            require idx < mem[96]
                            mem[(32 * idx) + 128] = _2651
                        idx = idx + 1
                        s = _2587 - _2187
                        continue 
                    _2511 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2511] = return_data.size
                    mem[_2511 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require idx < ('cd', 68).length
                    if not ext_call.success:
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _2524 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_2524] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_2524 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2524
                        idx = idx + 1
                        s = 0
                        continue 
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((64 * idx) + cd[68] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2572 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2589 = mem[_2572]
                    require mem[_2572] == mem[_2572]
                    require _2187 <= mem[_2572]
                    require idx < ('cd', 68).length
                    if not ext_call.success:
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _2636 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_2636] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_2636 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2636
                    else:
                        if mem[_2572] - _2187 != cd[((64 * idx) + cd[68] + 68)]:
                            _2620 = mem[64]
                            mem[mem[64]] = 1
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 96
                            _2668 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _2668:
                                _2780 = mem[s]
                                mem[t] = mem[mem[s] + 12 len 20]
                                mem[t + 32] = mem[_2780 + 32]
                                idx = idx + 1
                                s = s + 32
                                t = t + 64
                                continue 
                            return memory
                              from mem[64]
                               len _2620 + (64 * _2668) + -mem[64] + 128
                        if ext_call.success:
                            idx = idx + 1
                            s = mem[_2572] - _2187
                            continue 
                        require idx < ('cd', 68).length
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _2652 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_2652] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_2652 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2652
                    idx = idx + 1
                    s = _2589 - _2187
                    continue 
                mem[_2207 + _2191 + 100] = 0
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2207 + _2191 + -mem[64] + 96]
                if not return_data.size:
                    require idx < ('cd', 68).length
                    if not ext_call.success:
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _2525 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_2525] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_2525 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2525
                        idx = idx + 1
                        s = 0
                        continue 
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((64 * idx) + cd[68] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2573 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2591 = mem[_2573]
                    require mem[_2573] == mem[_2573]
                    require _2187 <= mem[_2573]
                    require idx < ('cd', 68).length
                    if not ext_call.success:
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _2637 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_2637] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_2637 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2637
                    else:
                        if mem[_2573] - _2187 != cd[((64 * idx) + cd[68] + 68)]:
                            _2621 = mem[64]
                            mem[mem[64]] = 1
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 96
                            _2669 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _2669:
                                _2781 = mem[s]
                                mem[t] = mem[mem[s] + 12 len 20]
                                mem[t + 32] = mem[_2781 + 32]
                                idx = idx + 1
                                s = s + 32
                                t = t + 64
                                continue 
                            return memory
                              from mem[64]
                               len _2621 + (64 * _2669) + -mem[64] + 128
                        if ext_call.success:
                            idx = idx + 1
                            s = mem[_2573] - _2187
                            continue 
                        require idx < ('cd', 68).length
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _2653 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_2653] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_2653 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2653
                    idx = idx + 1
                    s = _2591 - _2187
                    continue 
                _2512 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2512] = return_data.size
                mem[_2512 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2526 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2526] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2526 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2526
                    idx = idx + 1
                    s = 0
                    continue 
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2574 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2593 = mem[_2574]
                require mem[_2574] == mem[_2574]
                require _2187 <= mem[_2574]
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2638 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2638] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2638 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2638
                else:
                    if mem[_2574] - _2187 != cd[((64 * idx) + cd[68] + 68)]:
                        _2622 = mem[64]
                        mem[mem[64]] = 1
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        _2670 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _2670:
                            _2782 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_2782 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        return memory
                          from mem[64]
                           len _2622 + (64 * _2670) + -mem[64] + 128
                    if ext_call.success:
                        idx = idx + 1
                        s = mem[_2574] - _2187
                        continue 
                    require idx < ('cd', 68).length
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2654 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2654] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2654 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2654
                idx = idx + 1
                s = _2593 - _2187
                continue 
            _2123 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = gas_remaining
            mem[mem[64] + 64] = 96
            _2155 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _2155:
                _2487 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2487 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _2123 + (64 * _2155) + -mem[64] + 128
        _1417 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1417] = return_data.size
        mem[_1417 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Bad token, transferFrom failed'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1472 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1472] == mem[_1472]
        require _879 <= mem[_1472]
        if not ext_call.success:
            revert with 0, 'Bad token, transferFrom failed'
        if mem[_1472] - _879 != cd[36]:
            _1548 = mem[64]
            mem[mem[64]] = 1
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 96
            _1560 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _1560:
                _2088 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2088 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _1548 + (64 * _1560) + -mem[64] + 128
        idx = 0
        s = mem[_1472] - _879
        while idx < ('cd', 68).length:
            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2182 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2188 = mem[_2182]
            require mem[_2182] == mem[_2182]
            require idx < ('cd', 68).length
            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
            require idx < ('cd', 68).length
            _2192 = mem[64]
            mem[mem[64] + 36] = address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64] + 68] = cd[((64 * idx) + cd[68] + 68)]
            _2198 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2198 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2198 + 36 len 28]
            _2208 = mem[_2198]
            s = 0
            while s < _2208:
                mem[s + _2192 + 100] = mem[s + _2198 + 32]
                s = s + 32
                continue 
            if ceil32(_2208) <= _2208:
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2208 + _2192 + -mem[64] + 96]
                if not return_data.size:
                    require idx < ('cd', 68).length
                    if not ext_call.success:
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _2527 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_2527] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_2527 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2527
                        idx = idx + 1
                        s = 0
                        continue 
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((64 * idx) + cd[68] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2575 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2595 = mem[_2575]
                    require mem[_2575] == mem[_2575]
                    require _2188 <= mem[_2575]
                    require idx < ('cd', 68).length
                    if not ext_call.success:
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _2639 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_2639] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_2639 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2639
                    else:
                        if mem[_2575] - _2188 != cd[((64 * idx) + cd[68] + 68)]:
                            _2623 = mem[64]
                            mem[mem[64]] = 1
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 96
                            _2671 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _2671:
                                _2783 = mem[s]
                                mem[t] = mem[mem[s] + 12 len 20]
                                mem[t + 32] = mem[_2783 + 32]
                                idx = idx + 1
                                s = s + 32
                                t = t + 64
                                continue 
                            return memory
                              from mem[64]
                               len _2623 + (64 * _2671) + -mem[64] + 128
                        if ext_call.success:
                            idx = idx + 1
                            s = mem[_2575] - _2188
                            continue 
                        require idx < ('cd', 68).length
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _2655 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_2655] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_2655 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2655
                    idx = idx + 1
                    s = _2595 - _2188
                    continue 
                _2513 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2513] = return_data.size
                mem[_2513 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2528 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2528] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2528 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2528
                    idx = idx + 1
                    s = 0
                    continue 
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2576 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2597 = mem[_2576]
                require mem[_2576] == mem[_2576]
                require _2188 <= mem[_2576]
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2640 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2640] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2640 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2640
                else:
                    if mem[_2576] - _2188 != cd[((64 * idx) + cd[68] + 68)]:
                        _2624 = mem[64]
                        mem[mem[64]] = 1
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        _2672 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _2672:
                            _2784 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_2784 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        return memory
                          from mem[64]
                           len _2624 + (64 * _2672) + -mem[64] + 128
                    if ext_call.success:
                        idx = idx + 1
                        s = mem[_2576] - _2188
                        continue 
                    require idx < ('cd', 68).length
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2656 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2656] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2656 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2656
                idx = idx + 1
                s = _2597 - _2188
                continue 
            mem[_2208 + _2192 + 100] = 0
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2208 + _2192 + -mem[64] + 96]
            if not return_data.size:
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2529 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2529] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2529 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2529
                    idx = idx + 1
                    s = 0
                    continue 
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2577 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2599 = mem[_2577]
                require mem[_2577] == mem[_2577]
                require _2188 <= mem[_2577]
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2641 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2641] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2641 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2641
                else:
                    if mem[_2577] - _2188 != cd[((64 * idx) + cd[68] + 68)]:
                        _2625 = mem[64]
                        mem[mem[64]] = 1
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        _2673 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _2673:
                            _2785 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_2785 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        return memory
                          from mem[64]
                           len _2625 + (64 * _2673) + -mem[64] + 128
                    if ext_call.success:
                        idx = idx + 1
                        s = mem[_2577] - _2188
                        continue 
                    require idx < ('cd', 68).length
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2657 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2657] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2657 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2657
                idx = idx + 1
                s = _2599 - _2188
                continue 
            _2514 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_2514] = return_data.size
            mem[_2514 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require idx < ('cd', 68).length
            if not ext_call.success:
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _2530 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[_2530] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_2530 + 32] = cd[((64 * idx) + cd[68] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _2530
                idx = idx + 1
                s = 0
                continue 
            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2578 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2601 = mem[_2578]
            require mem[_2578] == mem[_2578]
            require _2188 <= mem[_2578]
            require idx < ('cd', 68).length
            if not ext_call.success:
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _2642 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[_2642] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_2642 + 32] = cd[((64 * idx) + cd[68] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _2642
            else:
                if mem[_2578] - _2188 != cd[((64 * idx) + cd[68] + 68)]:
                    _2626 = mem[64]
                    mem[mem[64]] = 1
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    _2674 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 128
                    while idx < _2674:
                        _2786 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_2786 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    return memory
                      from mem[64]
                       len _2626 + (64 * _2674) + -mem[64] + 128
                if ext_call.success:
                    idx = idx + 1
                    s = mem[_2578] - _2188
                    continue 
                require idx < ('cd', 68).length
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _2658 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[_2658] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_2658 + 32] = cd[((64 * idx) + cd[68] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _2658
            idx = idx + 1
            s = _2601 - _2188
            continue 
        _2126 = mem[64]
        mem[mem[64]] = 0
        mem[mem[64] + 32] = gas_remaining
        mem[mem[64] + 64] = 96
        _2156 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _2156:
            _2489 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2489 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _2126 + (64 * _2156) + -mem[64] + 128
    mem[_912 + _904 + 132] = 0
    call address(cd[4]) with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _912 + _904 + -mem[64] + 128]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Bad token, transferFrom failed'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1473 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1473] == mem[_1473]
        require _879 <= mem[_1473]
        if not ext_call.success:
            revert with 0, 'Bad token, transferFrom failed'
        if mem[_1473] - _879 != cd[36]:
            _1549 = mem[64]
            mem[mem[64]] = 1
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 96
            _1561 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _1561:
                _2089 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_2089 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _1549 + (64 * _1561) + -mem[64] + 128
        idx = 0
        s = mem[_1473] - _879
        while idx < ('cd', 68).length:
            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2184 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2189 = mem[_2184]
            require mem[_2184] == mem[_2184]
            require idx < ('cd', 68).length
            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
            require idx < ('cd', 68).length
            _2193 = mem[64]
            mem[mem[64] + 36] = address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64] + 68] = cd[((64 * idx) + cd[68] + 68)]
            _2201 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_2201 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2201 + 36 len 28]
            _2209 = mem[_2201]
            s = 0
            while s < _2209:
                mem[s + _2193 + 100] = mem[s + _2201 + 32]
                s = s + 32
                continue 
            if ceil32(_2209) <= _2209:
                call address(cd[4]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2209 + _2193 + -mem[64] + 96]
                if not return_data.size:
                    require idx < ('cd', 68).length
                    if not ext_call.success:
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _2531 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_2531] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_2531 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2531
                        idx = idx + 1
                        s = 0
                        continue 
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[((64 * idx) + cd[68] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2579 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2603 = mem[_2579]
                    require mem[_2579] == mem[_2579]
                    require _2189 <= mem[_2579]
                    require idx < ('cd', 68).length
                    if not ext_call.success:
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _2643 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_2643] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_2643 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2643
                    else:
                        if mem[_2579] - _2189 != cd[((64 * idx) + cd[68] + 68)]:
                            _2627 = mem[64]
                            mem[mem[64]] = 1
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = 96
                            _2675 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _2675:
                                _2787 = mem[s]
                                mem[t] = mem[mem[s] + 12 len 20]
                                mem[t + 32] = mem[_2787 + 32]
                                idx = idx + 1
                                s = s + 32
                                t = t + 64
                                continue 
                            return memory
                              from mem[64]
                               len _2627 + (64 * _2675) + -mem[64] + 128
                        if ext_call.success:
                            idx = idx + 1
                            s = mem[_2579] - _2189
                            continue 
                        require idx < ('cd', 68).length
                        require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                        _2659 = mem[64]
                        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                        mem[64] = mem[64] + 64
                        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                        mem[_2659] = cd[((64 * idx) + cd[68] + 36)]
                        require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                        mem[_2659 + 32] = cd[((64 * idx) + cd[68] + 68)]
                        require idx < mem[96]
                        mem[(32 * idx) + 128] = _2659
                    idx = idx + 1
                    s = _2603 - _2189
                    continue 
                _2515 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2515] = return_data.size
                mem[_2515 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2532 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2532] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2532 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2532
                    idx = idx + 1
                    s = 0
                    continue 
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2580 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2605 = mem[_2580]
                require mem[_2580] == mem[_2580]
                require _2189 <= mem[_2580]
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2644 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2644] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2644 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2644
                else:
                    if mem[_2580] - _2189 != cd[((64 * idx) + cd[68] + 68)]:
                        _2628 = mem[64]
                        mem[mem[64]] = 1
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        _2676 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _2676:
                            _2788 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_2788 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        return memory
                          from mem[64]
                           len _2628 + (64 * _2676) + -mem[64] + 128
                    if ext_call.success:
                        idx = idx + 1
                        s = mem[_2580] - _2189
                        continue 
                    require idx < ('cd', 68).length
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2660 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2660] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2660 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2660
                idx = idx + 1
                s = _2605 - _2189
                continue 
            mem[_2209 + _2193 + 100] = 0
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2209 + _2193 + -mem[64] + 96]
            if not return_data.size:
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2533 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2533] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2533 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2533
                    idx = idx + 1
                    s = 0
                    continue 
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2581 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2607 = mem[_2581]
                require mem[_2581] == mem[_2581]
                require _2189 <= mem[_2581]
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2645 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2645] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2645 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2645
                else:
                    if mem[_2581] - _2189 != cd[((64 * idx) + cd[68] + 68)]:
                        _2629 = mem[64]
                        mem[mem[64]] = 1
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        _2677 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _2677:
                            _2789 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_2789 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        return memory
                          from mem[64]
                           len _2629 + (64 * _2677) + -mem[64] + 128
                    if ext_call.success:
                        idx = idx + 1
                        s = mem[_2581] - _2189
                        continue 
                    require idx < ('cd', 68).length
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2661 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2661] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2661 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2661
                idx = idx + 1
                s = _2607 - _2189
                continue 
            _2516 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_2516] = return_data.size
            mem[_2516 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require idx < ('cd', 68).length
            if not ext_call.success:
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _2534 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[_2534] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_2534 + 32] = cd[((64 * idx) + cd[68] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _2534
                idx = idx + 1
                s = 0
                continue 
            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2582 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2609 = mem[_2582]
            require mem[_2582] == mem[_2582]
            require _2189 <= mem[_2582]
            require idx < ('cd', 68).length
            if not ext_call.success:
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _2646 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[_2646] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_2646 + 32] = cd[((64 * idx) + cd[68] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _2646
            else:
                if mem[_2582] - _2189 != cd[((64 * idx) + cd[68] + 68)]:
                    _2630 = mem[64]
                    mem[mem[64]] = 1
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    _2678 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 128
                    while idx < _2678:
                        _2790 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_2790 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    return memory
                      from mem[64]
                       len _2630 + (64 * _2678) + -mem[64] + 128
                if ext_call.success:
                    idx = idx + 1
                    s = mem[_2582] - _2189
                    continue 
                require idx < ('cd', 68).length
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _2662 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[_2662] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_2662 + 32] = cd[((64 * idx) + cd[68] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _2662
            idx = idx + 1
            s = _2609 - _2189
            continue 
        _2129 = mem[64]
        mem[mem[64]] = 0
        mem[mem[64] + 32] = gas_remaining
        mem[mem[64] + 64] = 96
        _2157 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _2157:
            _2491 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2491 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _2129 + (64 * _2157) + -mem[64] + 128
    _1418 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_1418] = return_data.size
    mem[_1418 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'Bad token, transferFrom failed'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1474 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1474] == mem[_1474]
    require _879 <= mem[_1474]
    if not ext_call.success:
        revert with 0, 'Bad token, transferFrom failed'
    if mem[_1474] - _879 != cd[36]:
        _1550 = mem[64]
        mem[mem[64]] = 1
        mem[mem[64] + 32] = 0
        mem[mem[64] + 64] = 96
        _1562 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _1562:
            _2090 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2090 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _1550 + (64 * _1562) + -mem[64] + 128
    idx = 0
    s = mem[_1474] - _879
    while idx < ('cd', 68).length:
        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[((64 * idx) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2186 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2190 = mem[_2186]
        require mem[_2186] == mem[_2186]
        require idx < ('cd', 68).length
        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
        require idx < ('cd', 68).length
        _2194 = mem[64]
        mem[mem[64] + 36] = address(cd[((64 * idx) + cd[68] + 36)])
        mem[mem[64] + 68] = cd[((64 * idx) + cd[68] + 68)]
        _2204 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_2204 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_2204 + 36 len 28]
        _2210 = mem[_2204]
        s = 0
        while s < _2210:
            mem[s + _2194 + 100] = mem[s + _2204 + 32]
            s = s + 32
            continue 
        if ceil32(_2210) <= _2210:
            call address(cd[4]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2210 + _2194 + -mem[64] + 96]
            if not return_data.size:
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2535 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2535] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2535 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2535
                    idx = idx + 1
                    s = 0
                    continue 
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[((64 * idx) + cd[68] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2583 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2611 = mem[_2583]
                require mem[_2583] == mem[_2583]
                require _2190 <= mem[_2583]
                require idx < ('cd', 68).length
                if not ext_call.success:
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2647 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2647] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2647 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2647
                else:
                    if mem[_2583] - _2190 != cd[((64 * idx) + cd[68] + 68)]:
                        _2631 = mem[64]
                        mem[mem[64]] = 1
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 96
                        _2679 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _2679:
                            _2791 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_2791 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        return memory
                          from mem[64]
                           len _2631 + (64 * _2679) + -mem[64] + 128
                    if ext_call.success:
                        idx = idx + 1
                        s = mem[_2583] - _2190
                        continue 
                    require idx < ('cd', 68).length
                    require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                    _2663 = mem[64]
                    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                    mem[64] = mem[64] + 64
                    require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                    mem[_2663] = cd[((64 * idx) + cd[68] + 36)]
                    require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                    mem[_2663 + 32] = cd[((64 * idx) + cd[68] + 68)]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = _2663
                idx = idx + 1
                s = _2611 - _2190
                continue 
            _2517 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_2517] = return_data.size
            mem[_2517 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require idx < ('cd', 68).length
            if not ext_call.success:
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _2536 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[_2536] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_2536 + 32] = cd[((64 * idx) + cd[68] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _2536
                idx = idx + 1
                s = 0
                continue 
            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2584 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2613 = mem[_2584]
            require mem[_2584] == mem[_2584]
            require _2190 <= mem[_2584]
            require idx < ('cd', 68).length
            if not ext_call.success:
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _2648 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[_2648] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_2648 + 32] = cd[((64 * idx) + cd[68] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _2648
            else:
                if mem[_2584] - _2190 != cd[((64 * idx) + cd[68] + 68)]:
                    _2632 = mem[64]
                    mem[mem[64]] = 1
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    _2680 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 128
                    while idx < _2680:
                        _2792 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_2792 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    return memory
                      from mem[64]
                       len _2632 + (64 * _2680) + -mem[64] + 128
                if ext_call.success:
                    idx = idx + 1
                    s = mem[_2584] - _2190
                    continue 
                require idx < ('cd', 68).length
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _2664 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[_2664] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_2664 + 32] = cd[((64 * idx) + cd[68] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _2664
            idx = idx + 1
            s = _2613 - _2190
            continue 
        mem[_2210 + _2194 + 100] = 0
        call address(cd[4]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _2210 + _2194 + -mem[64] + 96]
        if not return_data.size:
            require idx < ('cd', 68).length
            if not ext_call.success:
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _2537 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[_2537] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_2537 + 32] = cd[((64 * idx) + cd[68] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _2537
                idx = idx + 1
                s = 0
                continue 
            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((64 * idx) + cd[68] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2585 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2615 = mem[_2585]
            require mem[_2585] == mem[_2585]
            require _2190 <= mem[_2585]
            require idx < ('cd', 68).length
            if not ext_call.success:
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _2649 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[_2649] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_2649 + 32] = cd[((64 * idx) + cd[68] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _2649
            else:
                if mem[_2585] - _2190 != cd[((64 * idx) + cd[68] + 68)]:
                    _2633 = mem[64]
                    mem[mem[64]] = 1
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = 96
                    _2681 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 128
                    while idx < _2681:
                        _2793 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_2793 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    return memory
                      from mem[64]
                       len _2633 + (64 * _2681) + -mem[64] + 128
                if ext_call.success:
                    idx = idx + 1
                    s = mem[_2585] - _2190
                    continue 
                require idx < ('cd', 68).length
                require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
                _2665 = mem[64]
                require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
                mem[64] = mem[64] + 64
                require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
                mem[_2665] = cd[((64 * idx) + cd[68] + 36)]
                require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
                mem[_2665 + 32] = cd[((64 * idx) + cd[68] + 68)]
                require idx < mem[96]
                mem[(32 * idx) + 128] = _2665
            idx = idx + 1
            s = _2615 - _2190
            continue 
        _2518 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_2518] = return_data.size
        mem[_2518 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require idx < ('cd', 68).length
        if not ext_call.success:
            require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
            _2538 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
            mem[_2538] = cd[((64 * idx) + cd[68] + 36)]
            require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
            mem[_2538 + 32] = cd[((64 * idx) + cd[68] + 68)]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _2538
            idx = idx + 1
            s = 0
            continue 
        require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
        mem[mem[64] + 4] = address(cd[((64 * idx) + cd[68] + 36)])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[((64 * idx) + cd[68] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2586 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2617 = mem[_2586]
        require mem[_2586] == mem[_2586]
        require _2190 <= mem[_2586]
        require idx < ('cd', 68).length
        if not ext_call.success:
            require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
            _2650 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
            mem[_2650] = cd[((64 * idx) + cd[68] + 36)]
            require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
            mem[_2650 + 32] = cd[((64 * idx) + cd[68] + 68)]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _2650
        else:
            if mem[_2586] - _2190 != cd[((64 * idx) + cd[68] + 68)]:
                _2634 = mem[64]
                mem[mem[64]] = 1
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 96
                _2682 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _2682:
                    _2794 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_2794 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                return memory
                  from mem[64]
                   len _2634 + (64 * _2682) + -mem[64] + 128
            if ext_call.success:
                idx = idx + 1
                s = mem[_2586] - _2190
                continue 
            require idx < ('cd', 68).length
            require calldata.size + -(64 * idx) + -cd[68] - 36 >= 64
            _2666 = mem[64]
            require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
            mem[64] = mem[64] + 64
            require cd[((64 * idx) + cd[68] + 36)] == address(cd[((64 * idx) + cd[68] + 36)])
            mem[_2666] = cd[((64 * idx) + cd[68] + 36)]
            require cd[((64 * idx) + cd[68] + 68)] == cd[((64 * idx) + cd[68] + 68)]
            mem[_2666 + 32] = cd[((64 * idx) + cd[68] + 68)]
            require idx < mem[96]
            mem[(32 * idx) + 128] = _2666
        idx = idx + 1
        s = _2617 - _2190
        continue 
    _2132 = mem[64]
    mem[mem[64]] = 0
    mem[mem[64] + 32] = gas_remaining
    mem[mem[64] + 64] = 96
    _2158 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _2158:
        _2493 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_2493 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _2132 + (64 * _2158) + -mem[64] + 128
}



}
