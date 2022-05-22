contract main {




// =====================  Runtime code  =====================


#
#  - DOMAIN_INFO()
#
address owner;
address TKNAddress;
array of struct stor2;
array of struct stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
mapping of uint256 nonces;

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function owner() payable {
    return owner
}

function TKN() payable {
    return TKNAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This function is restricted to owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid address: should not be 0x0'
    emit TransferOwnership(owner, arg1);
    owner = arg1
}

function verify(address arg1, uint256 arg2, uint256 arg3, bytes32 arg4, bytes32 arg5, uint8 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if arg3 != nonces[address(arg1)]:
        revert with 0, 'Wrong nonce!'
    signer = erecover(sha3(0, stor7, sha3(0xc0022caf6b0f0bcf06f43e2ac66f7870524611e504814c0579e13e9afc8a1fa2, arg2, arg3)), arg6 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (arg1 == address(signer))
}

function dispense(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This function is restricted to owner'
    require ext_code.size(TKNAddress)
    call TKNAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'mint() failure. Contact contract owner'
    emit Dispense(arg2, arg1);
    return 1
}

function getInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Invalid address!'
    require ext_code.size(TKNAddress)
    staticcall TKNAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(TKNAddress)
    staticcall TKNAddress.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], ext_call.return_data[0], nonces[address(arg1)]
}

