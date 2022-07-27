contract main {




// =====================  Runtime code  =====================


address owner;
address sub_ebb7fbd1Address;
address sub_f94ec038Address;

function owner() {
    return owner
}

function sub_ebb7fbd1(?) {
    return sub_ebb7fbd1Address
}

function sub_f94ec038(?) {
    return sub_f94ec038Address
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function claimRewards(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(sub_ebb7fbd1Address)
    call sub_ebb7fbd1Address.0x5794bd8e with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
        revert with 'NH{q', 65
    require (32 * arg3.length) + arg3 + 36 <= calldata.size
    s = 128
    idx = arg3 + 36
    while idx < (32 * arg3.length) + arg3 + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 'NH{q', 65
    require (32 * arg4.length) + arg4 + 36 <= calldata.size
    s = ceil32(32 * arg3.length) + 129
    idx = arg4 + 36
    while idx < (32 * arg4.length) + arg4 + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall sub_f94ec038Address.0xdedf14b0 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'DropRewardEscrow: not approved in registry'
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'DropRewardEscrow: not a token contract owner'
    staticcall sub_ebb7fbd1Address.0x65f68c89 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_ebb7fbd1Address)
    call sub_ebb7fbd1Address.0x46e04a2f with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall sub_ebb7fbd1Address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args this.address, ext_call.return_data[0]
    require return_data.size >= 32
    require ext_code.size(sub_ebb7fbd1Address)
    call sub_ebb7fbd1Address.0xf242432a with:
         gas gas_remaining wei
        args this.address, address(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[0], 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xbc197c81(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xf23a6e61(?????) <= uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0xf23a6e61(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        require unknown_0xf94ec038(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_f94ec038Address
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(cd[4])
                    emit OwnershipTransferred(owner, address(cd[4]));
                require not msg.value
                require calldata.size - 4 >= 160
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[132] <= test266151307()
                require cd[132] + 35 < calldata.size
                if ('cd', 132).length > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(('cd', 132).length)) + 129 < 128 or ceil32(ceil32(('cd', 132).length)) + 129 > test266151307():
                    revert with 'NH{q', 65
                require cd[132] + ('cd', 132).length + 36 <= calldata.size
                return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
            if uint32(call.func_hash) >> 224 != unknown_0xbc197c81(?????):
                require unknown_0xebb7fbd1(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_ebb7fbd1Address
            require not msg.value
            require calldata.size - 4 >= 160
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require cd[68] <= test266151307()
            require cd[68] + 35 < calldata.size
            if ('cd', 68).length > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * ('cd', 68).length) + 129 < 128 or ceil32(32 * ('cd', 68).length) + 129 > test266151307():
                revert with 'NH{q', 65
            require (32 * ('cd', 68).length) + cd[68] + 36 <= calldata.size
            s = 160
            idx = cd[68] + 36
            while idx < (32 * ('cd', 68).length) + cd[68] + 36:
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            require cd[100] <= test266151307()
            require cd[100] + 35 < calldata.size
            if ('cd', 100).length > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * ('cd', 100).length) + 130 < 129 or ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130 > test266151307():
                revert with 'NH{q', 65
            require (32 * ('cd', 100).length) + cd[100] + 36 <= calldata.size
            s = ceil32(32 * ('cd', 68).length) + 161
            idx = cd[100] + 36
            while idx < (32 * ('cd', 100).length) + cd[100] + 36:
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            require cd[132] <= test266151307()
            require cd[132] + 35 < calldata.size
            if ('cd', 132).length > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(('cd', 132).length)) + 131 < 130 or ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + ceil32(ceil32(('cd', 132).length)) + 131 > test266151307():
                revert with 'NH{q', 65
            require cd[132] + ('cd', 132).length + 36 <= calldata.size
            return 0xbc197c8100000000000000000000000000000000000000000000000000000000
        if unknown_0x5eac6239(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x5eac6239(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                    require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return owner
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            else:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                require ext_code.size(sub_ebb7fbd1Address)
                call sub_ebb7fbd1Address.0x5794bd8e with:
                     gas gas_remaining wei
                    args Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len 32 * ('cd', 4).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
        else:
            if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == Mask(32, 224, cd[4])
                if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                    return True
                return (Mask(32, 224, cd[4]) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
            require unknown_0x49df728c(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            staticcall sub_f94ec038Address.0xdedf14b0 with:
                    gas gas_remaining wei
                   args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'DropRewardEscrow: not approved in registry'
            staticcall address(cd[4]).0x8da5cb5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'DropRewardEscrow: not a token contract owner'
            staticcall sub_ebb7fbd1Address.0x65f68c89 with:
                    gas gas_remaining wei
                   args address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_ebb7fbd1Address)
            call sub_ebb7fbd1Address.0x46e04a2f with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall sub_ebb7fbd1Address.balanceOf(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args this.address, ext_call.return_data[0]
            require return_data.size >= 32
            require ext_code.size(sub_ebb7fbd1Address)
            call sub_ebb7fbd1Address.0xf242432a with:
                 gas gas_remaining wei
                args this.address, address(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[0], 160, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
