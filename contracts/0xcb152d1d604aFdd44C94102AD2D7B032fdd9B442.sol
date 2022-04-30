contract main {




// =====================  Runtime code  =====================


mapping of uint256 wards;
mapping of address lerps;
array of struct active;

function count() payable {
    return active.length
}

function lerps(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return lerps[arg1]
}

function active(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < active.length
    return active[arg1].field_0
}

function wards(address arg1) payable {
    require calldata.size - 4 >= 32
    return wards[arg1]
}

function tall() payable {
    # nil
}

function _fallback() payable {
    revert
}

function rely(address arg1) payable {
    require calldata.size - 4 >= 32
    if wards[address(msg.sender)] != 1:
        revert with 0, 'LerpFactory/not-authorized'
    wards[address(arg1)] = 1
    emit Rely(arg1);
}

function deny(address arg1) payable {
    require calldata.size - 4 >= 32
    if wards[address(msg.sender)] != 1:
        revert with 0, 'LerpFactory/not-authorized'
    wards[address(arg1)] = 0
    emit Deny(arg1);
}

function newLerp(bytes32 arg1, address arg2, bytes32 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    if wards[address(msg.sender)] != 1:
        revert with 0, 'LerpFactory/not-authorized'
    create contract with 0 wei
                    code: code.data[4073 len 2478], address(arg2), arg3, arg4, arg5, arg6, arg7
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    lerps[arg1] = address(create.new_address)
    active.length++
    active[active.length].field_0 = address(create.new_address)
    emit NewLerp(arg1, arg3, arg4, arg5, arg6, arg7, arg2);
    return address(create.new_address)
}

function newIlkLerp(bytes32 arg1, address arg2, bytes32 arg3, bytes32 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) payable {
    require calldata.size - 4 >= 256
    if wards[address(msg.sender)] != 1:
        revert with 0, 'LerpFactory/not-authorized'
    create contract with 0 wei
                    code: code.data[6551 len 2630], address(arg2), arg3, arg4, arg5, arg6, arg7, arg8
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    lerps[arg1] = address(create.new_address)
    active.length++
    active[active.length].field_0 = address(create.new_address)
    emit NewIlkLerp(arg1, arg3, arg4, arg5, arg6, arg7, arg8, arg2);
    return address(create.new_address)
}

function list() payable {
    if not active.length:
        mem[(32 * active.length) + 128] = 32
        mem[(32 * active.length) + 160] = active.length
        mem[(32 * active.length) + 192 len floor32(active.length)] = mem[128 len floor32(active.length)]
        return memory
          from (32 * active.length) + 128
           len (96 * active.length) + 64
    mem[128] = address(active.field_0)
    idx = 128
    s = 0
    while (32 * active.length) + 96 > idx:
        mem[idx + 32] = active[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * active.length) + 192 len floor32(active.length)] = mem[128 len floor32(active.length)]
    return Array(len=active.length, data=mem[128 len floor32(active.length)], mem[(32 * active.length) + floor32(active.length) + 192 len (32 * active.length) - floor32(active.length)]), 
}



}
