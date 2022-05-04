contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;
address stor1;
mapping of uint256 stor2;

function _fallback() payable {
    revert
}

function getLendingPoolAddress() payable {
    require ext_code.size(stor0)
    staticcall stor0.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function getERC20Balance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_47a10748(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args tx.origin, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_1240c40f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args tx.origin, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'No allowance for spending of the given amount of tokens'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args tx.origin, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor2[address(msg.sender)][address(arg1)] += arg2
}

function sub_eeb149e7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require stor2[address(msg.sender)][address(arg1)] >= arg2
    require ext_code.size(stor0)
    staticcall stor0.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args address(arg1), arg2, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.getReserveTokensAddresses(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    stor2[address(msg.sender)][address(ext_call.return_data[64])] += arg2
}

function sub_e5d89a4a(?) payable {
    mem[96] = 0xb316ff8900000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    staticcall stor1.getAllReservesTokens() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128 <= test266151307() and (32 * mem[mem[96] + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        _56 = mem[s]
        require return_data.size + -_4 + -mem[s] - 32 >= 64
        _59 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        _61 = mem[_4 + _56 + 128]
        require mem[_4 + _56 + 128] <= test266151307()
        require _4 + _56 + mem[_4 + _56 + 128] + 159 < return_data.size + 96
        _71 = mem[_4 + _56 + mem[_4 + _56 + 128] + 128]
        require mem[_4 + _56 + mem[_4 + _56 + 128] + 128] <= test266151307()
        _84 = mem[64]
        require mem[64] + ceil32(mem[_4 + _56 + mem[_4 + _56 + 128] + 128]) + 32 <= test266151307() and mem[64] + ceil32(mem[_4 + _56 + mem[_4 + _56 + 128] + 128]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(mem[_4 + _56 + mem[_4 + _56 + 128] + 128]) + 32
        mem[_84] = mem[_4 + _56 + mem[_4 + _56 + 128] + 128]
        require _4 + _56 + _61 + _71 + 64 <= return_data.size
        u = 0
        while u < _71:
            mem[_84 + u + 32] = mem[_4 + _56 + _61 + u + 160]
            u = u + 32
            continue 
        if ceil32(_71) > _71:
            mem[_84 + _71 + 32] = 0
        mem[_59] = _84
        require mem[_4 + _56 + 160] == mem[_4 + _56 + 172 len 20]
        mem[_59 + 32] = mem[_4 + _56 + 160]
        mem[t] = _59
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _57 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    _58 = mem[64]
    mem[mem[64]] = mem[ceil32(return_data.size) + 96]
    mem[64] = mem[64] + (32 * _57) + 32
    if not _57:
        _105 = mem[ceil32(return_data.size) + 96]
        idx = 0
        while idx < _105:
            require idx < mem[ceil32(return_data.size) + 96]
            require idx < mem[_58]
            mem[mem[(32 * idx) + _58 + 32]] = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 44 len 20]
            mem[32] = 2
            require idx < mem[ceil32(return_data.size) + 96]
            mem[0] = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 44 len 20]
            mem[32] = sha3(address(msg.sender), 2)
            require idx < mem[_58]
            mem[mem[(32 * idx) + _58 + 32] + 32] = stor2[address(msg.sender)][mem[0]]
            idx = idx + 1
            continue 
        _109 = mem[64]
        mem[mem[64]] = 32
        _120 = mem[_58]
        mem[mem[64] + 32] = mem[_58]
        idx = 0
        s = _58 + 32
        t = mem[64] + 64
        while idx < _120:
            _148 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_148 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _109 + (64 * _120) + -mem[64] + 64
    mem[64] = _58 + (32 * _57) + 96
    mem[_58 + (32 * _57) + 32] = 0
    mem[_58 + (32 * _57) + 64] = 0
    mem[var26001] = _58 + (32 * _57) + 32
    s = var26001
    idx = var26002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[_58 + (32 * _57) + 32] = 0
        mem[_58 + (32 * _57) + 64] = 0
        mem[s + 32] = _58 + (32 * _57) + 32
        s = s + 32
        idx = idx - 1
        continue 
    _171 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _171:
        require idx < mem[ceil32(return_data.size) + 96]
        require idx < mem[_58]
        mem[mem[(32 * idx) + _58 + 32]] = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 44 len 20]
        mem[32] = 2
        require idx < mem[ceil32(return_data.size) + 96]
        mem[0] = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 44 len 20]
        mem[32] = sha3(address(msg.sender), 2)
        require idx < mem[_58]
        mem[mem[(32 * idx) + _58 + 32] + 32] = stor2[address(msg.sender)][mem[0]]
        idx = idx + 1
        continue 
    _173 = mem[64]
    mem[mem[64]] = 32
    _184 = mem[_58]
    mem[mem[64] + 32] = mem[_58]
    idx = 0
    s = _58 + 32
    t = mem[64] + 64
    while idx < _184:
        _190 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_190 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _173 + (64 * _184) + -mem[64] + 64
}



}
