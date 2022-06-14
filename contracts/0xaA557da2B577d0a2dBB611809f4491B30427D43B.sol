contract main {




// =====================  Runtime code  =====================


#
#  - getLiquidationInfo(address arg1)
#  - executeOperation(address[] arg1, uint256[] arg2, uint256[] arg3, address arg4, bytes arg5)
#  - _fallback()
#
address _owner;
address sub_c8cbf147Address;
address _wethAddress;
address _routerAddress;

function _weth() {
    return _wethAddress
}

function _owner() {
    return _owner
}

function sub_c8cbf147(?) {
    return sub_c8cbf147Address
}

function _router() {
    return _routerAddress
}

function liquidate(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    staticcall sub_c8cbf147Address.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 132] = -1
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), -1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Approval error'
    mem[(2 * ceil32(return_data.size)) + 128] = arg2
    mem[(2 * ceil32(return_data.size)) + 160] = 1
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 644
    while idx < 1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).flashLoan(address arg1, address[] arg2, uint256[] arg3, uint256[] arg4, address arg5, bytes arg6, uint16 arg7) with:
         gas gas_remaining wei
        args address(this.address), 224, 288, 352, address(this.address), 416, 0, 1, mem[(2 * ceil32(return_data.size)) + 644], 1, arg4, 1, 0, 64, address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args _owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if _owner != msg.sender:
        revert with 0, 'only owner.'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 4] = this.address
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_19] > 0:
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = this.address
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _23 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _24 = mem[_23]
            mem[mem[64] + 4] = _owner
            mem[mem[64] + 36] = _24
            call address(cd[((32 * idx) + arg1 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args _owner, _24
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_27] == bool(mem[_27])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if eth.balance(this.address):
        call _owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
