contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
address owner;
address UNISWAP_ROUTER_ADDRESS;
address wBNBAddress;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;

function UNISWAP_ROUTER_ADDRESS() {
    return UNISWAP_ROUTER_ADDRESS
}

function owner() {
    return owner
}

function wBNB() {
    return wBNBAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setNativeToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    wBNBAddress = arg1
    return 1
}

function setSandwichRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    UNISWAP_ROUTER_ADDRESS = arg1
    return 1
}

function withdrawMoney() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_84b2b2d6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_3a0d5742(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    stor5 = address(arg2)
    stor4 = address(arg1)
    if wBNBAddress == address(arg2):
        mem[96] = 2
        mem[128] = address(arg2)
        mem[160] = address(arg1)
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = msg.value
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
        staticcall UNISWAP_ROUTER_ADDRESS.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args msg.value, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _1403 = mem[192 len 4], Mask(224, 32, msg.value) >> 32
        require mem[192 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 223 < return_data.size + 192
        _1405 = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
        require return_data.size >= _1403 + (32 * _1405) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _1405] = mem[_1403 + 224 len 32 * _1405]
        if wBNBAddress == stor5:
            _2789 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_2789]:
                revert with 0, 50
            mem[_2789 + 32] = stor5
            if 1 >= mem[_2789]:
                revert with 0, 50
            mem[_2789 + 64] = stor4
            mem[_2789 + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[_2789 + 100] = 0
            mem[_2789 + 132] = 128
            mem[_2789 + 228] = mem[_2789]
            idx = 0
            s = _2789 + 32
            t = _2789 + 260
            while idx < mem[_2789]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_2789 + 164] = this.address
            mem[_2789 + 196] = arg3
            require ext_code.size(UNISWAP_ROUTER_ADDRESS)
            call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
               value msg.value wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2789 + (32 * mem[_2789]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4163 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4167 = mem[_4163]
            require mem[_4163] <= test266151307()
            require _4163 + mem[_4163] + 31 < _4163 + return_data.size
            _4171 = mem[_4163 + mem[_4163]]
            if mem[_4163 + mem[_4163]] > test266151307():
                revert with 0, 65
            if _4163 + ceil32(return_data.size) + ceil32(32 * mem[_4163 + mem[_4163]]) + 1 > test266151307() or ceil32(32 * mem[_4163 + mem[_4163]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _4163 + ceil32(return_data.size) + ceil32(32 * mem[_4163 + mem[_4163]]) + 1
            mem[_4163 + ceil32(return_data.size)] = _4171
            require return_data.size >= _4167 + (32 * _4171) + 32
            mem[_4163 + ceil32(return_data.size) + 32 len 32 * _4171] = mem[_4163 + _4167 + 32 len 32 * _4171]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor4)
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5515 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5519 = mem[_5515]
            if wBNBAddress != stor5:
                if 2 >= mem[ceil32(return_data.size) + 192]:
                    revert with 0, 50
                if 2 >= mem[ceil32(return_data.size) + 192]:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 288] < mem[_5515]:
                    revert with 0, 17
                if mem[ceil32(return_data.size) + 288] - mem[_5515] and 100 > -1 / mem[ceil32(return_data.size) + 288] - mem[_5515]:
                    revert with 0, 17
                if not mem[ceil32(return_data.size) + 288]:
                    revert with 0, 18
                stor6 = (100 * mem[ceil32(return_data.size) + 288]) - (100 * mem[_5515]) / mem[ceil32(return_data.size) + 288]
                if wBNBAddress == stor5:
                    _5581 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_5581]:
                        revert with 0, 50
                    mem[_5581 + 32] = stor4
                    if 1 >= mem[_5581]:
                        revert with 0, 50
                    mem[_5581 + 64] = stor5
                    mem[_5581 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5581 + 100] = _5519
                    mem[_5581 + 132] = 64
                    mem[_5581 + 164] = mem[_5581]
                    idx = 0
                    s = _5581 + 32
                    t = _5581 + 196
                    while idx < mem[_5581]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5581 + (32 * mem[_5581]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6869 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6885 = mem[_6869]
                    require mem[_6869] <= test266151307()
                    require _6869 + mem[_6869] + 31 < _6869 + return_data.size
                    _6901 = mem[_6869 + mem[_6869]]
                    if mem[_6869 + mem[_6869]] > test266151307():
                        revert with 0, 65
                    if _6869 + ceil32(return_data.size) + ceil32(32 * mem[_6869 + mem[_6869]]) + 1 > test266151307() or ceil32(32 * mem[_6869 + mem[_6869]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6869 + ceil32(return_data.size) + ceil32(32 * mem[_6869 + mem[_6869]]) + 1
                    mem[_6869 + ceil32(return_data.size)] = _6901
                    require return_data.size >= _6885 + (32 * _6901) + 32
                    mem[_6869 + ceil32(return_data.size) + 32 len 32 * _6901] = mem[_6869 + _6885 + 32 len 32 * _6901]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8069 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8069] == bool(mem[_8069])
                    if wBNBAddress == stor5:
                        _8142 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8142]:
                            revert with 0, 50
                        mem[_8142 + 32] = stor4
                        if 1 >= mem[_8142]:
                            revert with 0, 50
                        mem[_8142 + 64] = stor5
                        mem[_8142 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8142 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8142 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8142 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8142 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8142 + ceil32(return_data.size) + 132] = 0
                        mem[_8142 + ceil32(return_data.size) + 164] = 160
                        mem[_8142 + ceil32(return_data.size) + 260] = mem[_8142]
                        idx = 0
                        s = _8142 + 32
                        t = _8142 + ceil32(return_data.size) + 292
                        while idx < mem[_8142]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8142 + ceil32(return_data.size) + 196] = this.address
                        mem[_8142 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8142 + ceil32(return_data.size) + (32 * mem[_8142]) + -mem[64] + 288]
                    else:
                        _8140 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8140]:
                            revert with 0, 50
                        mem[_8140 + 32] = stor4
                        if 1 >= mem[_8140]:
                            revert with 0, 50
                        mem[_8140 + 64] = stor5
                        if 2 >= mem[_8140]:
                            revert with 0, 50
                        mem[_8140 + 96] = wBNBAddress
                        mem[_8140 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8140 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8140 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8140 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8140 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8140 + ceil32(return_data.size) + 164] = 0
                        mem[_8140 + ceil32(return_data.size) + 196] = 160
                        mem[_8140 + ceil32(return_data.size) + 292] = mem[_8140]
                        idx = 0
                        s = _8140 + 32
                        t = _8140 + ceil32(return_data.size) + 324
                        while idx < mem[_8140]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8140 + ceil32(return_data.size) + 228] = this.address
                        mem[_8140 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8140 + ceil32(return_data.size) + (32 * mem[_8140]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6869 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6869 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6869 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6869 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6869 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6869 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6869 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6869 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6869 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6869 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6869 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6869 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6869 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6869 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6869 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6869 + ceil32(return_data.size) + 64]
                else:
                    _5564 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_5564]:
                        revert with 0, 50
                    mem[_5564 + 32] = stor4
                    if 1 >= mem[_5564]:
                        revert with 0, 50
                    mem[_5564 + 64] = stor5
                    if 2 >= mem[_5564]:
                        revert with 0, 50
                    mem[_5564 + 96] = wBNBAddress
                    mem[_5564 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5564 + 132] = _5519
                    mem[_5564 + 164] = 64
                    mem[_5564 + 196] = mem[_5564]
                    idx = 0
                    s = _5564 + 32
                    t = _5564 + 228
                    while idx < mem[_5564]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5564 + (32 * mem[_5564]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6868 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6884 = mem[_6868]
                    require mem[_6868] <= test266151307()
                    require _6868 + mem[_6868] + 31 < _6868 + return_data.size
                    _6900 = mem[_6868 + mem[_6868]]
                    if mem[_6868 + mem[_6868]] > test266151307():
                        revert with 0, 65
                    if _6868 + ceil32(return_data.size) + ceil32(32 * mem[_6868 + mem[_6868]]) + 1 > test266151307() or ceil32(32 * mem[_6868 + mem[_6868]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6868 + ceil32(return_data.size) + ceil32(32 * mem[_6868 + mem[_6868]]) + 1
                    mem[_6868 + ceil32(return_data.size)] = _6900
                    require return_data.size >= _6884 + (32 * _6900) + 32
                    mem[_6868 + ceil32(return_data.size) + 32 len 32 * _6900] = mem[_6868 + _6884 + 32 len 32 * _6900]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8068 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8068] == bool(mem[_8068])
                    if wBNBAddress == stor5:
                        _8138 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8138]:
                            revert with 0, 50
                        mem[_8138 + 32] = stor4
                        if 1 >= mem[_8138]:
                            revert with 0, 50
                        mem[_8138 + 64] = stor5
                        mem[_8138 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8138 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8138 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8138 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8138 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8138 + ceil32(return_data.size) + 132] = 0
                        mem[_8138 + ceil32(return_data.size) + 164] = 160
                        mem[_8138 + ceil32(return_data.size) + 260] = mem[_8138]
                        idx = 0
                        s = _8138 + 32
                        t = _8138 + ceil32(return_data.size) + 292
                        while idx < mem[_8138]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8138 + ceil32(return_data.size) + 196] = this.address
                        mem[_8138 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8138 + ceil32(return_data.size) + (32 * mem[_8138]) + -mem[64] + 288]
                    else:
                        _8136 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8136]:
                            revert with 0, 50
                        mem[_8136 + 32] = stor4
                        if 1 >= mem[_8136]:
                            revert with 0, 50
                        mem[_8136 + 64] = stor5
                        if 2 >= mem[_8136]:
                            revert with 0, 50
                        mem[_8136 + 96] = wBNBAddress
                        mem[_8136 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8136 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8136 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8136 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8136 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8136 + ceil32(return_data.size) + 164] = 0
                        mem[_8136 + ceil32(return_data.size) + 196] = 160
                        mem[_8136 + ceil32(return_data.size) + 292] = mem[_8136]
                        idx = 0
                        s = _8136 + 32
                        t = _8136 + ceil32(return_data.size) + 324
                        while idx < mem[_8136]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8136 + ceil32(return_data.size) + 228] = this.address
                        mem[_8136 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8136 + ceil32(return_data.size) + (32 * mem[_8136]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6868 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6868 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6868 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6868 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6868 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6868 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6868 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6868 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6868 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6868 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6868 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6868 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6868 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6868 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6868 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6868 + ceil32(return_data.size) + 64]
            else:
                if 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 0, 50
                if 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 256] < mem[_5515]:
                    revert with 0, 17
                if mem[ceil32(return_data.size) + 256] - mem[_5515] and 100 > -1 / mem[ceil32(return_data.size) + 256] - mem[_5515]:
                    revert with 0, 17
                if not mem[ceil32(return_data.size) + 256]:
                    revert with 0, 18
                stor6 = (100 * mem[ceil32(return_data.size) + 256]) - (100 * mem[_5515]) / mem[ceil32(return_data.size) + 256]
                if wBNBAddress == stor5:
                    _5583 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_5583]:
                        revert with 0, 50
                    mem[_5583 + 32] = stor4
                    if 1 >= mem[_5583]:
                        revert with 0, 50
                    mem[_5583 + 64] = stor5
                    mem[_5583 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5583 + 100] = _5519
                    mem[_5583 + 132] = 64
                    mem[_5583 + 164] = mem[_5583]
                    idx = 0
                    s = _5583 + 32
                    t = _5583 + 196
                    while idx < mem[_5583]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5583 + (32 * mem[_5583]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6871 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6887 = mem[_6871]
                    require mem[_6871] <= test266151307()
                    require _6871 + mem[_6871] + 31 < _6871 + return_data.size
                    _6903 = mem[_6871 + mem[_6871]]
                    if mem[_6871 + mem[_6871]] > test266151307():
                        revert with 0, 65
                    if _6871 + ceil32(return_data.size) + ceil32(32 * mem[_6871 + mem[_6871]]) + 1 > test266151307() or ceil32(32 * mem[_6871 + mem[_6871]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6871 + ceil32(return_data.size) + ceil32(32 * mem[_6871 + mem[_6871]]) + 1
                    mem[_6871 + ceil32(return_data.size)] = _6903
                    require return_data.size >= _6887 + (32 * _6903) + 32
                    mem[_6871 + ceil32(return_data.size) + 32 len 32 * _6903] = mem[_6871 + _6887 + 32 len 32 * _6903]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8071 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8071] == bool(mem[_8071])
                    if wBNBAddress == stor5:
                        _8150 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8150]:
                            revert with 0, 50
                        mem[_8150 + 32] = stor4
                        if 1 >= mem[_8150]:
                            revert with 0, 50
                        mem[_8150 + 64] = stor5
                        mem[_8150 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8150 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8150 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8150 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8150 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8150 + ceil32(return_data.size) + 132] = 0
                        mem[_8150 + ceil32(return_data.size) + 164] = 160
                        mem[_8150 + ceil32(return_data.size) + 260] = mem[_8150]
                        idx = 0
                        s = _8150 + 32
                        t = _8150 + ceil32(return_data.size) + 292
                        while idx < mem[_8150]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8150 + ceil32(return_data.size) + 196] = this.address
                        mem[_8150 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), arg3, mem[_8150 + ceil32(return_data.size) + 260 len (32 * mem[_8150]) + 32]
                    else:
                        _8148 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8148]:
                            revert with 0, 50
                        mem[_8148 + 32] = stor4
                        if 1 >= mem[_8148]:
                            revert with 0, 50
                        mem[_8148 + 64] = stor5
                        if 2 >= mem[_8148]:
                            revert with 0, 50
                        mem[_8148 + 96] = wBNBAddress
                        mem[_8148 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8148 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8148 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8148 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8148 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8148 + ceil32(return_data.size) + 164] = 0
                        mem[_8148 + ceil32(return_data.size) + 196] = 160
                        mem[_8148 + ceil32(return_data.size) + 292] = mem[_8148]
                        idx = 0
                        s = _8148 + 32
                        t = _8148 + ceil32(return_data.size) + 324
                        while idx < mem[_8148]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8148 + ceil32(return_data.size) + 228] = this.address
                        mem[_8148 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), arg3, mem[_8148 + ceil32(return_data.size) + 292 len (32 * mem[_8148]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6871 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6871 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6871 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6871 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6871 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6871 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6871 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6871 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6871 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6871 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6871 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6871 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6871 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6871 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6871 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6871 + ceil32(return_data.size) + 64]
                else:
                    _5566 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_5566]:
                        revert with 0, 50
                    mem[_5566 + 32] = stor4
                    if 1 >= mem[_5566]:
                        revert with 0, 50
                    mem[_5566 + 64] = stor5
                    if 2 >= mem[_5566]:
                        revert with 0, 50
                    mem[_5566 + 96] = wBNBAddress
                    mem[_5566 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5566 + 132] = _5519
                    mem[_5566 + 164] = 64
                    mem[_5566 + 196] = mem[_5566]
                    idx = 0
                    s = _5566 + 32
                    t = _5566 + 228
                    while idx < mem[_5566]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5566 + (32 * mem[_5566]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6870 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6886 = mem[_6870]
                    require mem[_6870] <= test266151307()
                    require _6870 + mem[_6870] + 31 < _6870 + return_data.size
                    _6902 = mem[_6870 + mem[_6870]]
                    if mem[_6870 + mem[_6870]] > test266151307():
                        revert with 0, 65
                    if _6870 + ceil32(return_data.size) + ceil32(32 * mem[_6870 + mem[_6870]]) + 1 > test266151307() or ceil32(32 * mem[_6870 + mem[_6870]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6870 + ceil32(return_data.size) + ceil32(32 * mem[_6870 + mem[_6870]]) + 1
                    mem[_6870 + ceil32(return_data.size)] = _6902
                    require return_data.size >= _6886 + (32 * _6902) + 32
                    mem[_6870 + ceil32(return_data.size) + 32 len 32 * _6902] = mem[_6870 + _6886 + 32 len 32 * _6902]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8070 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8070] == bool(mem[_8070])
                    if wBNBAddress == stor5:
                        _8146 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8146]:
                            revert with 0, 50
                        mem[_8146 + 32] = stor4
                        if 1 >= mem[_8146]:
                            revert with 0, 50
                        mem[_8146 + 64] = stor5
                        mem[_8146 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8146 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8146 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8146 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8146 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8146 + ceil32(return_data.size) + 132] = 0
                        mem[_8146 + ceil32(return_data.size) + 164] = 160
                        mem[_8146 + ceil32(return_data.size) + 260] = mem[_8146]
                        idx = 0
                        s = _8146 + 32
                        t = _8146 + ceil32(return_data.size) + 292
                        while idx < mem[_8146]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8146 + ceil32(return_data.size) + 196] = this.address
                        mem[_8146 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8146 + ceil32(return_data.size) + (32 * mem[_8146]) + -mem[64] + 288]
                    else:
                        _8144 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8144]:
                            revert with 0, 50
                        mem[_8144 + 32] = stor4
                        if 1 >= mem[_8144]:
                            revert with 0, 50
                        mem[_8144 + 64] = stor5
                        if 2 >= mem[_8144]:
                            revert with 0, 50
                        mem[_8144 + 96] = wBNBAddress
                        mem[_8144 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8144 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8144 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8144 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8144 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8144 + ceil32(return_data.size) + 164] = 0
                        mem[_8144 + ceil32(return_data.size) + 196] = 160
                        mem[_8144 + ceil32(return_data.size) + 292] = mem[_8144]
                        idx = 0
                        s = _8144 + 32
                        t = _8144 + ceil32(return_data.size) + 324
                        while idx < mem[_8144]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8144 + ceil32(return_data.size) + 228] = this.address
                        mem[_8144 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), arg3, mem[_8144 + ceil32(return_data.size) + 292 len (32 * mem[_8144]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6870 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6870 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6870 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6870 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6870 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6870 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6870 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6870 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6870 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6870 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6870 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6870 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6870 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6870 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6870 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6870 + ceil32(return_data.size) + 64]
        else:
            _2784 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if not mem[_2784]:
                revert with 0, 50
            mem[_2784 + 32] = wBNBAddress
            if 1 >= mem[_2784]:
                revert with 0, 50
            mem[_2784 + 64] = stor5
            if 2 >= mem[_2784]:
                revert with 0, 50
            mem[_2784 + 96] = stor4
            mem[_2784 + 128] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[_2784 + 132] = 0
            mem[_2784 + 164] = 128
            mem[_2784 + 260] = mem[_2784]
            idx = 0
            s = _2784 + 32
            t = _2784 + 292
            while idx < mem[_2784]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_2784 + 196] = this.address
            mem[_2784 + 228] = arg3
            require ext_code.size(UNISWAP_ROUTER_ADDRESS)
            call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
               value msg.value wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2784 + (32 * mem[_2784]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4162 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4166 = mem[_4162]
            require mem[_4162] <= test266151307()
            require _4162 + mem[_4162] + 31 < _4162 + return_data.size
            _4170 = mem[_4162 + mem[_4162]]
            if mem[_4162 + mem[_4162]] > test266151307():
                revert with 0, 65
            if _4162 + ceil32(return_data.size) + ceil32(32 * mem[_4162 + mem[_4162]]) + 1 > test266151307() or ceil32(32 * mem[_4162 + mem[_4162]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _4162 + ceil32(return_data.size) + ceil32(32 * mem[_4162 + mem[_4162]]) + 1
            mem[_4162 + ceil32(return_data.size)] = _4170
            require return_data.size >= _4166 + (32 * _4170) + 32
            mem[_4162 + ceil32(return_data.size) + 32 len 32 * _4170] = mem[_4162 + _4166 + 32 len 32 * _4170]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor4)
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5514 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5518 = mem[_5514]
            if wBNBAddress != stor5:
                if 2 >= mem[ceil32(return_data.size) + 192]:
                    revert with 0, 50
                if 2 >= mem[ceil32(return_data.size) + 192]:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 288] < mem[_5514]:
                    revert with 0, 17
                if mem[ceil32(return_data.size) + 288] - mem[_5514] and 100 > -1 / mem[ceil32(return_data.size) + 288] - mem[_5514]:
                    revert with 0, 17
                if not mem[ceil32(return_data.size) + 288]:
                    revert with 0, 18
                stor6 = (100 * mem[ceil32(return_data.size) + 288]) - (100 * mem[_5514]) / mem[ceil32(return_data.size) + 288]
                if wBNBAddress == stor5:
                    _5577 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_5577]:
                        revert with 0, 50
                    mem[_5577 + 32] = stor4
                    if 1 >= mem[_5577]:
                        revert with 0, 50
                    mem[_5577 + 64] = stor5
                    mem[_5577 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5577 + 100] = _5518
                    mem[_5577 + 132] = 64
                    mem[_5577 + 164] = mem[_5577]
                    idx = 0
                    s = _5577 + 32
                    t = _5577 + 196
                    while idx < mem[_5577]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5577 + (32 * mem[_5577]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6865 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6881 = mem[_6865]
                    require mem[_6865] <= test266151307()
                    require _6865 + mem[_6865] + 31 < _6865 + return_data.size
                    _6897 = mem[_6865 + mem[_6865]]
                    if mem[_6865 + mem[_6865]] > test266151307():
                        revert with 0, 65
                    if _6865 + ceil32(return_data.size) + ceil32(32 * mem[_6865 + mem[_6865]]) + 1 > test266151307() or ceil32(32 * mem[_6865 + mem[_6865]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6865 + ceil32(return_data.size) + ceil32(32 * mem[_6865 + mem[_6865]]) + 1
                    mem[_6865 + ceil32(return_data.size)] = _6897
                    require return_data.size >= _6881 + (32 * _6897) + 32
                    mem[_6865 + ceil32(return_data.size) + 32 len 32 * _6897] = mem[_6865 + _6881 + 32 len 32 * _6897]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8065 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8065] == bool(mem[_8065])
                    if wBNBAddress == stor5:
                        _8126 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8126]:
                            revert with 0, 50
                        mem[_8126 + 32] = stor4
                        if 1 >= mem[_8126]:
                            revert with 0, 50
                        mem[_8126 + 64] = stor5
                        mem[_8126 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8126 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8126 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8126 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8126 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8126 + ceil32(return_data.size) + 132] = 0
                        mem[_8126 + ceil32(return_data.size) + 164] = 160
                        mem[_8126 + ceil32(return_data.size) + 260] = mem[_8126]
                        idx = 0
                        s = _8126 + 32
                        t = _8126 + ceil32(return_data.size) + 292
                        while idx < mem[_8126]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8126 + ceil32(return_data.size) + 196] = this.address
                        mem[_8126 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), arg3, mem[_8126 + ceil32(return_data.size) + 260 len (32 * mem[_8126]) + 32]
                    else:
                        _8124 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8124]:
                            revert with 0, 50
                        mem[_8124 + 32] = stor4
                        if 1 >= mem[_8124]:
                            revert with 0, 50
                        mem[_8124 + 64] = stor5
                        if 2 >= mem[_8124]:
                            revert with 0, 50
                        mem[_8124 + 96] = wBNBAddress
                        mem[_8124 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8124 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8124 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8124 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8124 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8124 + ceil32(return_data.size) + 164] = 0
                        mem[_8124 + ceil32(return_data.size) + 196] = 160
                        mem[_8124 + ceil32(return_data.size) + 292] = mem[_8124]
                        idx = 0
                        s = _8124 + 32
                        t = _8124 + ceil32(return_data.size) + 324
                        while idx < mem[_8124]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8124 + ceil32(return_data.size) + 228] = this.address
                        mem[_8124 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8124 + ceil32(return_data.size) + (32 * mem[_8124]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6865 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6865 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6865 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6865 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6865 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6865 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6865 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6865 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6865 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6865 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6865 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6865 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6865 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6865 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6865 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6865 + ceil32(return_data.size) + 64]
                else:
                    _5560 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_5560]:
                        revert with 0, 50
                    mem[_5560 + 32] = stor4
                    if 1 >= mem[_5560]:
                        revert with 0, 50
                    mem[_5560 + 64] = stor5
                    if 2 >= mem[_5560]:
                        revert with 0, 50
                    mem[_5560 + 96] = wBNBAddress
                    mem[_5560 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5560 + 132] = _5518
                    mem[_5560 + 164] = 64
                    mem[_5560 + 196] = mem[_5560]
                    idx = 0
                    s = _5560 + 32
                    t = _5560 + 228
                    while idx < mem[_5560]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5560 + (32 * mem[_5560]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6864 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6880 = mem[_6864]
                    require mem[_6864] <= test266151307()
                    require _6864 + mem[_6864] + 31 < _6864 + return_data.size
                    _6896 = mem[_6864 + mem[_6864]]
                    if mem[_6864 + mem[_6864]] > test266151307():
                        revert with 0, 65
                    if _6864 + ceil32(return_data.size) + ceil32(32 * mem[_6864 + mem[_6864]]) + 1 > test266151307() or ceil32(32 * mem[_6864 + mem[_6864]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6864 + ceil32(return_data.size) + ceil32(32 * mem[_6864 + mem[_6864]]) + 1
                    mem[_6864 + ceil32(return_data.size)] = _6896
                    require return_data.size >= _6880 + (32 * _6896) + 32
                    mem[_6864 + ceil32(return_data.size) + 32 len 32 * _6896] = mem[_6864 + _6880 + 32 len 32 * _6896]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8064 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8064] == bool(mem[_8064])
                    if wBNBAddress == stor5:
                        _8122 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8122]:
                            revert with 0, 50
                        mem[_8122 + 32] = stor4
                        if 1 >= mem[_8122]:
                            revert with 0, 50
                        mem[_8122 + 64] = stor5
                        mem[_8122 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8122 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8122 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8122 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8122 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8122 + ceil32(return_data.size) + 132] = 0
                        mem[_8122 + ceil32(return_data.size) + 164] = 160
                        mem[_8122 + ceil32(return_data.size) + 260] = mem[_8122]
                        idx = 0
                        s = _8122 + 32
                        t = _8122 + ceil32(return_data.size) + 292
                        while idx < mem[_8122]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8122 + ceil32(return_data.size) + 196] = this.address
                        mem[_8122 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8122 + ceil32(return_data.size) + (32 * mem[_8122]) + -mem[64] + 288]
                    else:
                        _8120 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8120]:
                            revert with 0, 50
                        mem[_8120 + 32] = stor4
                        if 1 >= mem[_8120]:
                            revert with 0, 50
                        mem[_8120 + 64] = stor5
                        if 2 >= mem[_8120]:
                            revert with 0, 50
                        mem[_8120 + 96] = wBNBAddress
                        mem[_8120 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8120 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8120 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8120 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8120 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8120 + ceil32(return_data.size) + 164] = 0
                        mem[_8120 + ceil32(return_data.size) + 196] = 160
                        mem[_8120 + ceil32(return_data.size) + 292] = mem[_8120]
                        idx = 0
                        s = _8120 + 32
                        t = _8120 + ceil32(return_data.size) + 324
                        while idx < mem[_8120]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8120 + ceil32(return_data.size) + 228] = this.address
                        mem[_8120 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), arg3, mem[_8120 + ceil32(return_data.size) + 292 len (32 * mem[_8120]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6864 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6864 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6864 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6864 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6864 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6864 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6864 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6864 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6864 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6864 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6864 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6864 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6864 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6864 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6864 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6864 + ceil32(return_data.size) + 64]
            else:
                if 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 0, 50
                if 1 >= mem[ceil32(return_data.size) + 192]:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 256] < mem[_5514]:
                    revert with 0, 17
                if mem[ceil32(return_data.size) + 256] - mem[_5514] and 100 > -1 / mem[ceil32(return_data.size) + 256] - mem[_5514]:
                    revert with 0, 17
                if not mem[ceil32(return_data.size) + 256]:
                    revert with 0, 18
                stor6 = (100 * mem[ceil32(return_data.size) + 256]) - (100 * mem[_5514]) / mem[ceil32(return_data.size) + 256]
                if wBNBAddress == stor5:
                    _5579 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_5579]:
                        revert with 0, 50
                    mem[_5579 + 32] = stor4
                    if 1 >= mem[_5579]:
                        revert with 0, 50
                    mem[_5579 + 64] = stor5
                    mem[_5579 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5579 + 100] = _5518
                    mem[_5579 + 132] = 64
                    mem[_5579 + 164] = mem[_5579]
                    idx = 0
                    s = _5579 + 32
                    t = _5579 + 196
                    while idx < mem[_5579]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5579 + (32 * mem[_5579]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6867 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6883 = mem[_6867]
                    require mem[_6867] <= test266151307()
                    require _6867 + mem[_6867] + 31 < _6867 + return_data.size
                    _6899 = mem[_6867 + mem[_6867]]
                    if mem[_6867 + mem[_6867]] > test266151307():
                        revert with 0, 65
                    if _6867 + ceil32(return_data.size) + ceil32(32 * mem[_6867 + mem[_6867]]) + 1 > test266151307() or ceil32(32 * mem[_6867 + mem[_6867]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6867 + ceil32(return_data.size) + ceil32(32 * mem[_6867 + mem[_6867]]) + 1
                    mem[_6867 + ceil32(return_data.size)] = _6899
                    require return_data.size >= _6883 + (32 * _6899) + 32
                    mem[_6867 + ceil32(return_data.size) + 32 len 32 * _6899] = mem[_6867 + _6883 + 32 len 32 * _6899]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8067 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8067] == bool(mem[_8067])
                    if wBNBAddress == stor5:
                        _8134 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8134]:
                            revert with 0, 50
                        mem[_8134 + 32] = stor4
                        if 1 >= mem[_8134]:
                            revert with 0, 50
                        mem[_8134 + 64] = stor5
                        mem[_8134 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8134 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8134 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8134 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8134 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8134 + ceil32(return_data.size) + 132] = 0
                        mem[_8134 + ceil32(return_data.size) + 164] = 160
                        mem[_8134 + ceil32(return_data.size) + 260] = mem[_8134]
                        idx = 0
                        s = _8134 + 32
                        t = _8134 + ceil32(return_data.size) + 292
                        while idx < mem[_8134]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8134 + ceil32(return_data.size) + 196] = this.address
                        mem[_8134 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8134 + ceil32(return_data.size) + (32 * mem[_8134]) + -mem[64] + 288]
                    else:
                        _8132 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8132]:
                            revert with 0, 50
                        mem[_8132 + 32] = stor4
                        if 1 >= mem[_8132]:
                            revert with 0, 50
                        mem[_8132 + 64] = stor5
                        if 2 >= mem[_8132]:
                            revert with 0, 50
                        mem[_8132 + 96] = wBNBAddress
                        mem[_8132 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8132 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8132 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8132 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8132 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8132 + ceil32(return_data.size) + 164] = 0
                        mem[_8132 + ceil32(return_data.size) + 196] = 160
                        mem[_8132 + ceil32(return_data.size) + 292] = mem[_8132]
                        idx = 0
                        s = _8132 + 32
                        t = _8132 + ceil32(return_data.size) + 324
                        while idx < mem[_8132]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8132 + ceil32(return_data.size) + 228] = this.address
                        mem[_8132 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8132 + ceil32(return_data.size) + (32 * mem[_8132]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6867 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6867 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6867 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6867 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6867 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6867 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6867 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6867 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6867 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6867 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6867 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6867 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6867 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6867 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6867 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6867 + ceil32(return_data.size) + 64]
                else:
                    _5562 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_5562]:
                        revert with 0, 50
                    mem[_5562 + 32] = stor4
                    if 1 >= mem[_5562]:
                        revert with 0, 50
                    mem[_5562 + 64] = stor5
                    if 2 >= mem[_5562]:
                        revert with 0, 50
                    mem[_5562 + 96] = wBNBAddress
                    mem[_5562 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5562 + 132] = _5518
                    mem[_5562 + 164] = 64
                    mem[_5562 + 196] = mem[_5562]
                    idx = 0
                    s = _5562 + 32
                    t = _5562 + 228
                    while idx < mem[_5562]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5562 + (32 * mem[_5562]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6866 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6882 = mem[_6866]
                    require mem[_6866] <= test266151307()
                    require _6866 + mem[_6866] + 31 < _6866 + return_data.size
                    _6898 = mem[_6866 + mem[_6866]]
                    if mem[_6866 + mem[_6866]] > test266151307():
                        revert with 0, 65
                    if _6866 + ceil32(return_data.size) + ceil32(32 * mem[_6866 + mem[_6866]]) + 1 > test266151307() or ceil32(32 * mem[_6866 + mem[_6866]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6866 + ceil32(return_data.size) + ceil32(32 * mem[_6866 + mem[_6866]]) + 1
                    mem[_6866 + ceil32(return_data.size)] = _6898
                    require return_data.size >= _6882 + (32 * _6898) + 32
                    mem[_6866 + ceil32(return_data.size) + 32 len 32 * _6898] = mem[_6866 + _6882 + 32 len 32 * _6898]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8066 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8066] == bool(mem[_8066])
                    if wBNBAddress == stor5:
                        _8130 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8130]:
                            revert with 0, 50
                        mem[_8130 + 32] = stor4
                        if 1 >= mem[_8130]:
                            revert with 0, 50
                        mem[_8130 + 64] = stor5
                        mem[_8130 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8130 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8130 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8130 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8130 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8130 + ceil32(return_data.size) + 132] = 0
                        mem[_8130 + ceil32(return_data.size) + 164] = 160
                        mem[_8130 + ceil32(return_data.size) + 260] = mem[_8130]
                        idx = 0
                        s = _8130 + 32
                        t = _8130 + ceil32(return_data.size) + 292
                        while idx < mem[_8130]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8130 + ceil32(return_data.size) + 196] = this.address
                        mem[_8130 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), arg3, mem[_8130 + ceil32(return_data.size) + 260 len (32 * mem[_8130]) + 32]
                    else:
                        _8128 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8128]:
                            revert with 0, 50
                        mem[_8128 + 32] = stor4
                        if 1 >= mem[_8128]:
                            revert with 0, 50
                        mem[_8128 + 64] = stor5
                        if 2 >= mem[_8128]:
                            revert with 0, 50
                        mem[_8128 + 96] = wBNBAddress
                        mem[_8128 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8128 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8128 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8128 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8128 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8128 + ceil32(return_data.size) + 164] = 0
                        mem[_8128 + ceil32(return_data.size) + 196] = 160
                        mem[_8128 + ceil32(return_data.size) + 292] = mem[_8128]
                        idx = 0
                        s = _8128 + 32
                        t = _8128 + ceil32(return_data.size) + 324
                        while idx < mem[_8128]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8128 + ceil32(return_data.size) + 228] = this.address
                        mem[_8128 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), arg3, mem[_8128 + ceil32(return_data.size) + 292 len (32 * mem[_8128]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6866 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6866 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6866 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6866 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6866 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6866 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6866 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6866 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6866 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6866 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6866 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6866 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6866 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6866 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6866 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6866 + ceil32(return_data.size) + 64]
    else:
        mem[96] = 3
        mem[128] = wBNBAddress
        mem[160] = address(arg2)
        mem[192] = address(arg1)
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = msg.value
        mem[260] = 64
        mem[292] = 3
        idx = 0
        s = 128
        t = 324
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
        staticcall UNISWAP_ROUTER_ADDRESS.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args msg.value, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _1402 = mem[224 len 4], Mask(224, 32, msg.value) >> 32
        require mem[224 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
        require mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 255 < return_data.size + 224
        _1404 = mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]
        if mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]) + 225
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, msg.value) >> 32 + 224]
        require return_data.size >= _1402 + (32 * _1404) + 32
        mem[ceil32(return_data.size) + 256 len 32 * _1404] = mem[_1402 + 256 len 32 * _1404]
        if wBNBAddress == stor5:
            _2787 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_2787]:
                revert with 0, 50
            mem[_2787 + 32] = stor5
            if 1 >= mem[_2787]:
                revert with 0, 50
            mem[_2787 + 64] = stor4
            mem[_2787 + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[_2787 + 100] = 0
            mem[_2787 + 132] = 128
            mem[_2787 + 228] = mem[_2787]
            idx = 0
            s = _2787 + 32
            t = _2787 + 260
            while idx < mem[_2787]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_2787 + 164] = this.address
            mem[_2787 + 196] = arg3
            require ext_code.size(UNISWAP_ROUTER_ADDRESS)
            call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
               value msg.value wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2787 + (32 * mem[_2787]) + -mem[64] + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4161 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4165 = mem[_4161]
            require mem[_4161] <= test266151307()
            require _4161 + mem[_4161] + 31 < _4161 + return_data.size
            _4169 = mem[_4161 + mem[_4161]]
            if mem[_4161 + mem[_4161]] > test266151307():
                revert with 0, 65
            if _4161 + ceil32(return_data.size) + ceil32(32 * mem[_4161 + mem[_4161]]) + 1 > test266151307() or ceil32(32 * mem[_4161 + mem[_4161]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _4161 + ceil32(return_data.size) + ceil32(32 * mem[_4161 + mem[_4161]]) + 1
            mem[_4161 + ceil32(return_data.size)] = _4169
            require return_data.size >= _4165 + (32 * _4169) + 32
            mem[_4161 + ceil32(return_data.size) + 32 len 32 * _4169] = mem[_4161 + _4165 + 32 len 32 * _4169]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor4)
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5513 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5517 = mem[_5513]
            if wBNBAddress != stor5:
                if 2 >= mem[ceil32(return_data.size) + 224]:
                    revert with 0, 50
                if 2 >= mem[ceil32(return_data.size) + 224]:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 320] < mem[_5513]:
                    revert with 0, 17
                if mem[ceil32(return_data.size) + 320] - mem[_5513] and 100 > -1 / mem[ceil32(return_data.size) + 320] - mem[_5513]:
                    revert with 0, 17
                if not mem[ceil32(return_data.size) + 320]:
                    revert with 0, 18
                stor6 = (100 * mem[ceil32(return_data.size) + 320]) - (100 * mem[_5513]) / mem[ceil32(return_data.size) + 320]
                if wBNBAddress == stor5:
                    _5573 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_5573]:
                        revert with 0, 50
                    mem[_5573 + 32] = stor4
                    if 1 >= mem[_5573]:
                        revert with 0, 50
                    mem[_5573 + 64] = stor5
                    mem[_5573 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5573 + 100] = _5517
                    mem[_5573 + 132] = 64
                    mem[_5573 + 164] = mem[_5573]
                    idx = 0
                    s = _5573 + 32
                    t = _5573 + 196
                    while idx < mem[_5573]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5573 + (32 * mem[_5573]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6861 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6877 = mem[_6861]
                    require mem[_6861] <= test266151307()
                    require _6861 + mem[_6861] + 31 < _6861 + return_data.size
                    _6893 = mem[_6861 + mem[_6861]]
                    if mem[_6861 + mem[_6861]] > test266151307():
                        revert with 0, 65
                    if _6861 + ceil32(return_data.size) + ceil32(32 * mem[_6861 + mem[_6861]]) + 1 > test266151307() or ceil32(32 * mem[_6861 + mem[_6861]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6861 + ceil32(return_data.size) + ceil32(32 * mem[_6861 + mem[_6861]]) + 1
                    mem[_6861 + ceil32(return_data.size)] = _6893
                    require return_data.size >= _6877 + (32 * _6893) + 32
                    mem[_6861 + ceil32(return_data.size) + 32 len 32 * _6893] = mem[_6861 + _6877 + 32 len 32 * _6893]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8061 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8061] == bool(mem[_8061])
                    if wBNBAddress == stor5:
                        _8110 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8110]:
                            revert with 0, 50
                        mem[_8110 + 32] = stor4
                        if 1 >= mem[_8110]:
                            revert with 0, 50
                        mem[_8110 + 64] = stor5
                        mem[_8110 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8110 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8110 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8110 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8110 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8110 + ceil32(return_data.size) + 132] = 0
                        mem[_8110 + ceil32(return_data.size) + 164] = 160
                        mem[_8110 + ceil32(return_data.size) + 260] = mem[_8110]
                        idx = 0
                        s = _8110 + 32
                        t = _8110 + ceil32(return_data.size) + 292
                        while idx < mem[_8110]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8110 + ceil32(return_data.size) + 196] = this.address
                        mem[_8110 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), arg3, mem[_8110 + ceil32(return_data.size) + 260 len (32 * mem[_8110]) + 32]
                    else:
                        _8108 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8108]:
                            revert with 0, 50
                        mem[_8108 + 32] = stor4
                        if 1 >= mem[_8108]:
                            revert with 0, 50
                        mem[_8108 + 64] = stor5
                        if 2 >= mem[_8108]:
                            revert with 0, 50
                        mem[_8108 + 96] = wBNBAddress
                        mem[_8108 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8108 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8108 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8108 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8108 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8108 + ceil32(return_data.size) + 164] = 0
                        mem[_8108 + ceil32(return_data.size) + 196] = 160
                        mem[_8108 + ceil32(return_data.size) + 292] = mem[_8108]
                        idx = 0
                        s = _8108 + 32
                        t = _8108 + ceil32(return_data.size) + 324
                        while idx < mem[_8108]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8108 + ceil32(return_data.size) + 228] = this.address
                        mem[_8108 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8108 + ceil32(return_data.size) + (32 * mem[_8108]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6861 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6861 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6861 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6861 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6861 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6861 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6861 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6861 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6861 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6861 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6861 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6861 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6861 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6861 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6861 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6861 + ceil32(return_data.size) + 64]
                else:
                    _5556 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_5556]:
                        revert with 0, 50
                    mem[_5556 + 32] = stor4
                    if 1 >= mem[_5556]:
                        revert with 0, 50
                    mem[_5556 + 64] = stor5
                    if 2 >= mem[_5556]:
                        revert with 0, 50
                    mem[_5556 + 96] = wBNBAddress
                    mem[_5556 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5556 + 132] = _5517
                    mem[_5556 + 164] = 64
                    mem[_5556 + 196] = mem[_5556]
                    idx = 0
                    s = _5556 + 32
                    t = _5556 + 228
                    while idx < mem[_5556]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5556 + (32 * mem[_5556]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6860 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6876 = mem[_6860]
                    require mem[_6860] <= test266151307()
                    require _6860 + mem[_6860] + 31 < _6860 + return_data.size
                    _6892 = mem[_6860 + mem[_6860]]
                    if mem[_6860 + mem[_6860]] > test266151307():
                        revert with 0, 65
                    if _6860 + ceil32(return_data.size) + ceil32(32 * mem[_6860 + mem[_6860]]) + 1 > test266151307() or ceil32(32 * mem[_6860 + mem[_6860]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6860 + ceil32(return_data.size) + ceil32(32 * mem[_6860 + mem[_6860]]) + 1
                    mem[_6860 + ceil32(return_data.size)] = _6892
                    require return_data.size >= _6876 + (32 * _6892) + 32
                    mem[_6860 + ceil32(return_data.size) + 32 len 32 * _6892] = mem[_6860 + _6876 + 32 len 32 * _6892]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8060 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8060] == bool(mem[_8060])
                    if wBNBAddress == stor5:
                        _8106 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8106]:
                            revert with 0, 50
                        mem[_8106 + 32] = stor4
                        if 1 >= mem[_8106]:
                            revert with 0, 50
                        mem[_8106 + 64] = stor5
                        mem[_8106 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8106 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8106 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8106 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8106 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8106 + ceil32(return_data.size) + 132] = 0
                        mem[_8106 + ceil32(return_data.size) + 164] = 160
                        mem[_8106 + ceil32(return_data.size) + 260] = mem[_8106]
                        idx = 0
                        s = _8106 + 32
                        t = _8106 + ceil32(return_data.size) + 292
                        while idx < mem[_8106]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8106 + ceil32(return_data.size) + 196] = this.address
                        mem[_8106 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8106 + ceil32(return_data.size) + (32 * mem[_8106]) + -mem[64] + 288]
                    else:
                        _8104 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8104]:
                            revert with 0, 50
                        mem[_8104 + 32] = stor4
                        if 1 >= mem[_8104]:
                            revert with 0, 50
                        mem[_8104 + 64] = stor5
                        if 2 >= mem[_8104]:
                            revert with 0, 50
                        mem[_8104 + 96] = wBNBAddress
                        mem[_8104 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8104 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8104 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8104 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8104 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8104 + ceil32(return_data.size) + 164] = 0
                        mem[_8104 + ceil32(return_data.size) + 196] = 160
                        mem[_8104 + ceil32(return_data.size) + 292] = mem[_8104]
                        idx = 0
                        s = _8104 + 32
                        t = _8104 + ceil32(return_data.size) + 324
                        while idx < mem[_8104]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8104 + ceil32(return_data.size) + 228] = this.address
                        mem[_8104 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8104 + ceil32(return_data.size) + (32 * mem[_8104]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6860 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6860 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6860 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6860 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6860 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6860 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6860 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6860 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6860 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6860 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6860 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6860 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6860 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6860 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6860 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6860 + ceil32(return_data.size) + 64]
            else:
                if 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 0, 50
                if 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 288] < mem[_5513]:
                    revert with 0, 17
                if mem[ceil32(return_data.size) + 288] - mem[_5513] and 100 > -1 / mem[ceil32(return_data.size) + 288] - mem[_5513]:
                    revert with 0, 17
                if not mem[ceil32(return_data.size) + 288]:
                    revert with 0, 18
                stor6 = (100 * mem[ceil32(return_data.size) + 288]) - (100 * mem[_5513]) / mem[ceil32(return_data.size) + 288]
                if wBNBAddress == stor5:
                    _5575 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_5575]:
                        revert with 0, 50
                    mem[_5575 + 32] = stor4
                    if 1 >= mem[_5575]:
                        revert with 0, 50
                    mem[_5575 + 64] = stor5
                    mem[_5575 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5575 + 100] = _5517
                    mem[_5575 + 132] = 64
                    mem[_5575 + 164] = mem[_5575]
                    idx = 0
                    s = _5575 + 32
                    t = _5575 + 196
                    while idx < mem[_5575]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5575 + (32 * mem[_5575]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6863 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6879 = mem[_6863]
                    require mem[_6863] <= test266151307()
                    require _6863 + mem[_6863] + 31 < _6863 + return_data.size
                    _6895 = mem[_6863 + mem[_6863]]
                    if mem[_6863 + mem[_6863]] > test266151307():
                        revert with 0, 65
                    if _6863 + ceil32(return_data.size) + ceil32(32 * mem[_6863 + mem[_6863]]) + 1 > test266151307() or ceil32(32 * mem[_6863 + mem[_6863]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6863 + ceil32(return_data.size) + ceil32(32 * mem[_6863 + mem[_6863]]) + 1
                    mem[_6863 + ceil32(return_data.size)] = _6895
                    require return_data.size >= _6879 + (32 * _6895) + 32
                    mem[_6863 + ceil32(return_data.size) + 32 len 32 * _6895] = mem[_6863 + _6879 + 32 len 32 * _6895]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8063 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8063] == bool(mem[_8063])
                    if wBNBAddress == stor5:
                        _8118 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8118]:
                            revert with 0, 50
                        mem[_8118 + 32] = stor4
                        if 1 >= mem[_8118]:
                            revert with 0, 50
                        mem[_8118 + 64] = stor5
                        mem[_8118 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8118 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8118 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8118 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8118 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8118 + ceil32(return_data.size) + 132] = 0
                        mem[_8118 + ceil32(return_data.size) + 164] = 160
                        mem[_8118 + ceil32(return_data.size) + 260] = mem[_8118]
                        idx = 0
                        s = _8118 + 32
                        t = _8118 + ceil32(return_data.size) + 292
                        while idx < mem[_8118]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8118 + ceil32(return_data.size) + 196] = this.address
                        mem[_8118 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8118 + ceil32(return_data.size) + (32 * mem[_8118]) + -mem[64] + 288]
                    else:
                        _8116 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8116]:
                            revert with 0, 50
                        mem[_8116 + 32] = stor4
                        if 1 >= mem[_8116]:
                            revert with 0, 50
                        mem[_8116 + 64] = stor5
                        if 2 >= mem[_8116]:
                            revert with 0, 50
                        mem[_8116 + 96] = wBNBAddress
                        mem[_8116 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8116 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8116 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8116 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8116 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8116 + ceil32(return_data.size) + 164] = 0
                        mem[_8116 + ceil32(return_data.size) + 196] = 160
                        mem[_8116 + ceil32(return_data.size) + 292] = mem[_8116]
                        idx = 0
                        s = _8116 + 32
                        t = _8116 + ceil32(return_data.size) + 324
                        while idx < mem[_8116]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8116 + ceil32(return_data.size) + 228] = this.address
                        mem[_8116 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8116 + ceil32(return_data.size) + (32 * mem[_8116]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6863 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6863 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6863 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6863 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6863 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6863 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6863 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6863 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6863 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6863 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6863 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6863 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6863 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6863 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6863 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6863 + ceil32(return_data.size) + 64]
                else:
                    _5558 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_5558]:
                        revert with 0, 50
                    mem[_5558 + 32] = stor4
                    if 1 >= mem[_5558]:
                        revert with 0, 50
                    mem[_5558 + 64] = stor5
                    if 2 >= mem[_5558]:
                        revert with 0, 50
                    mem[_5558 + 96] = wBNBAddress
                    mem[_5558 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5558 + 132] = _5517
                    mem[_5558 + 164] = 64
                    mem[_5558 + 196] = mem[_5558]
                    idx = 0
                    s = _5558 + 32
                    t = _5558 + 228
                    while idx < mem[_5558]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5558 + (32 * mem[_5558]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6862 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6878 = mem[_6862]
                    require mem[_6862] <= test266151307()
                    require _6862 + mem[_6862] + 31 < _6862 + return_data.size
                    _6894 = mem[_6862 + mem[_6862]]
                    if mem[_6862 + mem[_6862]] > test266151307():
                        revert with 0, 65
                    if _6862 + ceil32(return_data.size) + ceil32(32 * mem[_6862 + mem[_6862]]) + 1 > test266151307() or ceil32(32 * mem[_6862 + mem[_6862]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6862 + ceil32(return_data.size) + ceil32(32 * mem[_6862 + mem[_6862]]) + 1
                    mem[_6862 + ceil32(return_data.size)] = _6894
                    require return_data.size >= _6878 + (32 * _6894) + 32
                    mem[_6862 + ceil32(return_data.size) + 32 len 32 * _6894] = mem[_6862 + _6878 + 32 len 32 * _6894]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8062 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8062] == bool(mem[_8062])
                    if wBNBAddress == stor5:
                        _8114 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8114]:
                            revert with 0, 50
                        mem[_8114 + 32] = stor4
                        if 1 >= mem[_8114]:
                            revert with 0, 50
                        mem[_8114 + 64] = stor5
                        mem[_8114 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8114 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8114 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8114 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8114 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8114 + ceil32(return_data.size) + 132] = 0
                        mem[_8114 + ceil32(return_data.size) + 164] = 160
                        mem[_8114 + ceil32(return_data.size) + 260] = mem[_8114]
                        idx = 0
                        s = _8114 + 32
                        t = _8114 + ceil32(return_data.size) + 292
                        while idx < mem[_8114]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8114 + ceil32(return_data.size) + 196] = this.address
                        mem[_8114 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), arg3, mem[_8114 + ceil32(return_data.size) + 260 len (32 * mem[_8114]) + 32]
                    else:
                        _8112 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8112]:
                            revert with 0, 50
                        mem[_8112 + 32] = stor4
                        if 1 >= mem[_8112]:
                            revert with 0, 50
                        mem[_8112 + 64] = stor5
                        if 2 >= mem[_8112]:
                            revert with 0, 50
                        mem[_8112 + 96] = wBNBAddress
                        mem[_8112 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8112 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8112 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8112 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8112 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8112 + ceil32(return_data.size) + 164] = 0
                        mem[_8112 + ceil32(return_data.size) + 196] = 160
                        mem[_8112 + ceil32(return_data.size) + 292] = mem[_8112]
                        idx = 0
                        s = _8112 + 32
                        t = _8112 + ceil32(return_data.size) + 324
                        while idx < mem[_8112]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8112 + ceil32(return_data.size) + 228] = this.address
                        mem[_8112 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), arg3, mem[_8112 + ceil32(return_data.size) + 292 len (32 * mem[_8112]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6862 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6862 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6862 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6862 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6862 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6862 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6862 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6862 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6862 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6862 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6862 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6862 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6862 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6862 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6862 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6862 + ceil32(return_data.size) + 64]
        else:
            _2782 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if not mem[_2782]:
                revert with 0, 50
            mem[_2782 + 32] = wBNBAddress
            if 1 >= mem[_2782]:
                revert with 0, 50
            mem[_2782 + 64] = stor5
            if 2 >= mem[_2782]:
                revert with 0, 50
            mem[_2782 + 96] = stor4
            mem[_2782 + 128] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[_2782 + 132] = 0
            mem[_2782 + 164] = 128
            mem[_2782 + 260] = mem[_2782]
            idx = 0
            s = _2782 + 32
            t = _2782 + 292
            while idx < mem[_2782]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_2782 + 196] = this.address
            mem[_2782 + 228] = arg3
            require ext_code.size(UNISWAP_ROUTER_ADDRESS)
            call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
               value msg.value wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2782 + (32 * mem[_2782]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4160 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4164 = mem[_4160]
            require mem[_4160] <= test266151307()
            require _4160 + mem[_4160] + 31 < _4160 + return_data.size
            _4168 = mem[_4160 + mem[_4160]]
            if mem[_4160 + mem[_4160]] > test266151307():
                revert with 0, 65
            if _4160 + ceil32(return_data.size) + ceil32(32 * mem[_4160 + mem[_4160]]) + 1 > test266151307() or ceil32(32 * mem[_4160 + mem[_4160]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _4160 + ceil32(return_data.size) + ceil32(32 * mem[_4160 + mem[_4160]]) + 1
            mem[_4160 + ceil32(return_data.size)] = _4168
            require return_data.size >= _4164 + (32 * _4168) + 32
            mem[_4160 + ceil32(return_data.size) + 32 len 32 * _4168] = mem[_4160 + _4164 + 32 len 32 * _4168]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor4)
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5512 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5516 = mem[_5512]
            if wBNBAddress != stor5:
                if 2 >= mem[ceil32(return_data.size) + 224]:
                    revert with 0, 50
                if 2 >= mem[ceil32(return_data.size) + 224]:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 320] < mem[_5512]:
                    revert with 0, 17
                if mem[ceil32(return_data.size) + 320] - mem[_5512] and 100 > -1 / mem[ceil32(return_data.size) + 320] - mem[_5512]:
                    revert with 0, 17
                if not mem[ceil32(return_data.size) + 320]:
                    revert with 0, 18
                stor6 = (100 * mem[ceil32(return_data.size) + 320]) - (100 * mem[_5512]) / mem[ceil32(return_data.size) + 320]
                if wBNBAddress == stor5:
                    _5569 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_5569]:
                        revert with 0, 50
                    mem[_5569 + 32] = stor4
                    if 1 >= mem[_5569]:
                        revert with 0, 50
                    mem[_5569 + 64] = stor5
                    mem[_5569 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5569 + 100] = _5516
                    mem[_5569 + 132] = 64
                    mem[_5569 + 164] = mem[_5569]
                    idx = 0
                    s = _5569 + 32
                    t = _5569 + 196
                    while idx < mem[_5569]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5569 + (32 * mem[_5569]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6857 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6873 = mem[_6857]
                    require mem[_6857] <= test266151307()
                    require _6857 + mem[_6857] + 31 < _6857 + return_data.size
                    _6889 = mem[_6857 + mem[_6857]]
                    if mem[_6857 + mem[_6857]] > test266151307():
                        revert with 0, 65
                    if _6857 + ceil32(return_data.size) + ceil32(32 * mem[_6857 + mem[_6857]]) + 1 > test266151307() or ceil32(32 * mem[_6857 + mem[_6857]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6857 + ceil32(return_data.size) + ceil32(32 * mem[_6857 + mem[_6857]]) + 1
                    mem[_6857 + ceil32(return_data.size)] = _6889
                    require return_data.size >= _6873 + (32 * _6889) + 32
                    mem[_6857 + ceil32(return_data.size) + 32 len 32 * _6889] = mem[_6857 + _6873 + 32 len 32 * _6889]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8057 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8057] == bool(mem[_8057])
                    if wBNBAddress == stor5:
                        _8094 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8094]:
                            revert with 0, 50
                        mem[_8094 + 32] = stor4
                        if 1 >= mem[_8094]:
                            revert with 0, 50
                        mem[_8094 + 64] = stor5
                        mem[_8094 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8094 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8094 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8094 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8094 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8094 + ceil32(return_data.size) + 132] = 0
                        mem[_8094 + ceil32(return_data.size) + 164] = 160
                        mem[_8094 + ceil32(return_data.size) + 260] = mem[_8094]
                        idx = 0
                        s = _8094 + 32
                        t = _8094 + ceil32(return_data.size) + 292
                        while idx < mem[_8094]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8094 + ceil32(return_data.size) + 196] = this.address
                        mem[_8094 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), arg3, mem[_8094 + ceil32(return_data.size) + 260 len (32 * mem[_8094]) + 32]
                    else:
                        _8092 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8092]:
                            revert with 0, 50
                        mem[_8092 + 32] = stor4
                        if 1 >= mem[_8092]:
                            revert with 0, 50
                        mem[_8092 + 64] = stor5
                        if 2 >= mem[_8092]:
                            revert with 0, 50
                        mem[_8092 + 96] = wBNBAddress
                        mem[_8092 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8092 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8092 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8092 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8092 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8092 + ceil32(return_data.size) + 164] = 0
                        mem[_8092 + ceil32(return_data.size) + 196] = 160
                        mem[_8092 + ceil32(return_data.size) + 292] = mem[_8092]
                        idx = 0
                        s = _8092 + 32
                        t = _8092 + ceil32(return_data.size) + 324
                        while idx < mem[_8092]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8092 + ceil32(return_data.size) + 228] = this.address
                        mem[_8092 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8092 + ceil32(return_data.size) + (32 * mem[_8092]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6857 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6857 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6857 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6857 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6857 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6857 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6857 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6857 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6857 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6857 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6857 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6857 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6857 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6857 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6857 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6857 + ceil32(return_data.size) + 64]
                else:
                    _5552 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_5552]:
                        revert with 0, 50
                    mem[_5552 + 32] = stor4
                    if 1 >= mem[_5552]:
                        revert with 0, 50
                    mem[_5552 + 64] = stor5
                    if 2 >= mem[_5552]:
                        revert with 0, 50
                    mem[_5552 + 96] = wBNBAddress
                    mem[_5552 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5552 + 132] = _5516
                    mem[_5552 + 164] = 64
                    mem[_5552 + 196] = mem[_5552]
                    idx = 0
                    s = _5552 + 32
                    t = _5552 + 228
                    while idx < mem[_5552]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5552 + (32 * mem[_5552]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6856 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6872 = mem[_6856]
                    require mem[_6856] <= test266151307()
                    require _6856 + mem[_6856] + 31 < _6856 + return_data.size
                    _6888 = mem[_6856 + mem[_6856]]
                    if mem[_6856 + mem[_6856]] > test266151307():
                        revert with 0, 65
                    if _6856 + ceil32(return_data.size) + ceil32(32 * mem[_6856 + mem[_6856]]) + 1 > test266151307() or ceil32(32 * mem[_6856 + mem[_6856]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6856 + ceil32(return_data.size) + ceil32(32 * mem[_6856 + mem[_6856]]) + 1
                    mem[_6856 + ceil32(return_data.size)] = _6888
                    require return_data.size >= _6872 + (32 * _6888) + 32
                    mem[_6856 + ceil32(return_data.size) + 32 len 32 * _6888] = mem[_6856 + _6872 + 32 len 32 * _6888]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8056 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8056] == bool(mem[_8056])
                    if wBNBAddress == stor5:
                        _8090 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8090]:
                            revert with 0, 50
                        mem[_8090 + 32] = stor4
                        if 1 >= mem[_8090]:
                            revert with 0, 50
                        mem[_8090 + 64] = stor5
                        mem[_8090 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8090 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8090 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8090 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8090 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8090 + ceil32(return_data.size) + 132] = 0
                        mem[_8090 + ceil32(return_data.size) + 164] = 160
                        mem[_8090 + ceil32(return_data.size) + 260] = mem[_8090]
                        idx = 0
                        s = _8090 + 32
                        t = _8090 + ceil32(return_data.size) + 292
                        while idx < mem[_8090]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8090 + ceil32(return_data.size) + 196] = this.address
                        mem[_8090 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), arg3, mem[_8090 + ceil32(return_data.size) + 260 len (32 * mem[_8090]) + 32]
                    else:
                        _8088 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8088]:
                            revert with 0, 50
                        mem[_8088 + 32] = stor4
                        if 1 >= mem[_8088]:
                            revert with 0, 50
                        mem[_8088 + 64] = stor5
                        if 2 >= mem[_8088]:
                            revert with 0, 50
                        mem[_8088 + 96] = wBNBAddress
                        mem[_8088 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8088 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8088 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8088 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8088 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8088 + ceil32(return_data.size) + 164] = 0
                        mem[_8088 + ceil32(return_data.size) + 196] = 160
                        mem[_8088 + ceil32(return_data.size) + 292] = mem[_8088]
                        idx = 0
                        s = _8088 + 32
                        t = _8088 + ceil32(return_data.size) + 324
                        while idx < mem[_8088]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8088 + ceil32(return_data.size) + 228] = this.address
                        mem[_8088 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), arg3, mem[_8088 + ceil32(return_data.size) + 292 len (32 * mem[_8088]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6856 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6856 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6856 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6856 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6856 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6856 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6856 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6856 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6856 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6856 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6856 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6856 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6856 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6856 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6856 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6856 + ceil32(return_data.size) + 64]
            else:
                if 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 0, 50
                if 1 >= mem[ceil32(return_data.size) + 224]:
                    revert with 0, 50
                if mem[ceil32(return_data.size) + 288] < mem[_5512]:
                    revert with 0, 17
                if mem[ceil32(return_data.size) + 288] - mem[_5512] and 100 > -1 / mem[ceil32(return_data.size) + 288] - mem[_5512]:
                    revert with 0, 17
                if not mem[ceil32(return_data.size) + 288]:
                    revert with 0, 18
                stor6 = (100 * mem[ceil32(return_data.size) + 288]) - (100 * mem[_5512]) / mem[ceil32(return_data.size) + 288]
                if wBNBAddress == stor5:
                    _5571 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_5571]:
                        revert with 0, 50
                    mem[_5571 + 32] = stor4
                    if 1 >= mem[_5571]:
                        revert with 0, 50
                    mem[_5571 + 64] = stor5
                    mem[_5571 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5571 + 100] = _5516
                    mem[_5571 + 132] = 64
                    mem[_5571 + 164] = mem[_5571]
                    idx = 0
                    s = _5571 + 32
                    t = _5571 + 196
                    while idx < mem[_5571]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5571 + (32 * mem[_5571]) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6859 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6875 = mem[_6859]
                    require mem[_6859] <= test266151307()
                    require _6859 + mem[_6859] + 31 < _6859 + return_data.size
                    _6891 = mem[_6859 + mem[_6859]]
                    if mem[_6859 + mem[_6859]] > test266151307():
                        revert with 0, 65
                    if _6859 + ceil32(return_data.size) + ceil32(32 * mem[_6859 + mem[_6859]]) + 1 > test266151307() or ceil32(32 * mem[_6859 + mem[_6859]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6859 + ceil32(return_data.size) + ceil32(32 * mem[_6859 + mem[_6859]]) + 1
                    mem[_6859 + ceil32(return_data.size)] = _6891
                    require return_data.size >= _6875 + (32 * _6891) + 32
                    mem[_6859 + ceil32(return_data.size) + 32 len 32 * _6891] = mem[_6859 + _6875 + 32 len 32 * _6891]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8059 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8059] == bool(mem[_8059])
                    if wBNBAddress == stor5:
                        _8102 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8102]:
                            revert with 0, 50
                        mem[_8102 + 32] = stor4
                        if 1 >= mem[_8102]:
                            revert with 0, 50
                        mem[_8102 + 64] = stor5
                        mem[_8102 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8102 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8102 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8102 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8102 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8102 + ceil32(return_data.size) + 132] = 0
                        mem[_8102 + ceil32(return_data.size) + 164] = 160
                        mem[_8102 + ceil32(return_data.size) + 260] = mem[_8102]
                        idx = 0
                        s = _8102 + 32
                        t = _8102 + ceil32(return_data.size) + 292
                        while idx < mem[_8102]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8102 + ceil32(return_data.size) + 196] = this.address
                        mem[_8102 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8102 + ceil32(return_data.size) + (32 * mem[_8102]) + -mem[64] + 288]
                    else:
                        _8100 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8100]:
                            revert with 0, 50
                        mem[_8100 + 32] = stor4
                        if 1 >= mem[_8100]:
                            revert with 0, 50
                        mem[_8100 + 64] = stor5
                        if 2 >= mem[_8100]:
                            revert with 0, 50
                        mem[_8100 + 96] = wBNBAddress
                        mem[_8100 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8100 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8100 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8100 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8100 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8100 + ceil32(return_data.size) + 164] = 0
                        mem[_8100 + ceil32(return_data.size) + 196] = 160
                        mem[_8100 + ceil32(return_data.size) + 292] = mem[_8100]
                        idx = 0
                        s = _8100 + 32
                        t = _8100 + ceil32(return_data.size) + 324
                        while idx < mem[_8100]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8100 + ceil32(return_data.size) + 228] = this.address
                        mem[_8100 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8100 + ceil32(return_data.size) + (32 * mem[_8100]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6859 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6859 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6859 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6859 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6859 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6859 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6859 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6859 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6859 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6859 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6859 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6859 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6859 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6859 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6859 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6859 + ceil32(return_data.size) + 64]
                else:
                    _5554 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_5554]:
                        revert with 0, 50
                    mem[_5554 + 32] = stor4
                    if 1 >= mem[_5554]:
                        revert with 0, 50
                    mem[_5554 + 64] = stor5
                    if 2 >= mem[_5554]:
                        revert with 0, 50
                    mem[_5554 + 96] = wBNBAddress
                    mem[_5554 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_5554 + 132] = _5516
                    mem[_5554 + 164] = 64
                    mem[_5554 + 196] = mem[_5554]
                    idx = 0
                    s = _5554 + 32
                    t = _5554 + 228
                    while idx < mem[_5554]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                    staticcall UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _5554 + (32 * mem[_5554]) + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6858 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6874 = mem[_6858]
                    require mem[_6858] <= test266151307()
                    require _6858 + mem[_6858] + 31 < _6858 + return_data.size
                    _6890 = mem[_6858 + mem[_6858]]
                    if mem[_6858 + mem[_6858]] > test266151307():
                        revert with 0, 65
                    if _6858 + ceil32(return_data.size) + ceil32(32 * mem[_6858 + mem[_6858]]) + 1 > test266151307() or ceil32(32 * mem[_6858 + mem[_6858]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _6858 + ceil32(return_data.size) + ceil32(32 * mem[_6858 + mem[_6858]]) + 1
                    mem[_6858 + ceil32(return_data.size)] = _6890
                    require return_data.size >= _6874 + (32 * _6890) + 32
                    mem[_6858 + ceil32(return_data.size) + 32 len 32 * _6890] = mem[_6858 + _6874 + 32 len 32 * _6890]
                    mem[mem[64] + 4] = UNISWAP_ROUTER_ADDRESS
                    mem[mem[64] + 36] = -1
                    require ext_code.size(stor4)
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args UNISWAP_ROUTER_ADDRESS, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8058 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_8058] == bool(mem[_8058])
                    if wBNBAddress == stor5:
                        _8098 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        if not mem[_8098]:
                            revert with 0, 50
                        mem[_8098 + 32] = stor4
                        if 1 >= mem[_8098]:
                            revert with 0, 50
                        mem[_8098 + 64] = stor5
                        mem[_8098 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8098 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8098 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        mem[_8098 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8098 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
                        mem[_8098 + ceil32(return_data.size) + 132] = 0
                        mem[_8098 + ceil32(return_data.size) + 164] = 160
                        mem[_8098 + ceil32(return_data.size) + 260] = mem[_8098]
                        idx = 0
                        s = _8098 + 32
                        t = _8098 + ceil32(return_data.size) + 292
                        while idx < mem[_8098]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8098 + ceil32(return_data.size) + 196] = this.address
                        mem[_8098 + ceil32(return_data.size) + 228] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8098 + ceil32(return_data.size) + (32 * mem[_8098]) + -mem[64] + 288]
                    else:
                        _8096 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if not mem[_8096]:
                            revert with 0, 50
                        mem[_8096 + 32] = stor4
                        if 1 >= mem[_8096]:
                            revert with 0, 50
                        mem[_8096 + 64] = stor5
                        if 2 >= mem[_8096]:
                            revert with 0, 50
                        mem[_8096 + 96] = wBNBAddress
                        mem[_8096 + 132] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_8096 + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _8096 + ceil32(return_data.size) + 128
                        require return_data.size >= 32
                        mem[_8096 + ceil32(return_data.size) + 128] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[_8096 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
                        mem[_8096 + ceil32(return_data.size) + 164] = 0
                        mem[_8096 + ceil32(return_data.size) + 196] = 160
                        mem[_8096 + ceil32(return_data.size) + 292] = mem[_8096]
                        idx = 0
                        s = _8096 + 32
                        t = _8096 + ceil32(return_data.size) + 324
                        while idx < mem[_8096]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8096 + ceil32(return_data.size) + 228] = this.address
                        mem[_8096 + ceil32(return_data.size) + 260] = arg3
                        require ext_code.size(UNISWAP_ROUTER_ADDRESS)
                        call UNISWAP_ROUTER_ADDRESS.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _8096 + ceil32(return_data.size) + (32 * mem[_8096]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if wBNBAddress != stor5:
                        if 2 >= mem[_6858 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 2 >= mem[_6858 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6858 + ceil32(return_data.size) + 96] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6858 + ceil32(return_data.size) + 96] - eth.balance(this.address) and 100 > -1 / mem[_6858 + ceil32(return_data.size) + 96] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6858 + ceil32(return_data.size) + 96]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6858 + ceil32(return_data.size) + 96]) - (100 * eth.balance(this.address)) / mem[_6858 + ceil32(return_data.size) + 96]
                    else:
                        if 1 >= mem[_6858 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if 1 >= mem[_6858 + ceil32(return_data.size)]:
                            revert with 0, 50
                        if mem[_6858 + ceil32(return_data.size) + 64] < eth.balance(this.address):
                            revert with 0, 17
                        if mem[_6858 + ceil32(return_data.size) + 64] - eth.balance(this.address) and 100 > -1 / mem[_6858 + ceil32(return_data.size) + 64] - eth.balance(this.address):
                            revert with 0, 17
                        if not mem[_6858 + ceil32(return_data.size) + 64]:
                            revert with 0, 18
                        stor7 = (100 * mem[_6858 + ceil32(return_data.size) + 64]) - (100 * eth.balance(this.address)) / mem[_6858 + ceil32(return_data.size) + 64]
    if stor6 > arg4:
        revert with 0, 'Buy/sell tax too high!'
    if stor7 > arg5:
        revert with 0, 'Buy/sell tax too high!'
    return stor6, stor7
}



}
