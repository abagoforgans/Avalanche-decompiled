contract main {




// =====================  Runtime code  =====================


address governorAddress; offset 16
uint256 stor0; offset 16
address pendingGovernorAddress;
mapping of uint256 eTHPx;

function governor() payable {
    return address(governorAddress)
}

function getETHPx(address arg1) payable {
    require calldata.size - 4 >= 32
    if not eTHPx[address(arg1)]:
        revert with 0, 'no px'
    return eTHPx[address(arg1)]
}

function prices(address arg1) payable {
    require calldata.size - 4 >= 32
    return eTHPx[arg1]
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function _fallback() payable {
    revert
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    pendingGovernorAddress = arg1
    emit SetPendingGovernor(arg1);
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0, 'not the pending governor'
    pendingGovernorAddress = 0
    Mask(240, 0, stor0) = Mask(240, 0, msg.sender)
    emit AcceptGovernor(msg.sender);
}

function sub_31f4ebcf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if arg1.length != arg2.length:
        revert with 0, 'inconsistent length'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 66
        eTHPx[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        require idx < arg2.length
        _30 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = _30
        emit SetETHPx(mem[(32 * arg1.length) + (32 * arg2.length) + 160], _30);
        idx = idx + 1
        continue 
}



}
