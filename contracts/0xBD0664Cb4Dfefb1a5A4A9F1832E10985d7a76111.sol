contract main {




// =====================  Runtime code  =====================


#
#  - swapExactETHForOurselves(address arg1)
#  - _fallback()
#
const getNativeTokenBalance = eth.balance(this.address)


address stor0;
array of struct stor1;
mapping of uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
address stor13;
address stor14;
uint8 stor15; offset 160
uint8 stor15; offset 168
uint8 stor15; offset 176
uint8 stor15; offset 184
uint128 stor15; offset 176
uint128 stor15; offset 168
address stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
address stor20;
address stor21;
array of address stor22;
array of address stor23;

function _onlyOwner() {
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
}

function lock() {
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    uint8(stor15.field_160) = 1
}

function getLastOrderStatus() {
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    return stor3, stor4, stor5
}

function withdrawNativeTokenBalance() {
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reset() {
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    stor13 = 0
    stor14 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor12 = 0
    stor21 = 0
    stor10 = 0
    stor11 = 0
    stor18 = 0
    stor17 = 0
    stor19 = 0
    stor20 = 0
    address(stor15.field_0) = 0
    uint8(stor15.field_160) = 1
    uint8(stor15.field_168) = 0
}

function getApproved(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    if not arg1:
        revert with 0, 'Invalid owner address'
    stor2[address(arg1)] = 1
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if address(stor1[idx].field_0) == arg1:
            return 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor1.length++
    address(stor1[stor1.length].field_0) = arg1
    return 1
}

function getPing() {
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    return stor6, 
           stor7,
           stor8,
           stor9,
           stor10,
           stor11,
           stor12,
           stor13,
           stor14,
           address(stor15.field_0),
           bool(uint8(stor15.field_160)),
           bool(uint8(stor15.field_168)),
           bool(uint8(stor15.field_176)),
           bool(uint8(stor15.field_184)),
           stor16,
           stor17,
           stor18,
           stor19,
           stor20,
           stor21
}

function isApproved(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
}

function sendTokensToSeller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function removeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    require arg1
    if stor0 != arg1:
        stor2[address(arg1)] = 0
        idx = 0
        while idx < stor1.length:
            mem[0] = 1
            if address(stor1[idx].field_0) != arg1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stor1.length < 1:
                revert with 0, 17
            if stor1.length - 1 >= stor1.length:
                revert with 0, 50
            if idx >= stor1.length:
                revert with 0, 50
            address(stor1[idx].field_0) = address(stor1[stor1.length].field_0)
            if not stor1.length:
                revert with 0, 49
            address(stor1[stor1.length].field_0) = 0
            stor1.length--
            return 1
    return 1
}

function approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            return 0
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function getOwnerList() {
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    mem[64] = (32 * stor1.length) + 128
    mem[96] = stor1.length
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        idx = 0
        s = 128
        t = (32 * stor1.length) + 192
        while idx < stor1.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = address(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = address(stor1[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 128] = 32
    mem[(32 * stor1.length) + 160] = stor1.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor1.length) + -mem[64] + 192
}

function sendFeesToCallers(uint256 arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    if arg1 <= 0:
        revert with 0, 'Not valid fee param'
    idx = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 0, 50
        if eth.balance(mem[(32 * idx) + 128]) < arg1:
            if idx >= arg2.length:
                revert with 0, 50
            if arg1 < eth.balance(mem[(32 * idx) + 128]):
                revert with 0, 17
            call mem[(32 * idx) + 140 len 20] with:
               value arg1 - eth.balance(mem[(32 * idx) + 128]) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function _getSellPathFromBuyPath(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 2 == arg1.length:
        mem[ceil32(32 * arg1.length) + 97] = 2
        mem[ceil32(32 * arg1.length) + 129 len 64] = call.data[calldata.size len 64]
        if 1 >= arg1.length:
            revert with 0, 50
        mem[ceil32(32 * arg1.length) + 129] = mem[172 len 20]
        if 0 >= arg1.length:
            revert with 0, 50
        mem[ceil32(32 * arg1.length) + 161] = mem[140 len 20]
        mem[ceil32(32 * arg1.length) + 193] = 32
        idx = 0
        s = ceil32(32 * arg1.length) + 129
        t = ceil32(32 * arg1.length) + 257
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return Array(len=2, data=mem[ceil32(32 * arg1.length) + 257 len 64])
    mem[ceil32(32 * arg1.length) + 97] = 3
    mem[ceil32(32 * arg1.length) + 129 len 96] = call.data[calldata.size len 96]
    if 2 >= arg1.length:
        revert with 0, 50
    mem[ceil32(32 * arg1.length) + 129] = mem[204 len 20]
    if 1 >= arg1.length:
        revert with 0, 50
    mem[ceil32(32 * arg1.length) + 161] = mem[172 len 20]
    if 0 >= arg1.length:
        revert with 0, 50
    mem[ceil32(32 * arg1.length) + 193] = mem[140 len 20]
    mem[ceil32(32 * arg1.length) + 225] = 32
    idx = 0
    s = ceil32(32 * arg1.length) + 129
    t = ceil32(32 * arg1.length) + 289
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=3, data=mem[ceil32(32 * arg1.length) + 289 len 96])
}

function hasLiquidity(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if 1 == chainid:
        require ext_code.size(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f)
        staticcall 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
    else:
        if 3 == chainid:
            require ext_code.size(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f)
            staticcall 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg1), arg2
        else:
            if 56 == chainid:
                require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
                staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), arg2
            else:
                if chainid != 43114:
                    return 0
                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] <= 0:
        return (ext_call.return_data[18 len 14] > 0)
    return (ext_call.return_data[50 len 14] > 0)
}

