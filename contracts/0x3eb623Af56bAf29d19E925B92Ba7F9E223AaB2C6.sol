contract main {




// =====================  Runtime code  =====================


address SELFAddress;
address WETHAddress;

function SELF() {
    return SELFAddress
}

function WETH() {
    return WETHAddress
}

function _fallback() payable {
    revert
}

function sub_34b08ba1(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, arg3, address(this.address), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0, 'Skim: INSUFFICIENT_INPUT_AMOUNT'
    if arg2 <= 0:
        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
    if arg3 <= 0:
        revert with 0, 'Skim: INSUFFICIENT_LIQUIDITY'
    if arg1 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if 997 * arg1 and arg3 > -1 / 997 * arg1:
        revert with 0, 17
    if arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * arg2 > !(997 * arg1):
        revert with 0, 17
    if not (1000 * arg2) + (997 * arg1):
        revert with 0, 18
    return (997 * arg1 * arg3 / (1000 * arg2) + (997 * arg1))
}

function check(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    return address(ext_call.return_data[0]), 
           address(ext_call.return_data[0]),
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           Mask(144, 112, ext_call.return_data[0]),
           ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32])
}

function withdraw(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if SELFAddress != msg.sender:
        revert with 0, 'only self can do.'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
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
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _23 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _24 = mem[_23]
            mem[mem[64] + 4] = SELFAddress
            mem[mem[64] + 36] = _24
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args SELFAddress, _24
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
        call SELFAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
