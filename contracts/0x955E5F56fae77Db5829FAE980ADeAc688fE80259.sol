contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint8 stor2;
array of struct campaign;
mapping of uint256 sub_f491f6c6;

function deployedContracts(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < campaign[arg1].field_0
    return campaign[arg1][arg2].field_0, campaign[arg1][arg2].field_256
}

function getCampaign(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < campaign[address(msg.sender)].field_0
    return campaign[address(msg.sender)][arg1].field_0, campaign[address(msg.sender)][arg1].field_256
}

function owner() {
    return owner
}

function allowedUsers(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function sub_f491f6c6(?) {
    require calldata.size - 4 >= 32
    return sub_f491f6c6[arg1]
}

function _fallback() payable {
    revert
}

function sub_609230ac(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_e02286d1(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'User must be a valid address'
    stor2[address(arg1)] = uint8(arg2)
}

function sendAvax(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_a67d309e(?) {
    if campaign[address(msg.sender)].field_0 <= 0:
        revert with 0, 'No contract deployed'
    idx = 0
    while idx < campaign[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 3)
        mem[96] = 0x3ccfd60b00000000000000000000000000000000000000000000000000000000
        require ext_code.size(campaign[address(msg.sender)][idx].field_256)
        call campaign[address(msg.sender)][idx].field_256.withdraw() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_d224e3fd(?) {
    require calldata.size - 4 >= 192
    if bool(stor2[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe596f7520617265206e6f7420616c6c6f77656420746f206465706c6f7920612063616d706169676e,
                    mem[205 len 23]
    if not arg6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x7343616e206f6e6c79206465706c6f792045524332302046756e64696e672043616d706169676e20436f6e74726163,
                    mem[211 len 17]
    require ext_code.size(stor1)
    call stor1.0xcec3ae9c with:
         gas gas_remaining wei
        args 0, arg1, arg2, arg3, arg4, address(arg5), address(arg6), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    campaign[address(msg.sender)].field_0++
    campaign[address(msg.sender)][campaign[address(msg.sender)].field_0].field_0 = msg.sender
    campaign[address(msg.sender)][campaign[address(msg.sender)].field_0].field_256 = address(ext_call.return_data[0])
    sub_f491f6c6[address(msg.sender)]++
    emit 0x5ec743f1: address(ext_call.return_data[0]), msg.sender
}

function sub_aa9ecff5(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'InsufficientBalance'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
    call arg1 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_3f6b6c2d(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if sub_f491f6c6[address(msg.sender)] <= 0:
        revert with 0, 'NoContracts'
    idx = 0
    while idx < sub_f491f6c6[address(msg.sender)]:
        _28 = mem[64]
        mem[64] = mem[64] + 64
        mem[_28] = 0
        mem[_28 + 32] = 0
        mem[32] = 3
        require idx < campaign[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 3)
        _31 = mem[64]
        mem[64] = mem[64] + 64
        mem[_31] = campaign[address(msg.sender)][idx].field_0
        mem[_31 + 32] = campaign[address(msg.sender)][idx].field_256
        mem[mem[64] + 4] = campaign[address(msg.sender)][idx].field_256
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args campaign[address(msg.sender)][idx].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(campaign[address(msg.sender)][idx].field_256)
        staticcall campaign[address(msg.sender)][idx].field_256.canWithdraw() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(campaign[address(msg.sender)][idx].field_256)
            staticcall campaign[address(msg.sender)][idx].field_256.cancelled() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(campaign[address(msg.sender)][idx].field_256)
                    staticcall campaign[address(msg.sender)][idx].field_256.0x51b9853e with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        mem[mem[64]] = 0x3ccfd60b00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(campaign[address(msg.sender)][idx].field_256)
                        call campaign[address(msg.sender)][idx].field_256.withdraw() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_b77ac8e8(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 2
    if bool(stor2[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe596f7520617265206e6f7420616c6c6f77656420746f206465706c6f7920612063616d706169676e,
                    mem[205 len 23]
    if ('cd', 4).length <= 0:
        revert with 0, 'addresses is empty'
    if ('cd', 36).length <= 0:
        revert with 0, 'amounts is empty'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x6c61646472657373657320616e6420616d6f756e747320617272617973206d7573742068617665207468652073616d652073697a,
                    mem[216 len 12]
    if not address(cd[68]):
        revert with 0, 'invalid token address'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 'invalid address'
        require idx < ('cd', 36).length
        if cd[((32 * idx) + cd[36] + 36)] <= 0:
            revert with 0, 'amount should be higher than 0'
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).cancelled() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x51b9853e with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            s = s
            continue 
        _83 = mem[64]
        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
        _84 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_84 + 32] = mem[_84 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[64] = _83 + 164
        mem[_83 + 100] = 32
        mem[_83 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_83 + 270 len 26]
        if ext_code.size(address(cd[68])) <= 0:
            revert with 0, 'Address: call to non-contract'
        _90 = mem[_84]
        u = _84 + 32
        v = _83 + 164
        t = mem[_84]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_83 + floor32(mem[_84]) + 164] = mem[_84 + -(mem[_84] % 32) + floor32(mem[_84]) + 64 len mem[_84] % 32] or Mask(8 * -(mem[_84] % 32) + 32, -(8 * -(mem[_84] % 32) + 32) + 256, mem[_83 + floor32(mem[_84]) + 164])
        call address(cd[68]).mem[_83 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_83 + 168 len _90 - 4]
        if not return_data.size:
            if ext_call.success:
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_83 + 274 len 22]
                idx = idx + 1
                s = s + cd[((32 * idx) + cd[36] + 36)]
                continue 
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            mem[_83 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_83 + 168] = 32
            mem[_83 + 200] = 32
            idx = 0
            while idx < 32:
                mem[_83 + idx + 232] = mem[_83 + idx + 132]
                idx = idx + 32
                continue 
            revert with memory
              from mem[64]
               len _83 + -mem[64] + 264
        mem[64] = _83 + ceil32(return_data.size) + 165
        mem[_83 + 164] = return_data.size
        mem[_83 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_83 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_83 + ceil32(return_data.size) + 275 len 22]
            idx = idx + 1
            s = s + cd[((32 * idx) + cd[36] + 36)]
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_83 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_83 + ceil32(return_data.size) + 169] = 32
        idx = 0
        while idx < 32:
            mem[_83 + ceil32(return_data.size) + idx + 233] = mem[_83 + idx + 132]
            idx = idx + 32
            continue 
        revert with 0, 32, 32, mem[_83 + ceil32(return_data.size) + 233]
    emit 0xaff123be: s
}

function sub_c53458c5(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg2.length <= 0:
        revert with 0, 'No campaigns given'
    mem[0] = msg.sender
    mem[32] = 4
    require sub_f491f6c6[address(msg.sender)] <= test266151307()
    mem[(32 * arg2.length) + 128] = sub_f491f6c6[address(msg.sender)]
    mem[64] = (32 * arg2.length) + (32 * sub_f491f6c6[address(msg.sender)]) + 160
    if not sub_f491f6c6[address(msg.sender)]:
        idx = 0
        s = 0
        t = 0
        while idx < arg2.length:
            require idx < mem[96]
            _135 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(arg3)
            staticcall arg3.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_135)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(_135):
                idx = idx + 1
                s = s
                t = t
                continue 
            if arg1 <= ext_call.return_data[0]:
                idx = idx + 1
                s = s
                t = t
                continue 
            require ext_code.size(address(_135))
            staticcall address(_135).cancelled() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                idx = idx + 1
                s = s
                t = t
                continue 
            require ext_code.size(address(_135))
            staticcall address(_135).0x51b9853e with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                idx = idx + 1
                s = s
                t = t
                continue 
            _241 = mem[64]
            mem[64] = mem[64] + 64
            mem[_241] = address(_135)
            mem[_241 + 32] = arg1 - ext_call.return_data[0]
            require t < mem[(32 * arg2.length) + 128]
            mem[(32 * t) + (32 * arg2.length) + 160] = _241
            idx = idx + 1
            s = s + arg1 - ext_call.return_data[0]
            t = t + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'NoMoneyLeft'
        _141 = mem[(32 * arg2.length) + 128]
        require mem[(32 * arg2.length) + 128] <= test266151307()
        _146 = mem[64]
        mem[mem[64]] = mem[(32 * arg2.length) + 128]
        if not _141:
            _150 = mem[(32 * arg2.length) + 128]
            require mem[(32 * arg2.length) + 128] <= test266151307()
            mem[mem[64] + (32 * _141) + 32] = mem[(32 * arg2.length) + 128]
            mem[64] = mem[64] + (32 * _141) + (32 * _150) + 64
            if not _150:
                u = 0
                while u < t:
                    _321 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_321] = 0
                    mem[_321 + 32] = 0
                    require u < mem[(32 * arg2.length) + 128]
                    _342 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
                    require s
                    if ext_call.return_data[0] * mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32] / s <= mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]:
                        require u < mem[(32 * arg2.length) + 128]
                        require u < mem[_146]
                        mem[(32 * u) + _146 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
                        require u < mem[_146 + (32 * _141) + 32]
                        mem[(32 * u) + _146 + (32 * _141) + 64] = ext_call.return_data[0] * _342 / s
                    else:
                        _369 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
                        require u < mem[(32 * arg2.length) + 128]
                        require u < mem[_146]
                        mem[(32 * u) + _146 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
                        require u < mem[_146 + (32 * _141) + 32]
                        mem[(32 * u) + _146 + (32 * _141) + 64] = _369
                    u = u + 1
                    continue 
                _318 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[_146]
                _320 = mem[_146]
                mem[mem[64] + 96 len floor32(mem[_146])] = mem[_146 + 32 len floor32(mem[_146])]
                mem[mem[64] + 32] = (32 * _320) + 96
                mem[(32 * _320) + _318 + 96] = mem[_146 + (32 * _141) + 32]
                _477 = mem[_146 + (32 * _141) + 32]
                mem[(32 * _320) + _318 + 128 len floor32(mem[_146 + (32 * _141) + 32])] = mem[_146 + (32 * _141) + 64 len floor32(mem[_146 + (32 * _141) + 32])]
                return memory
                  from mem[64]
                   len (32 * _477) + (32 * _320) + _318 + -mem[64] + 128
            mem[_146 + (32 * _141) + 64 len 32 * _150] = call.data[calldata.size len 32 * _150]
            u = 0
            while u < t:
                _325 = mem[64]
                mem[64] = mem[64] + 64
                mem[_325] = 0
                mem[_325 + 32] = 0
                require u < mem[(32 * arg2.length) + 128]
                _347 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
                require s
                if ext_call.return_data[0] * mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32] / s <= mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]:
                    require u < mem[(32 * arg2.length) + 128]
                    require u < mem[_146]
                    mem[(32 * u) + _146 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
                    require u < mem[_146 + (32 * _141) + 32]
                    mem[(32 * u) + _146 + (32 * _141) + 64] = ext_call.return_data[0] * _347 / s
                else:
                    _373 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
                    require u < mem[(32 * arg2.length) + 128]
                    require u < mem[_146]
                    mem[(32 * u) + _146 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
                    require u < mem[_146 + (32 * _141) + 32]
                    mem[(32 * u) + _146 + (32 * _141) + 64] = _373
                u = u + 1
                continue 
            _322 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[_146]
            _324 = mem[_146]
            mem[mem[64] + 96 len floor32(mem[_146])] = mem[_146 + 32 len floor32(mem[_146])]
            mem[mem[64] + 32] = (32 * _324) + 96
            mem[(32 * _324) + _322 + 96] = mem[_146 + (32 * _141) + 32]
            _480 = mem[_146 + (32 * _141) + 32]
            mem[(32 * _324) + _322 + 128 len floor32(mem[_146 + (32 * _141) + 32])] = mem[_146 + (32 * _141) + 64 len floor32(mem[_146 + (32 * _141) + 32])]
            return memory
              from mem[64]
               len (32 * _480) + (32 * _324) + _322 + -mem[64] + 128
        mem[mem[64] + 32 len 32 * _141] = call.data[calldata.size len 32 * _141]
        _155 = mem[(32 * arg2.length) + 128]
        require mem[(32 * arg2.length) + 128] <= test266151307()
        mem[mem[64] + (32 * _141) + 32] = mem[(32 * arg2.length) + 128]
        mem[64] = mem[64] + (32 * _141) + (32 * _155) + 64
        if not _155:
            u = 0
            while u < t:
                _329 = mem[64]
                mem[64] = mem[64] + 64
                mem[_329] = 0
                mem[_329 + 32] = 0
                require u < mem[(32 * arg2.length) + 128]
                _352 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
                require s
                if ext_call.return_data[0] * mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32] / s <= mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]:
                    require u < mem[(32 * arg2.length) + 128]
                    require u < mem[_146]
                    mem[(32 * u) + _146 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
                    require u < mem[_146 + (32 * _141) + 32]
                    mem[(32 * u) + _146 + (32 * _141) + 64] = ext_call.return_data[0] * _352 / s
                else:
                    _377 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
                    require u < mem[(32 * arg2.length) + 128]
                    require u < mem[_146]
                    mem[(32 * u) + _146 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
                    require u < mem[_146 + (32 * _141) + 32]
                    mem[(32 * u) + _146 + (32 * _141) + 64] = _377
                u = u + 1
                continue 
            _326 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[_146]
            _328 = mem[_146]
            mem[mem[64] + 96 len floor32(mem[_146])] = mem[_146 + 32 len floor32(mem[_146])]
            mem[mem[64] + 32] = (32 * _328) + 96
            mem[(32 * _328) + _326 + 96] = mem[_146 + (32 * _141) + 32]
            _483 = mem[_146 + (32 * _141) + 32]
            mem[(32 * _328) + _326 + 128 len floor32(mem[_146 + (32 * _141) + 32])] = mem[_146 + (32 * _141) + 64 len floor32(mem[_146 + (32 * _141) + 32])]
            return memory
              from mem[64]
               len (32 * _483) + (32 * _328) + _326 + -mem[64] + 128
        mem[_146 + (32 * _141) + 64 len 32 * _155] = call.data[calldata.size len 32 * _155]
        u = 0
        while u < t:
            _333 = mem[64]
            mem[64] = mem[64] + 64
            mem[_333] = 0
            mem[_333 + 32] = 0
            require u < mem[(32 * arg2.length) + 128]
            _357 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
            require s
            if ext_call.return_data[0] * mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32] / s <= mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]:
                require u < mem[(32 * arg2.length) + 128]
                require u < mem[_146]
                mem[(32 * u) + _146 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
                require u < mem[_146 + (32 * _141) + 32]
                mem[(32 * u) + _146 + (32 * _141) + 64] = ext_call.return_data[0] * _357 / s
            else:
                _381 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
                require u < mem[(32 * arg2.length) + 128]
                require u < mem[_146]
                mem[(32 * u) + _146 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
                require u < mem[_146 + (32 * _141) + 32]
                mem[(32 * u) + _146 + (32 * _141) + 64] = _381
            u = u + 1
            continue 
        _330 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[_146]
        _332 = mem[_146]
        mem[mem[64] + 96 len floor32(mem[_146])] = mem[_146 + 32 len floor32(mem[_146])]
        mem[mem[64] + 32] = (32 * _332) + 96
        mem[(32 * _332) + _330 + 96] = mem[_146 + (32 * _141) + 32]
        _486 = mem[_146 + (32 * _141) + 32]
        mem[(32 * _332) + _330 + 128 len floor32(mem[_146 + (32 * _141) + 32])] = mem[_146 + (32 * _141) + 64 len floor32(mem[_146 + (32 * _141) + 32])]
        return memory
          from mem[64]
           len (32 * _486) + (32 * _332) + _330 + -mem[64] + 128
    mem[64] = (32 * arg2.length) + (32 * sub_f491f6c6[address(msg.sender)]) + 224
    mem[(32 * arg2.length) + (32 * sub_f491f6c6[address(msg.sender)]) + 160] = 0
    mem[(32 * arg2.length) + (32 * sub_f491f6c6[address(msg.sender)]) + 192] = 0
    mem[var14001] = (32 * arg2.length) + (32 * sub_f491f6c6[address(msg.sender)]) + 160
    s = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * arg2.length) + (32 * sub_f491f6c6[address(msg.sender)]) + 160] = 0
        mem[(32 * arg2.length) + (32 * sub_f491f6c6[address(msg.sender)]) + 192] = 0
        mem[s + 32] = (32 * arg2.length) + (32 * sub_f491f6c6[address(msg.sender)]) + 160
        s = s + 32
        idx = idx - 1
        continue 
    _475 = mem[96]
    idx = 0
    s = 0
    t = 0
    while idx < _475:
        require idx < mem[96]
        _491 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(arg3)
        staticcall arg3.0x70a08231 with:
                gas gas_remaining wei
               args address(_491)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(_491):
            idx = idx + 1
            s = s
            t = t
            continue 
        if arg1 <= ext_call.return_data[0]:
            idx = idx + 1
            s = s
            t = t
            continue 
        require ext_code.size(address(_491))
        staticcall address(_491).cancelled() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            idx = idx + 1
            s = s
            t = t
            continue 
        require ext_code.size(address(_491))
        staticcall address(_491).0x51b9853e with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            s = s
            t = t
            continue 
        _582 = mem[64]
        mem[64] = mem[64] + 64
        mem[_582] = address(_491)
        mem[_582 + 32] = arg1 - ext_call.return_data[0]
        require t < mem[(32 * arg2.length) + 128]
        mem[(32 * t) + (32 * arg2.length) + 160] = _582
        idx = idx + 1
        s = s + arg1 - ext_call.return_data[0]
        t = t + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'NoMoneyLeft'
    _505 = mem[(32 * arg2.length) + 128]
    require mem[(32 * arg2.length) + 128] <= test266151307()
    _509 = mem[64]
    mem[mem[64]] = mem[(32 * arg2.length) + 128]
    if not _505:
        _510 = mem[(32 * arg2.length) + 128]
        require mem[(32 * arg2.length) + 128] <= test266151307()
        mem[mem[64] + (32 * _505) + 32] = mem[(32 * arg2.length) + 128]
        mem[64] = mem[64] + (32 * _505) + (32 * _510) + 64
        if not _510:
            u = 0
            while u < t:
                _631 = mem[64]
                mem[64] = mem[64] + 64
                mem[_631] = 0
                mem[_631 + 32] = 0
                require u < mem[(32 * arg2.length) + 128]
                _652 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
                require s
                if ext_call.return_data[0] * mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32] / s <= mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]:
                    require u < mem[(32 * arg2.length) + 128]
                    require u < mem[_509]
                    mem[(32 * u) + _509 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
                    require u < mem[_509 + (32 * _505) + 32]
                    mem[(32 * u) + _509 + (32 * _505) + 64] = ext_call.return_data[0] * _652 / s
                else:
                    _675 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
                    require u < mem[(32 * arg2.length) + 128]
                    require u < mem[_509]
                    mem[(32 * u) + _509 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
                    require u < mem[_509 + (32 * _505) + 32]
                    mem[(32 * u) + _509 + (32 * _505) + 64] = _675
                u = u + 1
                continue 
            _628 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[_509]
            _630 = mem[_509]
            mem[mem[64] + 96 len floor32(mem[_509])] = mem[_509 + 32 len floor32(mem[_509])]
            mem[mem[64] + 32] = (32 * _630) + 96
            mem[(32 * _630) + _628 + 96] = mem[_509 + (32 * _505) + 32]
            _725 = mem[_509 + (32 * _505) + 32]
            mem[(32 * _630) + _628 + 128 len floor32(mem[_509 + (32 * _505) + 32])] = mem[_509 + (32 * _505) + 64 len floor32(mem[_509 + (32 * _505) + 32])]
            return memory
              from mem[64]
               len (32 * _725) + (32 * _630) + _628 + -mem[64] + 128
        mem[_509 + (32 * _505) + 64 len 32 * _510] = call.data[calldata.size len 32 * _510]
        u = 0
        while u < t:
            _635 = mem[64]
            mem[64] = mem[64] + 64
            mem[_635] = 0
            mem[_635 + 32] = 0
            require u < mem[(32 * arg2.length) + 128]
            _657 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
            require s
            if ext_call.return_data[0] * mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32] / s <= mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]:
                require u < mem[(32 * arg2.length) + 128]
                require u < mem[_509]
                mem[(32 * u) + _509 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
                require u < mem[_509 + (32 * _505) + 32]
                mem[(32 * u) + _509 + (32 * _505) + 64] = ext_call.return_data[0] * _657 / s
            else:
                _679 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
                require u < mem[(32 * arg2.length) + 128]
                require u < mem[_509]
                mem[(32 * u) + _509 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
                require u < mem[_509 + (32 * _505) + 32]
                mem[(32 * u) + _509 + (32 * _505) + 64] = _679
            u = u + 1
            continue 
        _632 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[_509]
        _634 = mem[_509]
        mem[mem[64] + 96 len floor32(mem[_509])] = mem[_509 + 32 len floor32(mem[_509])]
        mem[mem[64] + 32] = (32 * _634) + 96
        mem[(32 * _634) + _632 + 96] = mem[_509 + (32 * _505) + 32]
        _728 = mem[_509 + (32 * _505) + 32]
        mem[(32 * _634) + _632 + 128 len floor32(mem[_509 + (32 * _505) + 32])] = mem[_509 + (32 * _505) + 64 len floor32(mem[_509 + (32 * _505) + 32])]
        return memory
          from mem[64]
           len (32 * _728) + (32 * _634) + _632 + -mem[64] + 128
    mem[mem[64] + 32 len 32 * _505] = call.data[calldata.size len 32 * _505]
    _512 = mem[(32 * arg2.length) + 128]
    require mem[(32 * arg2.length) + 128] <= test266151307()
    mem[mem[64] + (32 * _505) + 32] = mem[(32 * arg2.length) + 128]
    mem[64] = mem[64] + (32 * _505) + (32 * _512) + 64
    if not _512:
        u = 0
        while u < t:
            _639 = mem[64]
            mem[64] = mem[64] + 64
            mem[_639] = 0
            mem[_639 + 32] = 0
            require u < mem[(32 * arg2.length) + 128]
            _662 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
            require s
            if ext_call.return_data[0] * mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32] / s <= mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]:
                require u < mem[(32 * arg2.length) + 128]
                require u < mem[_509]
                mem[(32 * u) + _509 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
                require u < mem[_509 + (32 * _505) + 32]
                mem[(32 * u) + _509 + (32 * _505) + 64] = ext_call.return_data[0] * _662 / s
            else:
                _683 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
                require u < mem[(32 * arg2.length) + 128]
                require u < mem[_509]
                mem[(32 * u) + _509 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
                require u < mem[_509 + (32 * _505) + 32]
                mem[(32 * u) + _509 + (32 * _505) + 64] = _683
            u = u + 1
            continue 
        _636 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[_509]
        _638 = mem[_509]
        mem[mem[64] + 96 len floor32(mem[_509])] = mem[_509 + 32 len floor32(mem[_509])]
        mem[mem[64] + 32] = (32 * _638) + 96
        mem[(32 * _638) + _636 + 96] = mem[_509 + (32 * _505) + 32]
        _731 = mem[_509 + (32 * _505) + 32]
        mem[(32 * _638) + _636 + 128 len floor32(mem[_509 + (32 * _505) + 32])] = mem[_509 + (32 * _505) + 64 len floor32(mem[_509 + (32 * _505) + 32])]
        return memory
          from mem[64]
           len (32 * _731) + (32 * _638) + _636 + -mem[64] + 128
    mem[_509 + (32 * _505) + 64 len 32 * _512] = call.data[calldata.size len 32 * _512]
    u = 0
    while u < t:
        _643 = mem[64]
        mem[64] = mem[64] + 64
        mem[_643] = 0
        mem[_643 + 32] = 0
        require u < mem[(32 * arg2.length) + 128]
        _667 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
        require s
        if ext_call.return_data[0] * mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32] / s <= mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]:
            require u < mem[(32 * arg2.length) + 128]
            require u < mem[_509]
            mem[(32 * u) + _509 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
            require u < mem[_509 + (32 * _505) + 32]
            mem[(32 * u) + _509 + (32 * _505) + 64] = ext_call.return_data[0] * _667 / s
        else:
            _687 = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 32]
            require u < mem[(32 * arg2.length) + 128]
            require u < mem[_509]
            mem[(32 * u) + _509 + 32] = mem[mem[(32 * u) + (32 * arg2.length) + 160] + 12 len 20]
            require u < mem[_509 + (32 * _505) + 32]
            mem[(32 * u) + _509 + (32 * _505) + 64] = _687
        u = u + 1
        continue 
    _640 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[_509]
    _642 = mem[_509]
    mem[mem[64] + 96 len floor32(mem[_509])] = mem[_509 + 32 len floor32(mem[_509])]
    mem[mem[64] + 32] = (32 * _642) + 96
    mem[(32 * _642) + _640 + 96] = mem[_509 + (32 * _505) + 32]
    _734 = mem[_509 + (32 * _505) + 32]
    mem[(32 * _642) + _640 + 128 len floor32(mem[_509 + (32 * _505) + 32])] = mem[_509 + (32 * _505) + 64 len floor32(mem[_509 + (32 * _505) + 32])]
    return memory
      from mem[64]
       len (32 * _734) + (32 * _642) + _640 + -mem[64] + 128
}



}