function getWallets() {
    mem[0] = msg.sender
    mem[32] = 2
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    if not uint8(stor15.field_176):
        return ''
    mem[64] = 128
    mem[96] = 0
    idx = 0
    s = 1
    t = 96
    while idx < stor11:
        if idx >= stor23.length:
            revert with 0, 50
        mem[0] = 23
        if s:
            _35 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 96
            mem[_35 + 32 len 40] = call.data[calldata.size len 40]
            s = 0
            while s < 20:
                if 19 < s:
                    revert with 0, 17
                if -s + 19 > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 8 * -s + 19:
                    if 8 * -s + 19 > 255:
                        revert with 0, 17
                    if not 1 << 8 * -s + 19:
                        revert with 0, 18
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * s >= mem[_35]:
                    revert with 0, 50
                mem[(2 * s) + _35 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                if (2 * s) + 1 >= mem[_35]:
                    revert with 0, 50
                mem[(2 * s) + _35 + 33 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 0
            t = _35
            continue 
        _34 = mem[64]
        mem[mem[64]] = 40
        mem[64] = mem[64] + 96
        mem[_34 + 32 len 40] = call.data[calldata.size len 40]
        u = 0
        while u < 20:
            if 19 < u:
                revert with 0, 17
            if -u + 19 > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 8 * -u + 19:
                if 8 * -u + 19 > 255:
                    revert with 0, 17
                if not 1 << 8 * -u + 19:
                    revert with 0, 18
            if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 * u >= mem[_34]:
                revert with 0, 50
            mem[(2 * u) + _34 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * u):
                revert with 0, 17
            if (2 * u) + 1 >= mem[_34]:
                revert with 0, 50
            mem[(2 * u) + _34 + 33 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if u == -1:
                revert with 0, 17
            u = u + 1
            continue 
        _44 = mem[64]
        _45 = mem[t]
        u = 0
        while u < _45:
            mem[u + _44 + 32] = mem[u + t + 32]
            u = u + 32
            continue 
        mem[_44 + _45 + 32] = ','
        if ceil32(_45) <= _45:
            _66 = mem[_34]
            t = 0
            while t < _66:
                mem[t + _44 + _45 + 33] = mem[t + _34 + 32]
                t = t + 32
                continue 
            if ceil32(_66) <= _66:
                _76 = mem[64]
                mem[mem[64]] = _66 + _44 + _45 + -mem[64] + 1
                mem[64] = _66 + _44 + _45 + 33
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = _76
                continue 
            mem[_44 + _45 + _66 + 33] = 0
            _78 = mem[64]
            mem[mem[64]] = _66 + _44 + _45 + -mem[64] + 1
            mem[64] = _66 + _44 + _45 + 33
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = _78
            continue 
        _67 = mem[_34]
        t = 0
        while t < _67:
            mem[t + _44 + _45 + 33] = mem[t + _34 + 32]
            t = t + 32
            continue 
        if ceil32(_67) <= _67:
            _77 = mem[64]
            mem[mem[64]] = _67 + _44 + _45 + -mem[64] + 1
            mem[64] = _67 + _44 + _45 + 33
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = _77
            continue 
        mem[_44 + _45 + _67 + 33] = 0
        _79 = mem[64]
        mem[mem[64]] = _67 + _44 + _45 + -mem[64] + 1
        mem[64] = _67 + _44 + _45 + 33
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s
        t = _79
        continue 
    _30 = mem[64]
    mem[mem[64]] = 32
    _31 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_31)] = mem[t + 32 len ceil32(_31)]
    if ceil32(_31) <= _31:
        return 32, mem[mem[64] + 32 len ceil32(_31) + 32]
    mem[mem[64] + _31 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_31) + _30 + -mem[64] + 64
}

function getCustomPath() {
    mem[0] = msg.sender
    mem[32] = 2
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    if not uint8(stor15.field_184):
        return ''
    mem[64] = 128
    mem[96] = 0
    idx = 0
    s = 1
    t = 96
    while idx < stor16:
        if idx >= stor22.length:
            revert with 0, 50
        mem[0] = 22
        if s:
            _35 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 96
            mem[_35 + 32 len 40] = call.data[calldata.size len 40]
            s = 0
            while s < 20:
                if 19 < s:
                    revert with 0, 17
                if -s + 19 > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 8 * -s + 19:
                    if 8 * -s + 19 > 255:
                        revert with 0, 17
                    if not 1 << 8 * -s + 19:
                        revert with 0, 18
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * s >= mem[_35]:
                    revert with 0, 50
                mem[(2 * s) + _35 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * s):
                    revert with 0, 17
                if (2 * s) + 1 >= mem[_35]:
                    revert with 0, 50
                mem[(2 * s) + _35 + 33 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 0
            t = _35
            continue 
        _34 = mem[64]
        mem[mem[64]] = 40
        mem[64] = mem[64] + 96
        mem[_34 + 32 len 40] = call.data[calldata.size len 40]
        u = 0
        while u < 20:
            if 19 < u:
                revert with 0, 17
            if -u + 19 > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 8 * -u + 19:
                if 8 * -u + 19 > 255:
                    revert with 0, 17
                if not 1 << 8 * -u + 19:
                    revert with 0, 18
            if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 * u >= mem[_34]:
                revert with 0, 50
            mem[(2 * u) + _34 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * u):
                revert with 0, 17
            if (2 * u) + 1 >= mem[_34]:
                revert with 0, 50
            mem[(2 * u) + _34 + 33 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if u == -1:
                revert with 0, 17
            u = u + 1
            continue 
        _44 = mem[64]
        _45 = mem[t]
        u = 0
        while u < _45:
            mem[u + _44 + 32] = mem[u + t + 32]
            u = u + 32
            continue 
        mem[_44 + _45 + 32] = ','
        if ceil32(_45) <= _45:
            _66 = mem[_34]
            t = 0
            while t < _66:
                mem[t + _44 + _45 + 33] = mem[t + _34 + 32]
                t = t + 32
                continue 
            if ceil32(_66) <= _66:
                _76 = mem[64]
                mem[mem[64]] = _66 + _44 + _45 + -mem[64] + 1
                mem[64] = _66 + _44 + _45 + 33
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                t = _76
                continue 
            mem[_44 + _45 + _66 + 33] = 0
            _78 = mem[64]
            mem[mem[64]] = _66 + _44 + _45 + -mem[64] + 1
            mem[64] = _66 + _44 + _45 + 33
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = _78
            continue 
        _67 = mem[_34]
        t = 0
        while t < _67:
            mem[t + _44 + _45 + 33] = mem[t + _34 + 32]
            t = t + 32
            continue 
        if ceil32(_67) <= _67:
            _77 = mem[64]
            mem[mem[64]] = _67 + _44 + _45 + -mem[64] + 1
            mem[64] = _67 + _44 + _45 + 33
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = _77
            continue 
        mem[_44 + _45 + _67 + 33] = 0
        _79 = mem[64]
        mem[mem[64]] = _67 + _44 + _45 + -mem[64] + 1
        mem[64] = _67 + _44 + _45 + 33
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s
        t = _79
        continue 
    _30 = mem[64]
    mem[mem[64]] = 32
    _31 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_31)] = mem[t + 32 len ceil32(_31)]
    if ceil32(_31) <= _31:
        return 32, mem[mem[64] + 32 len ceil32(_31) + 32]
    mem[mem[64] + _31 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_31) + _30 + -mem[64] + 64
}

function ping(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, address arg8, address arg9, address arg10, bool arg11, bool arg12, bool arg13, bool arg14, uint256 arg15, uint256 arg16, uint256 arg17, uint256 arg18, address arg19, address arg20, address[] arg21, address[] arg22) {
    require calldata.size - 4 >= 704
    require calldata.size - 4 >= 640
    require arg21 <= test266151307()
    require arg21 + 35 < calldata.size
    require arg21.length <= test266151307()
    require arg21 + (32 * arg21.length) + 36 <= calldata.size
    require arg22 <= test266151307()
    require arg22 + 35 < calldata.size
    require arg22.length <= test266151307()
    require arg22 + (32 * arg22.length) + 36 <= calldata.size
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    require arg8 == arg8
    if not arg8:
        revert with 0, 'Invalid ETH'
    require arg9 == arg9
    if not arg9:
        revert with 0, 'Invalid token'
    if arg1 != 1:
        if arg1 != 2:
            revert with 0, 'Invalid buy_method'
    if arg2 <= 0:
        revert with 0, 'Invalid value per tx'
    require arg10 == arg10
    if not arg10:
        revert with 0, 'Invalid router address'
    if arg5 <= 0:
        revert with 0, 'Invalid number of tx per call'
    if arg6 <= 0:
        revert with 0, 'Invalid number of total tx'
    require arg8 == arg8
    stor13 = arg8
    require arg9 == arg9
    stor14 = arg9
    stor6 = arg1
    stor7 = arg2
    if 1 == arg1:
        stor8 = arg3
        stor9 = 0
    else:
        if arg4 <= 0:
            revert with 0, 'Invalid tokens amount'
        stor9 = arg4
        stor8 = 0
    require arg7 == arg7
    stor12 = arg7
    require arg10 == arg10
    stor21 = arg10
    require arg10 == arg10
    address(stor15.field_0) = arg10
    stor10 = arg5
    stor11 = arg6
    require arg12 == arg12
    Mask(88, 0, stor15.field_168) = Mask(88, 0, arg12)
    require arg13 == arg13
    Mask(80, 0, stor15.field_176) = Mask(80, 0, arg13)
    if not uint8(arg13) and True:
        stor16 = arg15
        if not arg15:
            uint8(stor15.field_184) = 0
        else:
            uint8(stor15.field_184) = 1
            if arg15 > test266151307():
                revert with 0, 65
            if arg15:
                mem[128 len 32 * arg15] = call.data[calldata.size len 32 * arg15]
            stor22.length = arg15
            if not arg15:
                idx = 0
                while stor22.length > idx:
                    uint256(stor22[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg15) + 128 > idx:
                    address(stor22[s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg15) + 31) >> 5
                while stor22.length > idx:
                    uint256(stor22[idx]) = 0
                    idx = idx + 1
                    continue 
            idx = 0
            while idx < arg21.length:
                require cd[((32 * idx) + arg21 + 36)] == address(cd[((32 * idx) + arg21 + 36)])
                if idx >= stor22.length:
                    revert with 0, 50
                mem[0] = 22
                address(stor22[idx]) = address(cd[((32 * idx) + arg21 + 36)])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        if arg22.length < stor11:
            revert with 0, 'Invalid wallets'
        if stor11 > test266151307():
            revert with 0, 65
        if stor11:
            mem[128 len 32 * stor11] = call.data[calldata.size len 32 * stor11]
        stor23.length = stor11
        if not stor11:
            idx = 0
            while stor23.length > idx:
                uint256(stor23[idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * stor11) + 128 > idx:
                address(stor23[s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * stor11) + 31) >> 5
            while stor23.length > idx:
                uint256(stor23[idx]) = 0
                idx = idx + 1
                continue 
        idx = 0
        while idx < arg22.length:
            require cd[((32 * idx) + arg22 + 36)] == address(cd[((32 * idx) + arg22 + 36)])
            if idx >= stor23.length:
                revert with 0, 50
            mem[0] = 23
            address(stor23[idx]) = address(cd[((32 * idx) + arg22 + 36)])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        stor16 = arg15
        if not arg15:
            uint8(stor15.field_184) = 0
        else:
            uint8(stor15.field_184) = 1
            if arg15 > test266151307():
                revert with 0, 65
            if not arg15:
                stor22.length = arg15
                if not arg15:
                    idx = 0
                    while stor22.length > idx:
                        uint256(stor22[idx]) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * stor11) + 160
                    while (32 * stor11) + (32 * arg15) + 160 > idx:
                        address(stor22[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg15) + 31) >> 5
                    while stor22.length > idx:
                        uint256(stor22[idx]) = 0
                        idx = idx + 1
                        continue 
            else:
                mem[(32 * stor11) + 160 len 32 * arg15] = call.data[calldata.size len 32 * arg15]
                stor22.length = arg15
                if not arg15:
                    s = sha3(22)
                    while sha3(22) + stor22.length > arg22.length:
                        stor[arg22.length] = 0
                        s = arg22.length + 1
                        continue 
                else:
                    s = 0
                    idx = (32 * stor11) + 160
                    while (32 * stor11) + (32 * arg15) + 160 > idx:
                        address(stor22[s]) = mem[idx + 12 len 20]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * arg15) + 31) >> 5
                    while stor22.length > idx:
                        uint256(stor22[idx]) = 0
                        idx = idx + 1
                        continue 
            idx = 0
            while idx < arg21.length:
                require cd[((32 * idx) + arg21 + 36)] == address(cd[((32 * idx) + arg21 + 36)])
                if idx >= stor22.length:
                    revert with 0, 50
                mem[0] = 22
                address(stor22[idx]) = address(cd[((32 * idx) + arg21 + 36)])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    stor17 = 0
    stor18 = 0
    stor19 = 0
    uint8(stor15.field_160) = 0
    stor20 = 0
    return 1
}