function collect(address arg1, uint256 arg2, uint256 arg3, bytes32 arg4, bytes32 arg5, uint8 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This function is restricted to owner'
    if arg3 != nonces[address(arg1)]:
        revert with 0, 'Wrong nonce!'
    signer = erecover(sha3(0, stor7, sha3(0xc0022caf6b0f0bcf06f43e2ac66f7870524611e504814c0579e13e9afc8a1fa2, arg2, arg3)), arg6 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'Wrong Metamask sign!'
    require ext_code.size(TKNAddress)
    call TKNAddress.burnFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'burnFrom() failure. Make sure that your balance is not lower than the allowance you set'
    if nonces[address(arg1)] > -2:
        revert with 'NH{q', 17
    nonces[address(arg1)]++
    emit Collect(arg2, arg1);
    return 1
}

function USER_DOMAIN_INFO(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 >= stor2.length.field_1:
                    mem[128] = 256 * stor2.length.field_8
                else:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 >= stor2.length.field_1:
                    mem[128] = 256 * stor2.length.field_8
                else:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if bool(stor3.length):
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not stor3.length.field_1:
                    if ceil32(stor2.length.field_1) > stor2.length.field_1:
                        mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
                    if ceil32(stor3.length.field_1) > stor3.length.field_1:
                        mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
                else:
                    if 31 >= stor3.length.field_1:
                        mem[ceil32(stor2.length.field_1) + 160] = 256 * stor3.length.field_8
                    else:
                        mem[ceil32(stor2.length.field_1) + 160] = uint256(stor3.field_0)
                        idx = ceil32(stor2.length.field_1) + 160
                        s = 0
                        while ceil32(stor2.length.field_1) + stor3.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor2.length.field_1) > stor2.length.field_1:
                        mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
                    if ceil32(stor3.length.field_1) > stor3.length.field_1:
                        mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
            else:
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not stor3.length.field_1:
                    if ceil32(stor2.length.field_1) > stor2.length.field_1:
                        mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
                    if ceil32(stor3.length.field_1) > stor3.length.field_1:
                        mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
                else:
                    if 31 >= stor3.length.field_1:
                        mem[ceil32(stor2.length.field_1) + 160] = 256 * stor3.length.field_8
                    else:
                        mem[ceil32(stor2.length.field_1) + 160] = uint256(stor3.field_0)
                        idx = ceil32(stor2.length.field_1) + 160
                        s = 0
                        while ceil32(stor2.length.field_1) + stor3.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor2.length.field_1) > stor2.length.field_1:
                        mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
                    if ceil32(stor3.length.field_1) > stor3.length.field_1:
                        mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
            return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], 2 * Mask(256, -1, stor3.length.field_1), mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]), 
                   ceil32(stor2.length.field_1) + 224,
                   stor4,
                   stor5,
                   stor6,
                   nonces[address(arg1)]
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor3.length.field_1:
                if ceil32(stor2.length.field_1) > stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
                if ceil32(stor3.length.field_1) > stor3.length.field_1:
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
            else:
                if 31 >= stor3.length.field_1:
                    mem[ceil32(stor2.length.field_1) + 160] = 256 * stor3.length.field_8
                else:
                    mem[ceil32(stor2.length.field_1) + 160] = uint256(stor3.field_0)
                    idx = ceil32(stor2.length.field_1) + 160
                    s = 0
                    while ceil32(stor2.length.field_1) + stor3.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor2.length.field_1) > stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
                if ceil32(stor3.length.field_1) > stor3.length.field_1:
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor3.length.field_1:
                if ceil32(stor2.length.field_1) > stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
                if ceil32(stor3.length.field_1) > stor3.length.field_1:
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
            else:
                if 31 >= stor3.length.field_1:
                    mem[ceil32(stor2.length.field_1) + 160] = 256 * stor3.length.field_8
                else:
                    mem[ceil32(stor2.length.field_1) + 160] = uint256(stor3.field_0)
                    idx = ceil32(stor2.length.field_1) + 160
                    s = 0
                    while ceil32(stor2.length.field_1) + stor3.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor2.length.field_1) > stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
                if ceil32(stor3.length.field_1) > stor3.length.field_1:
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], stor3.length % 128, mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]), 
               ceil32(stor2.length.field_1) + 224,
               stor4,
               stor5,
               stor6,
               nonces[address(arg1)]
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 >= stor2.length.field_1:
                mem[128] = 256 * stor2.length.field_8
            else:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 >= stor2.length.field_1:
                mem[128] = 256 * stor2.length.field_8
            else:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor3.length.field_1:
                if ceil32(stor2.length.field_1) > stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
                if ceil32(stor3.length.field_1) > stor3.length.field_1:
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
            else:
                if 31 >= stor3.length.field_1:
                    mem[ceil32(stor2.length.field_1) + 160] = 256 * stor3.length.field_8
                else:
                    mem[ceil32(stor2.length.field_1) + 160] = uint256(stor3.field_0)
                    idx = ceil32(stor2.length.field_1) + 160
                    s = 0
                    while ceil32(stor2.length.field_1) + stor3.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor2.length.field_1) > stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
                if ceil32(stor3.length.field_1) > stor3.length.field_1:
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor3.length.field_1:
                if ceil32(stor2.length.field_1) > stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
                if ceil32(stor3.length.field_1) > stor3.length.field_1:
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
            else:
                if 31 >= stor3.length.field_1:
                    mem[ceil32(stor2.length.field_1) + 160] = 256 * stor3.length.field_8
                else:
                    mem[ceil32(stor2.length.field_1) + 160] = uint256(stor3.field_0)
                    idx = ceil32(stor2.length.field_1) + 160
                    s = 0
                    while ceil32(stor2.length.field_1) + stor3.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor2.length.field_1) > stor2.length.field_1:
                    mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
                if ceil32(stor3.length.field_1) > stor3.length.field_1:
                    mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
        return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], 2 * Mask(256, -1, stor3.length.field_1), mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]), 
               ceil32(stor2.length.field_1) + 224,
               stor4,
               stor5,
               stor6,
               nonces[address(arg1)]
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor3.length.field_1:
            if ceil32(stor2.length.field_1) > stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
            mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
            mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
            if ceil32(stor3.length.field_1) > stor3.length.field_1:
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
        else:
            if 31 >= stor3.length.field_1:
                mem[ceil32(stor2.length.field_1) + 160] = 256 * stor3.length.field_8
            else:
                mem[ceil32(stor2.length.field_1) + 160] = uint256(stor3.field_0)
                idx = ceil32(stor2.length.field_1) + 160
                s = 0
                while ceil32(stor2.length.field_1) + stor3.length.field_1 + 128 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor2.length.field_1) > stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
            mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
            mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
            if ceil32(stor3.length.field_1) > stor3.length.field_1:
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor3.length.field_1:
            if ceil32(stor2.length.field_1) > stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
            mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
            mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
            if ceil32(stor3.length.field_1) > stor3.length.field_1:
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
        else:
            if 31 >= stor3.length.field_1:
                mem[ceil32(stor2.length.field_1) + 160] = 256 * stor3.length.field_8
            else:
                mem[ceil32(stor2.length.field_1) + 160] = uint256(stor3.field_0)
                idx = ceil32(stor2.length.field_1) + 160
                s = 0
                while ceil32(stor2.length.field_1) + stor3.length.field_1 + 128 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor2.length.field_1) > stor2.length.field_1:
                mem[ceil32(stor2.length.field_1) + ceil32(stor3.length.field_1) + stor2.length.field_1 + 384] = 0
            mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 384] = stor3.length.field_1
            mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + 416 len ceil32(stor3.length.field_1)] = mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]
            if ceil32(stor3.length.field_1) > stor3.length.field_1:
                mem[(2 * ceil32(stor2.length.field_1)) + ceil32(stor3.length.field_1) + stor3.length.field_1 + 416] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], stor3.length % 128, mem[ceil32(stor2.length.field_1) + 160 len ceil32(stor3.length.field_1)]), 
           ceil32(stor2.length.field_1) + 224,
           stor4,
           stor5,
           stor6,
           nonces[address(arg1)]
}



}