function transferContractTokens(address arg1, address arg2, uint256 arg3, bool arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    mem[0] = msg.sender
    mem[32] = 2
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    if not arg1:
        revert with 0, 'Invalid token'
    if not arg2:
        revert with 0, 'Invalid recipient'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if not arg4:
        if ext_call.return_data[0]:
            if arg3 > 0:
                if arg3:
                    s = arg3
                    idx = mem[96]
                    while idx:
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = s
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg2), s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _180 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_180] == bool(mem[_180])
                        if not mem[_180]:
                            if not arg4:
                                _188 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_188] = 0
                                mem[_188 + 32] = 0
                                mem[_188 + 64] = 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                if bool(stor2[msg.sender]) != 1:
                                    revert with 0, 'Oh no no'
                                _212 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_212] = stor3
                                mem[_212 + 32] = stor4
                                mem[_212 + 64] = stor5
                            else:
                                if stor5 == -1:
                                    revert with 0, 17
                                stor5++
                                if not arg4:
                                    _201 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_201] = 0
                                    mem[_201 + 32] = 0
                                    mem[_201 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _260 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_260] = stor3
                                    mem[_260 + 32] = stor4
                                    mem[_260 + 64] = stor5
                                else:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                                    _245 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_245] = 0
                                    mem[_245 + 32] = 0
                                    mem[_245 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _304 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_304] = stor3
                                    mem[_304 + 32] = stor4
                                    mem[_304 + 64] = stor5
                        else:
                            if not arg4:
                                _192 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_192] = 0
                                mem[_192 + 32] = 0
                                mem[_192 + 64] = 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                if bool(stor2[msg.sender]) != 1:
                                    revert with 0, 'Oh no no'
                                _230 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_230] = stor3
                                mem[_230 + 32] = stor4
                                mem[_230 + 64] = stor5
                            else:
                                if stor3 == -1:
                                    revert with 0, 17
                                stor3++
                                if not arg4:
                                    _215 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_215] = 0
                                    mem[_215 + 32] = 0
                                    mem[_215 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _278 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_278] = stor3
                                    mem[_278 + 32] = stor4
                                    mem[_278 + 64] = stor5
                                else:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                                    _263 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_263] = 0
                                    mem[_263 + 32] = 0
                                    mem[_263 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _317 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_317] = stor3
                                    mem[_317 + 32] = stor4
                                    mem[_317 + 64] = stor5
                        if stor5 > 0:
                        if idx < s:
                            revert with 0, 17
                        if idx - s >= s:
                            s = s
                            idx = idx - s
                            continue 
                        s = idx - s
                        idx = idx - s
                        continue 
            else:
                if ext_call.return_data[0]:
                    s = mem[96]
                    idx = mem[96]
                    while idx:
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = s
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg2), s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _181 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_181] == bool(mem[_181])
                        if not mem[_181]:
                            if not arg4:
                                _189 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_189] = 0
                                mem[_189 + 32] = 0
                                mem[_189 + 64] = 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                if bool(stor2[msg.sender]) != 1:
                                    revert with 0, 'Oh no no'
                                _216 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_216] = stor3
                                mem[_216 + 32] = stor4
                                mem[_216 + 64] = stor5
                            else:
                                if stor5 == -1:
                                    revert with 0, 17
                                stor5++
                                if not arg4:
                                    _204 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_204] = 0
                                    mem[_204 + 32] = 0
                                    mem[_204 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _264 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_264] = stor3
                                    mem[_264 + 32] = stor4
                                    mem[_264 + 64] = stor5
                                else:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                                    _249 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_249] = 0
                                    mem[_249 + 32] = 0
                                    mem[_249 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _307 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_307] = stor3
                                    mem[_307 + 32] = stor4
                                    mem[_307 + 64] = stor5
                        else:
                            if not arg4:
                                _193 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_193] = 0
                                mem[_193 + 32] = 0
                                mem[_193 + 64] = 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                if bool(stor2[msg.sender]) != 1:
                                    revert with 0, 'Oh no no'
                                _234 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_234] = stor3
                                mem[_234 + 32] = stor4
                                mem[_234 + 64] = stor5
                            else:
                                if stor3 == -1:
                                    revert with 0, 17
                                stor3++
                                if not arg4:
                                    _219 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_219] = 0
                                    mem[_219 + 32] = 0
                                    mem[_219 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _282 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_282] = stor3
                                    mem[_282 + 32] = stor4
                                    mem[_282 + 64] = stor5
                                else:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                                    _267 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_267] = 0
                                    mem[_267 + 32] = 0
                                    mem[_267 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _320 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_320] = stor3
                                    mem[_320 + 32] = stor4
                                    mem[_320 + 64] = stor5
                        if stor5 > 0:
                        if idx < s:
                            revert with 0, 17
                        if idx - s >= s:
                            s = s
                            idx = idx - s
                            continue 
                        s = idx - s
                        idx = idx - s
                        continue 
    else:
        stor3 = 0
        stor4 = 0
        stor5 = 0
        if ext_call.return_data[0]:
            if arg3 > 0:
                if arg3:
                    s = arg3
                    idx = mem[96]
                    while idx:
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = s
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg2), s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _182 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_182] == bool(mem[_182])
                        if not mem[_182]:
                            if not arg4:
                                _190 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_190] = 0
                                mem[_190 + 32] = 0
                                mem[_190 + 64] = 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                if bool(stor2[msg.sender]) != 1:
                                    revert with 0, 'Oh no no'
                                _220 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_220] = stor3
                                mem[_220 + 32] = stor4
                                mem[_220 + 64] = stor5
                            else:
                                if stor5 == -1:
                                    revert with 0, 17
                                stor5++
                                if not arg4:
                                    _207 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_207] = 0
                                    mem[_207 + 32] = 0
                                    mem[_207 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _268 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_268] = stor3
                                    mem[_268 + 32] = stor4
                                    mem[_268 + 64] = stor5
                                else:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                                    _253 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_253] = 0
                                    mem[_253 + 32] = 0
                                    mem[_253 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _310 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_310] = stor3
                                    mem[_310 + 32] = stor4
                                    mem[_310 + 64] = stor5
                        else:
                            if not arg4:
                                _194 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_194] = 0
                                mem[_194 + 32] = 0
                                mem[_194 + 64] = 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                if bool(stor2[msg.sender]) != 1:
                                    revert with 0, 'Oh no no'
                                _238 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_238] = stor3
                                mem[_238 + 32] = stor4
                                mem[_238 + 64] = stor5
                            else:
                                if stor3 == -1:
                                    revert with 0, 17
                                stor3++
                                if not arg4:
                                    _223 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_223] = 0
                                    mem[_223 + 32] = 0
                                    mem[_223 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _286 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_286] = stor3
                                    mem[_286 + 32] = stor4
                                    mem[_286 + 64] = stor5
                                else:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                                    _271 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_271] = 0
                                    mem[_271 + 32] = 0
                                    mem[_271 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _323 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_323] = stor3
                                    mem[_323 + 32] = stor4
                                    mem[_323 + 64] = stor5
                        if stor5 > 0:
                        if idx < s:
                            revert with 0, 17
                        if idx - s >= s:
                            s = s
                            idx = idx - s
                            continue 
                        s = idx - s
                        idx = idx - s
                        continue 
            else:
                if ext_call.return_data[0]:
                    s = mem[96]
                    idx = mem[96]
                    while idx:
                        mem[mem[64] + 4] = arg2
                        mem[mem[64] + 36] = s
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg2), s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _183 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_183] == bool(mem[_183])
                        if not mem[_183]:
                            if not arg4:
                                _191 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_191] = 0
                                mem[_191 + 32] = 0
                                mem[_191 + 64] = 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                if bool(stor2[msg.sender]) != 1:
                                    revert with 0, 'Oh no no'
                                _224 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_224] = stor3
                                mem[_224 + 32] = stor4
                                mem[_224 + 64] = stor5
                            else:
                                if stor5 == -1:
                                    revert with 0, 17
                                stor5++
                                if not arg4:
                                    _210 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_210] = 0
                                    mem[_210 + 32] = 0
                                    mem[_210 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _272 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_272] = stor3
                                    mem[_272 + 32] = stor4
                                    mem[_272 + 64] = stor5
                                else:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                                    _257 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_257] = 0
                                    mem[_257 + 32] = 0
                                    mem[_257 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _313 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_313] = stor3
                                    mem[_313 + 32] = stor4
                                    mem[_313 + 64] = stor5
                        else:
                            if not arg4:
                                _195 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_195] = 0
                                mem[_195 + 32] = 0
                                mem[_195 + 64] = 0
                                mem[0] = msg.sender
                                mem[32] = 2
                                if bool(stor2[msg.sender]) != 1:
                                    revert with 0, 'Oh no no'
                                _242 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_242] = stor3
                                mem[_242 + 32] = stor4
                                mem[_242 + 64] = stor5
                            else:
                                if stor3 == -1:
                                    revert with 0, 17
                                stor3++
                                if not arg4:
                                    _227 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_227] = 0
                                    mem[_227 + 32] = 0
                                    mem[_227 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _290 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_290] = stor3
                                    mem[_290 + 32] = stor4
                                    mem[_290 + 64] = stor5
                                else:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                                    _275 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_275] = 0
                                    mem[_275 + 32] = 0
                                    mem[_275 + 64] = 0
                                    mem[0] = msg.sender
                                    mem[32] = 2
                                    if bool(stor2[msg.sender]) != 1:
                                        revert with 0, 'Oh no no'
                                    _326 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_326] = stor3
                                    mem[_326 + 32] = stor4
                                    mem[_326 + 64] = stor5
                        if stor5 > 0:
                        if idx < s:
                            revert with 0, 17
                        if idx - s >= s:
                            s = s
                            idx = idx - s
                            continue 
                        s = idx - s
                        idx = idx - s
                        continue 
}

function sellContractTokens(address arg1, address arg2, address[] arg3, uint256 arg4, uint256 arg5, bool arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg6 == arg6
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    if not arg1:
        revert with 0, 'Invalid token'
    if not arg2:
        revert with 0, 'Invalid router'
    if arg3.length < 2:
        revert with 0, 'Invalid path'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = arg3.length
    mem[ceil32(return_data.size) + 128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if not arg6:
        if ext_call.return_data[0]:
            if bool(stor2[msg.sender]) != 1:
                revert with 0, 'Oh no no'
            if bool(stor2[msg.sender]) != 1:
                revert with 0, 'Oh no no'
            mem[0] = msg.sender
            mem[32] = 2
            if bool(stor2[msg.sender]) != 1:
                revert with 0, 'Oh no no'
            mem[ceil32(return_data.size) + (32 * arg3.length) + 132] = this.address
            mem[ceil32(return_data.size) + (32 * arg3.length) + 164] = arg2
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, arg2
            mem[ceil32(return_data.size) + (32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + (32 * arg3.length) + 128
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if arg4:
                    if not arg4:
                        revert with 0, 18
                    if 1 > !(ext_call.return_data[0] / arg4):
                        revert with 0, 17
                    idx = 0
                    s = 0
                    t = ext_call.return_data[0]
                    while idx < (ext_call.return_data[0] / arg4) + 1:
                        if 24 * 3600 > !block.timestamp:
                            revert with 0, 17
                        if t <= arg4:
                            _132 = mem[64]
                            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = t
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _140 = mem[ceil32(return_data.size) + 96]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                            idx = 0
                            u = ceil32(return_data.size) + 128
                            v = mem[64] + 196
                            while idx < _140:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_132 + 100] = this.address
                            mem[_132 + 132] = block.timestamp + (24 * 3600)
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _132 + (32 * _140) + -mem[64] + 192]
                            if not ext_call.success:
                                if arg6:
                                    if stor5 == -1:
                                        revert with 0, 17
                                    stor5++
                                    if arg6:
                                        if stor4 == -1:
                                            revert with 0, 17
                                        stor4++
                            else:
                                if t > t:
                                    if t < t:
                                        revert with 0, 17
                                if arg6:
                                    if stor3 == -1:
                                        revert with 0, 17
                                    stor3++
                                    if arg6:
                                        if stor4 == -1:
                                            revert with 0, 17
                                        stor4++
                            if s == -1:
                                revert with 0, 17
                        _131 = mem[64]
                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg4
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _139 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                        u = 0
                        v = ceil32(return_data.size) + 128
                        w = mem[64] + 196
                        while u < _139:
                            mem[w] = mem[v + 12 len 20]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_131 + 100] = this.address
                        mem[_131 + 132] = block.timestamp + (24 * 3600)
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _131 + (32 * _139) + -mem[64] + 192]
                        if not ext_call.success:
                            if arg6:
                                if stor5 == -1:
                                    revert with 0, 17
                                stor5++
                                if arg6:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                            if s == -1:
                                revert with 0, 17
                        if t <= arg4:
                            if arg6:
                                if stor3 == -1:
                                    revert with 0, 17
                                stor3++
                                if arg6:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                            if s == -1:
                                revert with 0, 17
                        if t < arg4:
                            revert with 0, 17
                        if arg6:
                            if stor3 == -1:
                                revert with 0, 17
                            stor3++
                            if arg6:
                                if stor4 == -1:
                                    revert with 0, 17
                                stor4++
                        if s == -1:
                            revert with 0, 17
                        if not t - arg4:
                        if arg5 > 0:
                            if s + 1 >= arg5:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        t = t - arg4
                        continue 
                else:
                    if 24 * 3600 > !block.timestamp:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 132] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 164] = 0
                    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 196] = 160
                    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 292] = arg3.length
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = (2 * ceil32(return_data.size)) + (32 * arg3.length) + 324
                    while idx < arg3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 228] = this.address
                    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 260] = block.timestamp + (24 * 3600)
                    require ext_code.size(arg2)
                    call arg2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 132 len (96 * arg3.length) + 192]
                    if not ext_call.success:
                        if arg6:
                            if stor5 == -1:
                                revert with 0, 17
                            stor5++
                            if arg6:
                                if stor4 == -1:
                                    revert with 0, 17
                                stor4++
                    else:
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                        if arg6:
                            if stor3 == -1:
                                revert with 0, 17
                            stor3++
                            if arg6:
                                if stor4 == -1:
                                    revert with 0, 17
                                stor4++
            else:
                mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 132] = arg2
                mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 164] = -1
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), -1
                mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 128] = ext_call.return_data[0]
                if ext_call.success:
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * arg3.length) + 128
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if arg4:
                        if not arg4:
                            revert with 0, 18
                        if 1 > !(ext_call.return_data[0] / arg4):
                            revert with 0, 17
                        idx = 0
                        s = 0
                        t = ext_call.return_data[0]
                        while idx < (ext_call.return_data[0] / arg4) + 1:
                            if 24 * 3600 > !block.timestamp:
                                revert with 0, 17
                            if t <= arg4:
                                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = t
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _138 = mem[ceil32(return_data.size) + 96]
                                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                                idx = 0
                                u = ceil32(return_data.size) + 128
                                v = mem[64] + 196
                                while idx < _138:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(arg2)
                                call arg2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args t, 0, 160, address(this.address), block.timestamp + (24 * 3600), mem[mem[64] + 164 len (32 * _138) + 32]
                                if not ext_call.success:
                                    if arg6:
                                        if stor5 == -1:
                                            revert with 0, 17
                                        stor5++
                                        if arg6:
                                            if stor4 == -1:
                                                revert with 0, 17
                                            stor4++
                                else:
                                    if t > t:
                                        if t < t:
                                            revert with 0, 17
                                    if arg6:
                                        if stor3 == -1:
                                            revert with 0, 17
                                        stor3++
                                        if arg6:
                                            if stor4 == -1:
                                                revert with 0, 17
                                            stor4++
                                if s == -1:
                                    revert with 0, 17
                            _129 = mem[64]
                            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg4
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _137 = mem[ceil32(return_data.size) + 96]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                            u = 0
                            v = ceil32(return_data.size) + 128
                            w = mem[64] + 196
                            while u < _137:
                                mem[w] = mem[v + 12 len 20]
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_129 + 100] = this.address
                            mem[_129 + 132] = block.timestamp + (24 * 3600)
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _129 + (32 * _137) + -mem[64] + 192]
                            if not ext_call.success:
                                if arg6:
                                    if stor5 == -1:
                                        revert with 0, 17
                                    stor5++
                                    if arg6:
                                        if stor4 == -1:
                                            revert with 0, 17
                                        stor4++
                                if s == -1:
                                    revert with 0, 17
                            if t <= arg4:
                                if arg6:
                                    if stor3 == -1:
                                        revert with 0, 17
                                    stor3++
                                    if arg6:
                                        if stor4 == -1:
                                            revert with 0, 17
                                        stor4++
                                if s == -1:
                                    revert with 0, 17
                            if t < arg4:
                                revert with 0, 17
                            if arg6:
                                if stor3 == -1:
                                    revert with 0, 17
                                stor3++
                                if arg6:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                            if s == -1:
                                revert with 0, 17
                            if not t - arg4:
                            if arg5 > 0:
                                if s + 1 >= arg5:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            t = t - arg4
                            continue 
                    else:
                        if 24 * 3600 > !block.timestamp:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 132] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 164] = 0
                        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 196] = 160
                        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 292] = arg3.length
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (4 * ceil32(return_data.size)) + (32 * arg3.length) + 324
                        while idx < arg3.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 228] = this.address
                        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 260] = block.timestamp + (24 * 3600)
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 132 len (96 * arg3.length) + 192]
                        if not ext_call.success:
                            if arg6:
                                if stor5 == -1:
                                    revert with 0, 17
                                stor5++
                                if arg6:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                        else:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                            if arg6:
                                if stor3 == -1:
                                    revert with 0, 17
                                stor3++
                                if arg6:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
    else:
        stor3 = 0
        stor4 = 0
        stor5 = 0
        if ext_call.return_data[0]:
            if bool(stor2[msg.sender]) != 1:
                revert with 0, 'Oh no no'
            if bool(stor2[msg.sender]) != 1:
                revert with 0, 'Oh no no'
            mem[0] = msg.sender
            mem[32] = 2
            if bool(stor2[msg.sender]) != 1:
                revert with 0, 'Oh no no'
            mem[ceil32(return_data.size) + (32 * arg3.length) + 132] = this.address
            mem[ceil32(return_data.size) + (32 * arg3.length) + 164] = arg2
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, arg2
            mem[ceil32(return_data.size) + (32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + (32 * arg3.length) + 128
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if arg4:
                    if not arg4:
                        revert with 0, 18
                    if 1 > !(ext_call.return_data[0] / arg4):
                        revert with 0, 17
                    idx = 0
                    s = 0
                    t = ext_call.return_data[0]
                    while idx < (ext_call.return_data[0] / arg4) + 1:
                        if 24 * 3600 > !block.timestamp:
                            revert with 0, 17
                        if t <= arg4:
                            _136 = mem[64]
                            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = t
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _144 = mem[ceil32(return_data.size) + 96]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                            idx = 0
                            u = ceil32(return_data.size) + 128
                            v = mem[64] + 196
                            while idx < _144:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[_136 + 100] = this.address
                            mem[_136 + 132] = block.timestamp + (24 * 3600)
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _136 + (32 * _144) + -mem[64] + 192]
                            if not ext_call.success:
                                if arg6:
                                    if stor5 == -1:
                                        revert with 0, 17
                                    stor5++
                                    if arg6:
                                        if stor4 == -1:
                                            revert with 0, 17
                                        stor4++
                            else:
                                if t > t:
                                    if t < t:
                                        revert with 0, 17
                                if arg6:
                                    if stor3 == -1:
                                        revert with 0, 17
                                    stor3++
                                    if arg6:
                                        if stor4 == -1:
                                            revert with 0, 17
                                        stor4++
                            if s == -1:
                                revert with 0, 17
                        _135 = mem[64]
                        mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg4
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        _143 = mem[ceil32(return_data.size) + 96]
                        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                        u = 0
                        v = ceil32(return_data.size) + 128
                        w = mem[64] + 196
                        while u < _143:
                            mem[w] = mem[v + 12 len 20]
                            u = u + 1
                            v = v + 32
                            w = w + 32
                            continue 
                        mem[_135 + 100] = this.address
                        mem[_135 + 132] = block.timestamp + (24 * 3600)
                        require ext_code.size(arg2)
                        call arg2.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _135 + (32 * _143) + -mem[64] + 192]
                        if not ext_call.success:
                            if arg6:
                                if stor5 == -1:
                                    revert with 0, 17
                                stor5++
                                if arg6:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                            if s == -1:
                                revert with 0, 17
                        if t <= arg4:
                            if arg6:
                                if stor3 == -1:
                                    revert with 0, 17
                                stor3++
                                if arg6:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                            if s == -1:
                                revert with 0, 17
                        if t < arg4:
                            revert with 0, 17
                        if arg6:
                            if stor3 == -1:
                                revert with 0, 17
                            stor3++
                            if arg6:
                                if stor4 == -1:
                                    revert with 0, 17
                                stor4++
                        if s == -1:
                            revert with 0, 17
                        if not t - arg4:
                        if arg5 > 0:
                            if s + 1 >= arg5:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + 1
                        t = t - arg4
                        continue 
                else:
                    if 24 * 3600 > !block.timestamp:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 132] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 164] = 0
                    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 196] = 160
                    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 292] = arg3.length
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = (2 * ceil32(return_data.size)) + (32 * arg3.length) + 324
                    while idx < arg3.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 228] = this.address
                    mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 260] = block.timestamp + (24 * 3600)
                    require ext_code.size(arg2)
                    call arg2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 132 len (96 * arg3.length) + 192]
                    if not ext_call.success:
                        if arg6:
                            if stor5 == -1:
                                revert with 0, 17
                            stor5++
                            if arg6:
                                if stor4 == -1:
                                    revert with 0, 17
                                stor4++
                    else:
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                        if arg6:
                            if stor3 == -1:
                                revert with 0, 17
                            stor3++
                            if arg6:
                                if stor4 == -1:
                                    revert with 0, 17
                                stor4++
            else:
                mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 132] = arg2
                mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 164] = -1
                require ext_code.size(arg1)
                call arg1.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), -1
                mem[(2 * ceil32(return_data.size)) + (32 * arg3.length) + 128] = ext_call.return_data[0]
                if ext_call.success:
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * arg3.length) + 128
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if arg4:
                        if not arg4:
                            revert with 0, 18
                        if 1 > !(ext_call.return_data[0] / arg4):
                            revert with 0, 17
                        idx = 0
                        s = 0
                        t = ext_call.return_data[0]
                        while idx < (ext_call.return_data[0] / arg4) + 1:
                            if 24 * 3600 > !block.timestamp:
                                revert with 0, 17
                            if t <= arg4:
                                _134 = mem[64]
                                mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = t
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = 160
                                _142 = mem[ceil32(return_data.size) + 96]
                                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                                idx = 0
                                u = ceil32(return_data.size) + 128
                                v = mem[64] + 196
                                while idx < _142:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[_134 + 100] = this.address
                                mem[_134 + 132] = block.timestamp + (24 * 3600)
                                require ext_code.size(arg2)
                                call arg2.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _134 + (32 * _142) + -mem[64] + 192]
                                if not ext_call.success:
                                    if arg6:
                                        if stor5 == -1:
                                            revert with 0, 17
                                        stor5++
                                        if arg6:
                                            if stor4 == -1:
                                                revert with 0, 17
                                            stor4++
                                else:
                                    if t > t:
                                        if t < t:
                                            revert with 0, 17
                                    if arg6:
                                        if stor3 == -1:
                                            revert with 0, 17
                                        stor3++
                                        if arg6:
                                            if stor4 == -1:
                                                revert with 0, 17
                                            stor4++
                                if s == -1:
                                    revert with 0, 17
                            _133 = mem[64]
                            mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg4
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _141 = mem[ceil32(return_data.size) + 96]
                            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                            u = 0
                            v = ceil32(return_data.size) + 128
                            w = mem[64] + 196
                            while u < _141:
                                mem[w] = mem[v + 12 len 20]
                                u = u + 1
                                v = v + 32
                                w = w + 32
                                continue 
                            mem[_133 + 100] = this.address
                            mem[_133 + 132] = block.timestamp + (24 * 3600)
                            require ext_code.size(arg2)
                            call arg2.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _133 + (32 * _141) + -mem[64] + 192]
                            if not ext_call.success:
                                if arg6:
                                    if stor5 == -1:
                                        revert with 0, 17
                                    stor5++
                                    if arg6:
                                        if stor4 == -1:
                                            revert with 0, 17
                                        stor4++
                                if s == -1:
                                    revert with 0, 17
                            if t <= arg4:
                                if arg6:
                                    if stor3 == -1:
                                        revert with 0, 17
                                    stor3++
                                    if arg6:
                                        if stor4 == -1:
                                            revert with 0, 17
                                        stor4++
                                if s == -1:
                                    revert with 0, 17
                            if t < arg4:
                                revert with 0, 17
                            if arg6:
                                if stor3 == -1:
                                    revert with 0, 17
                                stor3++
                                if arg6:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                            if s == -1:
                                revert with 0, 17
                            if not t - arg4:
                            if arg5 > 0:
                                if s + 1 >= arg5:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + 1
                            t = t - arg4
                            continue 
                    else:
                        if 24 * 3600 > !block.timestamp:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 132] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 164] = 0
                        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 196] = 160
                        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 292] = arg3.length
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = (4 * ceil32(return_data.size)) + (32 * arg3.length) + 324
                        while idx < arg3.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 228] = this.address
                        mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 260] = block.timestamp + (24 * 3600)
                        require ext_code.size(arg2)
                        call arg2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + (32 * arg3.length) + 132 len (96 * arg3.length) + 192]
                        if not ext_call.success:
                            if arg6:
                                if stor5 == -1:
                                    revert with 0, 17
                                stor5++
                                if arg6:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
                        else:
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                            if arg6:
                                if stor3 == -1:
                                    revert with 0, 17
                                stor3++
                                if arg6:
                                    if stor4 == -1:
                                        revert with 0, 17
                                    stor4++
}

function transferOrSellContractTokens(address arg1, address[] arg2, uint256 arg3, address arg4, address[] arg5, bool arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg6 == arg6
    mem[0] = msg.sender
    mem[32] = 2
    if bool(stor2[msg.sender]) != 1:
        revert with 0, 'Oh no no'
    if not arg1:
        revert with 0, 'Invalid token'
    if not arg2.length:
        revert with 0, 'Invalid recipient'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if not arg6:
        if not arg4:
            if ext_call.return_data[0]:
                if arg3:
                    if not arg3:
                        revert with 0, 18
                    if 1 > !(ext_call.return_data[0] / arg3):
                        revert with 0, 17
                    if arg3:
                        if (ext_call.return_data[0] / arg3) + 1 > arg2.length:
                            idx = 0
                            s = arg3
                            t = mem[96]
                            while uint8(idx) < (ext_call.return_data[0] / arg3) + 1:
                                if uint8(idx) >= arg2.length:
                                    revert with 0, 50
                                require cd[((32 * uint8(idx)) + arg2 + 36)] == address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                if address(cd[((32 * uint8(idx)) + arg2 + 36)]):
                                    mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[mem[64] + 36] = s
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(cd[((32 * uint8(idx)) + arg2 + 36)]), s
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _132 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_132] == bool(mem[_132])
                                    if not mem[_132]:
                                        if arg6:
                                            if stor5 == -1:
                                                revert with 0, 17
                                            stor5++
                                    else:
                                        if arg6:
                                            if stor3 == -1:
                                                revert with 0, 17
                                            stor3++
                                        if t < s:
                                            revert with 0, 17
                                        if arg6:
                                            if stor4 == -1:
                                                revert with 0, 17
                                            stor4++
                                        if t - s >= s:
                                            if t - s:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                s = s
                                                t = t - s
                                                continue 
                                        else:
                                            if t - s:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                s = t - s
                                                t = t - s
                                                continue 
                                        ('iszero', ('add', ('var', 2), ('mul', -1, ('var', 1))))
                        else:
                            idx = 0
                            s = arg3
                            t = mem[96]
                            while uint8(idx) < arg2.length:
                                require cd[((32 * uint8(idx)) + arg2 + 36)] == address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                if address(cd[((32 * uint8(idx)) + arg2 + 36)]):
                                    mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[mem[64] + 36] = s
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(cd[((32 * uint8(idx)) + arg2 + 36)]), s
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _133 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_133] == bool(mem[_133])
                                    if not mem[_133]:
                                        if arg6:
                                            if stor5 == -1:
                                                revert with 0, 17
                                            stor5++
                                    else:
                                        if arg6:
                                            if stor3 == -1:
                                                revert with 0, 17
                                            stor3++
                                        if t < s:
                                            revert with 0, 17
                                        if arg6:
                                            if stor4 == -1:
                                                revert with 0, 17
                                            stor4++
                                        if t - s >= s:
                                            if t - s:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                s = s
                                                t = t - s
                                                continue 
                                        else:
                                            if t - s:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                s = t - s
                                                t = t - s
                                                continue 
                                        ('iszero', ('add', ('var', 2), ('mul', -1, ('var', 1))))
                else:
                    if ext_call.return_data[0]:
                        if 1 > arg2.length:
                            if 0 >= arg2.length:
                                revert with 0, 50
                            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                            if address(cd[(arg2 + 36)]):
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[(arg2 + 36)]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    if arg6:
                                        if stor5 == -1:
                                            revert with 0, 17
                                        stor5++
                                else:
                                    if arg6:
                                        if stor3 == -1:
                                            revert with 0, 17
                                        stor3++
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if arg6:
                                        if stor4 == -1:
                                            revert with 0, 17
                                        stor4++
                        else:
                            if 0 < arg2.length:
                                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                                if address(cd[(arg2 + 36)]):
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(cd[(arg2 + 36)]), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        if arg6:
                                            if stor5 == -1:
                                                revert with 0, 17
                                            stor5++
                                    else:
                                        if arg6:
                                            if stor3 == -1:
                                                revert with 0, 17
                                            stor3++
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if arg6:
                                            if stor4 == -1:
                                                revert with 0, 17
                                            stor4++
        else:
            if arg5.length <= 1:
                if ext_call.return_data[0]:
                    if arg3:
                        if not arg3:
                            revert with 0, 18
                        if 1 > !(ext_call.return_data[0] / arg3):
                            revert with 0, 17
                        if arg3:
                            if (ext_call.return_data[0] / arg3) + 1 > arg2.length:
                                idx = 0
                                s = arg3
                                t = mem[96]
                                while uint8(idx) < (ext_call.return_data[0] / arg3) + 1:
                                    if uint8(idx) >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * uint8(idx)) + arg2 + 36)] == address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    if address(cd[((32 * uint8(idx)) + arg2 + 36)]):
                                        mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                        mem[mem[64] + 36] = s
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[((32 * uint8(idx)) + arg2 + 36)]), s
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _134 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_134] == bool(mem[_134])
                                        if not mem[_134]:
                                            if arg6:
                                                if stor5 == -1:
                                                    revert with 0, 17
                                                stor5++
                                        else:
                                            if arg6:
                                                if stor3 == -1:
                                                    revert with 0, 17
                                                stor3++
                                            if t < s:
                                                revert with 0, 17
                                            if arg6:
                                                if stor4 == -1:
                                                    revert with 0, 17
                                                stor4++
                                            if t - s >= s:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = s
                                                    t = t - s
                                                    continue 
                                            else:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = t - s
                                                    t = t - s
                                                    continue 
                                            ('iszero', ('add', ('var', 2), ('mul', -1, ('var', 1))))
                            else:
                                idx = 0
                                s = arg3
                                t = mem[96]
                                while uint8(idx) < arg2.length:
                                    require cd[((32 * uint8(idx)) + arg2 + 36)] == address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    if address(cd[((32 * uint8(idx)) + arg2 + 36)]):
                                        mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                        mem[mem[64] + 36] = s
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[((32 * uint8(idx)) + arg2 + 36)]), s
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _135 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_135] == bool(mem[_135])
                                        if not mem[_135]:
                                            if arg6:
                                                if stor5 == -1:
                                                    revert with 0, 17
                                                stor5++
                                        else:
                                            if arg6:
                                                if stor3 == -1:
                                                    revert with 0, 17
                                                stor3++
                                            if t < s:
                                                revert with 0, 17
                                            if arg6:
                                                if stor4 == -1:
                                                    revert with 0, 17
                                                stor4++
                                            if t - s >= s:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = s
                                                    t = t - s
                                                    continue 
                                            else:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = t - s
                                                    t = t - s
                                                    continue 
                                            ('iszero', ('add', ('var', 2), ('mul', -1, ('var', 1))))
                    else:
                        if ext_call.return_data[0]:
                            if 1 > arg2.length:
                                if 0 >= arg2.length:
                                    revert with 0, 50
                                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                                if address(cd[(arg2 + 36)]):
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(cd[(arg2 + 36)]), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        if arg6:
                                            if stor5 == -1:
                                                revert with 0, 17
                                            stor5++
                                    else:
                                        if arg6:
                                            if stor3 == -1:
                                                revert with 0, 17
                                            stor3++
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if arg6:
                                            if stor4 == -1:
                                                revert with 0, 17
                                            stor4++
                            else:
                                if 0 < arg2.length:
                                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                                    if address(cd[(arg2 + 36)]):
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[(arg2 + 36)]), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            if arg6:
                                                if stor5 == -1:
                                                    revert with 0, 17
                                                stor5++
                                        else:
                                            if arg6:
                                                if stor3 == -1:
                                                    revert with 0, 17
                                                stor3++
                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                revert with 0, 17
                                            if arg6:
                                                if stor4 == -1:
                                                    revert with 0, 17
                                                stor4++
            else:
                if ext_call.return_data[0]:
                    if arg3:
                        if not arg3:
                            revert with 0, 18
                        if 1 > !(ext_call.return_data[0] / arg3):
                            revert with 0, 17
                        if arg3:
                            if (ext_call.return_data[0] / arg3) + 1 > arg2.length:
                                idx = 0
                                s = arg3
                                t = mem[96]
                                while uint8(idx) < (ext_call.return_data[0] / arg3) + 1:
                                    if uint8(idx) >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * uint8(idx)) + arg2 + 36)] == address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    if address(cd[((32 * uint8(idx)) + arg2 + 36)]):
                                        mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                        mem[mem[64] + 36] = s
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[((32 * uint8(idx)) + arg2 + 36)]), s
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _136 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_136] == bool(mem[_136])
                                        if not mem[_136]:
                                            if arg6:
                                                if stor5 == -1:
                                                    revert with 0, 17
                                                stor5++
                                        else:
                                            if arg6:
                                                if stor3 == -1:
                                                    revert with 0, 17
                                                stor3++
                                            if t < s:
                                                revert with 0, 17
                                            if arg6:
                                                if stor4 == -1:
                                                    revert with 0, 17
                                                stor4++
                                            if t - s >= s:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = s
                                                    t = t - s
                                                    continue 
                                            else:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = t - s
                                                    t = t - s
                                                    continue 
                                            ('iszero', ('add', ('var', 2), ('mul', -1, ('var', 1))))
                            else:
                                idx = 0
                                s = arg3
                                t = mem[96]
                                while uint8(idx) < arg2.length:
                                    require cd[((32 * uint8(idx)) + arg2 + 36)] == address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    if address(cd[((32 * uint8(idx)) + arg2 + 36)]):
                                        mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                        mem[mem[64] + 36] = s
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[((32 * uint8(idx)) + arg2 + 36)]), s
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _137 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_137] == bool(mem[_137])
                                        if not mem[_137]:
                                            if arg6:
                                                if stor5 == -1:
                                                    revert with 0, 17
                                                stor5++
                                        else:
                                            if arg6:
                                                if stor3 == -1:
                                                    revert with 0, 17
                                                stor3++
                                            if t < s:
                                                revert with 0, 17
                                            if arg6:
                                                if stor4 == -1:
                                                    revert with 0, 17
                                                stor4++
                                            if t - s >= s:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = s
                                                    t = t - s
                                                    continue 
                                            else:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = t - s
                                                    t = t - s
                                                    continue 
                                            ('iszero', ('add', ('var', 2), ('mul', -1, ('var', 1))))
                    else:
                        if ext_call.return_data[0]:
                            if 1 > arg2.length:
                                if 0 >= arg2.length:
                                    revert with 0, 50
                                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                                if address(cd[(arg2 + 36)]):
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(cd[(arg2 + 36)]), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        if arg6:
                                            if stor5 == -1:
                                                revert with 0, 17
                                            stor5++
                                    else:
                                        if arg6:
                                            if stor3 == -1:
                                                revert with 0, 17
                                            stor3++
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if arg6:
                                            if stor4 == -1:
                                                revert with 0, 17
                                            stor4++
                            else:
                                if 0 < arg2.length:
                                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                                    if address(cd[(arg2 + 36)]):
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[(arg2 + 36)]), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            if arg6:
                                                if stor5 == -1:
                                                    revert with 0, 17
                                                stor5++
                                        else:
                                            if arg6:
                                                if stor3 == -1:
                                                    revert with 0, 17
                                                stor3++
                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                revert with 0, 17
                                            if arg6:
                                                if stor4 == -1:
                                                    revert with 0, 17
                                                stor4++
    else:
        stor3 = 0
        stor4 = 0
        stor5 = 0
        if not arg4:
            if ext_call.return_data[0]:
                if arg3:
                    if not arg3:
                        revert with 0, 18
                    if 1 > !(ext_call.return_data[0] / arg3):
                        revert with 0, 17
                    if arg3:
                        if (ext_call.return_data[0] / arg3) + 1 > arg2.length:
                            idx = 0
                            s = arg3
                            t = mem[96]
                            while uint8(idx) < (ext_call.return_data[0] / arg3) + 1:
                                if uint8(idx) >= arg2.length:
                                    revert with 0, 50
                                require cd[((32 * uint8(idx)) + arg2 + 36)] == address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                if address(cd[((32 * uint8(idx)) + arg2 + 36)]):
                                    mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[mem[64] + 36] = s
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(cd[((32 * uint8(idx)) + arg2 + 36)]), s
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _138 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_138] == bool(mem[_138])
                                    if not mem[_138]:
                                        if arg6:
                                            if stor5 == -1:
                                                revert with 0, 17
                                            stor5++
                                    else:
                                        if arg6:
                                            if stor3 == -1:
                                                revert with 0, 17
                                            stor3++
                                        if t < s:
                                            revert with 0, 17
                                        if arg6:
                                            if stor4 == -1:
                                                revert with 0, 17
                                            stor4++
                                        if t - s >= s:
                                            if t - s:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                s = s
                                                t = t - s
                                                continue 
                                        else:
                                            if t - s:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                s = t - s
                                                t = t - s
                                                continue 
                                        ('iszero', ('add', ('var', 2), ('mul', -1, ('var', 1))))
                        else:
                            idx = 0
                            s = arg3
                            t = mem[96]
                            while uint8(idx) < arg2.length:
                                require cd[((32 * uint8(idx)) + arg2 + 36)] == address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                if address(cd[((32 * uint8(idx)) + arg2 + 36)]):
                                    mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[mem[64] + 36] = s
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(cd[((32 * uint8(idx)) + arg2 + 36)]), s
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _139 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_139] == bool(mem[_139])
                                    if not mem[_139]:
                                        if arg6:
                                            if stor5 == -1:
                                                revert with 0, 17
                                            stor5++
                                    else:
                                        if arg6:
                                            if stor3 == -1:
                                                revert with 0, 17
                                            stor3++
                                        if t < s:
                                            revert with 0, 17
                                        if arg6:
                                            if stor4 == -1:
                                                revert with 0, 17
                                            stor4++
                                        if t - s >= s:
                                            if t - s:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                s = s
                                                t = t - s
                                                continue 
                                        else:
                                            if t - s:
                                                if uint8(idx) == 255:
                                                    revert with 0, 17
                                                idx = uint8(idx) + 1
                                                s = t - s
                                                t = t - s
                                                continue 
                                        ('iszero', ('add', ('var', 2), ('mul', -1, ('var', 1))))
                else:
                    if ext_call.return_data[0]:
                        if 1 > arg2.length:
                            if 0 >= arg2.length:
                                revert with 0, 50
                            require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                            if address(cd[(arg2 + 36)]):
                                require ext_code.size(arg1)
                                call arg1.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[(arg2 + 36)]), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    if arg6:
                                        if stor5 == -1:
                                            revert with 0, 17
                                        stor5++
                                else:
                                    if arg6:
                                        if stor3 == -1:
                                            revert with 0, 17
                                        stor3++
                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 17
                                    if arg6:
                                        if stor4 == -1:
                                            revert with 0, 17
                                        stor4++
                        else:
                            if 0 < arg2.length:
                                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                                if address(cd[(arg2 + 36)]):
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(cd[(arg2 + 36)]), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        if arg6:
                                            if stor5 == -1:
                                                revert with 0, 17
                                            stor5++
                                    else:
                                        if arg6:
                                            if stor3 == -1:
                                                revert with 0, 17
                                            stor3++
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if arg6:
                                            if stor4 == -1:
                                                revert with 0, 17
                                            stor4++
        else:
            if arg5.length <= 1:
                if ext_call.return_data[0]:
                    if arg3:
                        if not arg3:
                            revert with 0, 18
                        if 1 > !(ext_call.return_data[0] / arg3):
                            revert with 0, 17
                        if arg3:
                            if (ext_call.return_data[0] / arg3) + 1 > arg2.length:
                                idx = 0
                                s = arg3
                                t = mem[96]
                                while uint8(idx) < (ext_call.return_data[0] / arg3) + 1:
                                    if uint8(idx) >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * uint8(idx)) + arg2 + 36)] == address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    if address(cd[((32 * uint8(idx)) + arg2 + 36)]):
                                        mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                        mem[mem[64] + 36] = s
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[((32 * uint8(idx)) + arg2 + 36)]), s
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _140 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_140] == bool(mem[_140])
                                        if not mem[_140]:
                                            if arg6:
                                                if stor5 == -1:
                                                    revert with 0, 17
                                                stor5++
                                        else:
                                            if arg6:
                                                if stor3 == -1:
                                                    revert with 0, 17
                                                stor3++
                                            if t < s:
                                                revert with 0, 17
                                            if arg6:
                                                if stor4 == -1:
                                                    revert with 0, 17
                                                stor4++
                                            if t - s >= s:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = s
                                                    t = t - s
                                                    continue 
                                            else:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = t - s
                                                    t = t - s
                                                    continue 
                                            ('iszero', ('add', ('var', 2), ('mul', -1, ('var', 1))))
                            else:
                                idx = 0
                                s = arg3
                                t = mem[96]
                                while uint8(idx) < arg2.length:
                                    require cd[((32 * uint8(idx)) + arg2 + 36)] == address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    if address(cd[((32 * uint8(idx)) + arg2 + 36)]):
                                        mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                        mem[mem[64] + 36] = s
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[((32 * uint8(idx)) + arg2 + 36)]), s
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _141 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_141] == bool(mem[_141])
                                        if not mem[_141]:
                                            if arg6:
                                                if stor5 == -1:
                                                    revert with 0, 17
                                                stor5++
                                        else:
                                            if arg6:
                                                if stor3 == -1:
                                                    revert with 0, 17
                                                stor3++
                                            if t < s:
                                                revert with 0, 17
                                            if arg6:
                                                if stor4 == -1:
                                                    revert with 0, 17
                                                stor4++
                                            if t - s >= s:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = s
                                                    t = t - s
                                                    continue 
                                            else:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = t - s
                                                    t = t - s
                                                    continue 
                                            ('iszero', ('add', ('var', 2), ('mul', -1, ('var', 1))))
                    else:
                        if ext_call.return_data[0]:
                            if 1 > arg2.length:
                                if 0 >= arg2.length:
                                    revert with 0, 50
                                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                                if address(cd[(arg2 + 36)]):
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(cd[(arg2 + 36)]), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        if arg6:
                                            if stor5 == -1:
                                                revert with 0, 17
                                            stor5++
                                    else:
                                        if arg6:
                                            if stor3 == -1:
                                                revert with 0, 17
                                            stor3++
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if arg6:
                                            if stor4 == -1:
                                                revert with 0, 17
                                            stor4++
                            else:
                                if 0 < arg2.length:
                                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                                    if address(cd[(arg2 + 36)]):
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[(arg2 + 36)]), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            if arg6:
                                                if stor5 == -1:
                                                    revert with 0, 17
                                                stor5++
                                        else:
                                            if arg6:
                                                if stor3 == -1:
                                                    revert with 0, 17
                                                stor3++
                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                revert with 0, 17
                                            if arg6:
                                                if stor4 == -1:
                                                    revert with 0, 17
                                                stor4++
            else:
                if ext_call.return_data[0]:
                    if arg3:
                        if not arg3:
                            revert with 0, 18
                        if 1 > !(ext_call.return_data[0] / arg3):
                            revert with 0, 17
                        if arg3:
                            if (ext_call.return_data[0] / arg3) + 1 > arg2.length:
                                idx = 0
                                s = arg3
                                t = mem[96]
                                while uint8(idx) < (ext_call.return_data[0] / arg3) + 1:
                                    if uint8(idx) >= arg2.length:
                                        revert with 0, 50
                                    require cd[((32 * uint8(idx)) + arg2 + 36)] == address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    if address(cd[((32 * uint8(idx)) + arg2 + 36)]):
                                        mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                        mem[mem[64] + 36] = s
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[((32 * uint8(idx)) + arg2 + 36)]), s
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _142 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_142] == bool(mem[_142])
                                        if not mem[_142]:
                                            if arg6:
                                                if stor5 == -1:
                                                    revert with 0, 17
                                                stor5++
                                        else:
                                            if arg6:
                                                if stor3 == -1:
                                                    revert with 0, 17
                                                stor3++
                                            if t < s:
                                                revert with 0, 17
                                            if arg6:
                                                if stor4 == -1:
                                                    revert with 0, 17
                                                stor4++
                                            if t - s >= s:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = s
                                                    t = t - s
                                                    continue 
                                            else:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = t - s
                                                    t = t - s
                                                    continue 
                                            ('iszero', ('add', ('var', 2), ('mul', -1, ('var', 1))))
                            else:
                                idx = 0
                                s = arg3
                                t = mem[96]
                                while uint8(idx) < arg2.length:
                                    require cd[((32 * uint8(idx)) + arg2 + 36)] == address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    if address(cd[((32 * uint8(idx)) + arg2 + 36)]):
                                        mem[mem[64] + 4] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
                                        mem[mem[64] + 36] = s
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[((32 * uint8(idx)) + arg2 + 36)]), s
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _143 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_143] == bool(mem[_143])
                                        if not mem[_143]:
                                            if arg6:
                                                if stor5 == -1:
                                                    revert with 0, 17
                                                stor5++
                                        else:
                                            if arg6:
                                                if stor3 == -1:
                                                    revert with 0, 17
                                                stor3++
                                            if t < s:
                                                revert with 0, 17
                                            if arg6:
                                                if stor4 == -1:
                                                    revert with 0, 17
                                                stor4++
                                            if t - s >= s:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = s
                                                    t = t - s
                                                    continue 
                                            else:
                                                if t - s:
                                                    if uint8(idx) == 255:
                                                        revert with 0, 17
                                                    idx = uint8(idx) + 1
                                                    s = t - s
                                                    t = t - s
                                                    continue 
                                            ('iszero', ('add', ('var', 2), ('mul', -1, ('var', 1))))
                    else:
                        if ext_call.return_data[0]:
                            if 1 > arg2.length:
                                if 0 >= arg2.length:
                                    revert with 0, 50
                                require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                                if address(cd[(arg2 + 36)]):
                                    require ext_code.size(arg1)
                                    call arg1.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(cd[(arg2 + 36)]), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        if arg6:
                                            if stor5 == -1:
                                                revert with 0, 17
                                            stor5++
                                    else:
                                        if arg6:
                                            if stor3 == -1:
                                                revert with 0, 17
                                            stor3++
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 17
                                        if arg6:
                                            if stor4 == -1:
                                                revert with 0, 17
                                            stor4++
                            else:
                                if 0 < arg2.length:
                                    require cd[(arg2 + 36)] == address(cd[(arg2 + 36)])
                                    if address(cd[(arg2 + 36)]):
                                        require ext_code.size(arg1)
                                        call arg1.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[(arg2 + 36)]), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            if arg6:
                                                if stor5 == -1:
                                                    revert with 0, 17
                                                stor5++
                                        else:
                                            if arg6:
                                                if stor3 == -1:
                                                    revert with 0, 17
                                                stor3++
                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                revert with 0, 17
                                            if arg6:
                                                if stor4 == -1:
                                                    revert with 0, 17
                                                stor4++
}



}
