contract main {




// =====================  Runtime code  =====================


address owner;
address tokenConverterAddress;
mapping of struct sub_2b3cf787;

function sub_2b3cf787(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2b3cf787[arg1].field_0, 
           sub_2b3cf787[arg1].field_256,
           sub_2b3cf787[arg1].field_512,
           sub_2b3cf787[arg1].field_768,
           sub_2b3cf787[arg1].field_1024,
           sub_2b3cf787[arg1].field_1280,
           sub_2b3cf787[arg1].field_1536,
           sub_2b3cf787[arg1].field_1792,
           sub_2b3cf787[arg1].field_2048,
           sub_2b3cf787[arg1].field_2304,
           sub_2b3cf787[arg1].field_2560,
           sub_2b3cf787[arg1].field_2816
}

function owner() payable {
    return owner
}

function tokenConverter() payable {
    return tokenConverterAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTokenConverter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenConverterAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_59e841b3(?) payable {
    require calldata.size - 4 >= 352
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[260] <= test266151307()
    require cd[260] + 35 < calldata.size
    if ('cd', 260).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 260).length) + 97 > test266151307() or ceil32(32 * ('cd', 260).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 260).length
    require (32 * ('cd', 260).length) + cd[260] + 36 <= calldata.size
    idx = cd[260] + 36
    s = 128
    while idx < (32 * ('cd', 260).length) + cd[260] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[292] == address(cd[292])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2b3cf787[address(cd[4])].field_0 = address(cd[36])
    sub_2b3cf787[address(cd[4])].field_256 = address(cd[68])
    sub_2b3cf787[address(cd[4])].field_768 = cd[100]
    sub_2b3cf787[address(cd[4])].field_1024 = cd[132]
    sub_2b3cf787[address(cd[4])].field_1280 = cd[164]
    sub_2b3cf787[address(cd[4])].field_1536 = cd[196]
    sub_2b3cf787[address(cd[4])].field_1792 = cd[228]
    sub_2b3cf787[address(cd[4])].field_2048 = address(cd[292])
    sub_2b3cf787[address(cd[4])].field_2816 = cd[324]
    staticcall address(cd[292]).factory() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 260).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(32 * ('cd', 260).length) + ceil32(return_data.size) + 101] = address(cd[36])
    mem[ceil32(32 * ('cd', 260).length) + ceil32(return_data.size) + 133] = address(cd[4])
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(cd[36]), address(cd[4])
    mem[ceil32(32 * ('cd', 260).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    idx = 0
    while idx < ('cd', 260).length:
        if idx >= ('cd', 260).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(cd[4]), 2) + 14
        sub_2b3cf787[address(cd[4])][14][mem[(32 * idx) + 140 len 20]].field_0 = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not ext_call.return_data[12 len 20]:
        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(cd[36]), address(cd[4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_2b3cf787[address(cd[4])].field_2304 = ext_call.return_data[12 len 20]
}

function _SolveQuadraticFunctionForTrade(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not sub_2b3cf787[msg.sender].field_256:
        revert with 0, 'Illegal msg.sender'
    if not sub_2b3cf787[address(msg.sender)].field_512:
        if not arg4:
            return 0
        if address(arg2) == address(arg3):
            return 0
        if sub_2b3cf787[address(msg.sender)].field_2304 != address(arg3):
            if sub_2b3cf787[address(msg.sender)][14][address(arg2)].field_0:
                if sub_2b3cf787[address(msg.sender)].field_2560 == -1:
                    revert with 0, 17
                sub_2b3cf787[address(msg.sender)].field_2560++
            else:
                if sub_2b3cf787[address(msg.sender)][14][address(arg3)].field_0:
                    if sub_2b3cf787[address(msg.sender)].field_2560 == -1:
                        revert with 0, 17
                    sub_2b3cf787[address(msg.sender)].field_2560++
                else:
                    if sub_2b3cf787[address(msg.sender)][14][tx.origin].field_0:
                        if sub_2b3cf787[address(msg.sender)].field_2560 == -1:
                            revert with 0, 17
                        sub_2b3cf787[address(msg.sender)].field_2560++
                    else:
                        if sub_2b3cf787[address(msg.sender)].field_2560 < sub_2b3cf787[address(msg.sender)].field_2816:
                            return 0
                        staticcall tokenConverterAddress.0x9428f139 with:
                                gas gas_remaining wei
                               args msg.sender, arg4, sub_2b3cf787[address(msg.sender)].field_2304
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_2b3cf787[address(msg.sender)].field_2304 == address(arg1):
                            if sub_2b3cf787[address(msg.sender)].field_2304 == address(arg2):
                                if ext_call.return_data[0] > sub_2b3cf787[address(msg.sender)].field_1024:
                                    return 0
                                if sub_2b3cf787[address(msg.sender)].field_1536 > !sub_2b3cf787[address(msg.sender)][12][tx.origin].field_0:
                                    revert with 0, 17
                                if block.timestamp < sub_2b3cf787[address(msg.sender)].field_1536 + sub_2b3cf787[address(msg.sender)][12][tx.origin].field_0:
                                    return 0
                                sub_2b3cf787[address(msg.sender)][12][tx.origin].field_0 = block.timestamp
                        if sub_2b3cf787[address(msg.sender)].field_2048 == address(arg1):
                            if sub_2b3cf787[address(msg.sender)].field_2304 == address(arg3):
                                if ext_call.return_data[0] > sub_2b3cf787[address(msg.sender)].field_1280:
                                    return 0
                                if sub_2b3cf787[address(msg.sender)].field_1792 > !sub_2b3cf787[address(msg.sender)][13][address(arg2)].field_0:
                                    revert with 0, 17
                                if block.timestamp < sub_2b3cf787[address(msg.sender)].field_1792 + sub_2b3cf787[address(msg.sender)][13][address(arg2)].field_0:
                                    return 0
                                sub_2b3cf787[address(msg.sender)][13][address(arg2)].field_0 = block.timestamp
        else:
            if not sub_2b3cf787[address(msg.sender)].field_512:
                if sub_2b3cf787[address(msg.sender)].field_256 != address(arg2):
                    return 0
                sub_2b3cf787[address(msg.sender)].field_512 = block.timestamp
            else:
                if sub_2b3cf787[address(msg.sender)][14][address(arg2)].field_0:
                    if sub_2b3cf787[address(msg.sender)].field_2560 == -1:
                        revert with 0, 17
                    sub_2b3cf787[address(msg.sender)].field_2560++
                else:
                    if sub_2b3cf787[address(msg.sender)][14][address(arg3)].field_0:
                        if sub_2b3cf787[address(msg.sender)].field_2560 == -1:
                            revert with 0, 17
                        sub_2b3cf787[address(msg.sender)].field_2560++
                    else:
                        if sub_2b3cf787[address(msg.sender)][14][tx.origin].field_0:
                            if sub_2b3cf787[address(msg.sender)].field_2560 == -1:
                                revert with 0, 17
                            sub_2b3cf787[address(msg.sender)].field_2560++
                        else:
                            if sub_2b3cf787[address(msg.sender)].field_2560 < sub_2b3cf787[address(msg.sender)].field_2816:
                                return 0
                            staticcall tokenConverterAddress.0x9428f139 with:
                                    gas gas_remaining wei
                                   args msg.sender, arg4, sub_2b3cf787[address(msg.sender)].field_2304
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if sub_2b3cf787[address(msg.sender)].field_2304 == address(arg1):
                                if sub_2b3cf787[address(msg.sender)].field_2304 == address(arg2):
                                    if ext_call.return_data[0] > sub_2b3cf787[address(msg.sender)].field_1024:
                                        return 0
                                    if sub_2b3cf787[address(msg.sender)].field_1536 > !sub_2b3cf787[address(msg.sender)][12][tx.origin].field_0:
                                        revert with 0, 17
                                    if block.timestamp < sub_2b3cf787[address(msg.sender)].field_1536 + sub_2b3cf787[address(msg.sender)][12][tx.origin].field_0:
                                        return 0
                                    sub_2b3cf787[address(msg.sender)][12][tx.origin].field_0 = block.timestamp
                            if sub_2b3cf787[address(msg.sender)].field_2048 == address(arg1):
                                if sub_2b3cf787[address(msg.sender)].field_2304 == address(arg3):
                                    if ext_call.return_data[0] > sub_2b3cf787[address(msg.sender)].field_1280:
                                        return 0
                                    if sub_2b3cf787[address(msg.sender)].field_1792 > !sub_2b3cf787[address(msg.sender)][13][address(arg2)].field_0:
                                        revert with 0, 17
                                    if block.timestamp < sub_2b3cf787[address(msg.sender)].field_1792 + sub_2b3cf787[address(msg.sender)][13][address(arg2)].field_0:
                                        return 0
                                    sub_2b3cf787[address(msg.sender)][13][address(arg2)].field_0 = block.timestamp
    else:
        if sub_2b3cf787[address(msg.sender)].field_512 > !sub_2b3cf787[address(msg.sender)].field_768:
            revert with 0, 17
        if block.timestamp <= sub_2b3cf787[address(msg.sender)].field_512 + sub_2b3cf787[address(msg.sender)].field_768:
            if not arg4:
                return 0
            if address(arg2) == address(arg3):
                return 0
            if sub_2b3cf787[address(msg.sender)].field_2304 != address(arg3):
                if sub_2b3cf787[address(msg.sender)][14][address(arg2)].field_0:
                    if sub_2b3cf787[address(msg.sender)].field_2560 == -1:
                        revert with 0, 17
                    sub_2b3cf787[address(msg.sender)].field_2560++
                else:
                    if sub_2b3cf787[address(msg.sender)][14][address(arg3)].field_0:
                        if sub_2b3cf787[address(msg.sender)].field_2560 == -1:
                            revert with 0, 17
                        sub_2b3cf787[address(msg.sender)].field_2560++
                    else:
                        if sub_2b3cf787[address(msg.sender)][14][tx.origin].field_0:
                            if sub_2b3cf787[address(msg.sender)].field_2560 == -1:
                                revert with 0, 17
                            sub_2b3cf787[address(msg.sender)].field_2560++
                        else:
                            if sub_2b3cf787[address(msg.sender)].field_2560 < sub_2b3cf787[address(msg.sender)].field_2816:
                                return 0
                            staticcall tokenConverterAddress.0x9428f139 with:
                                    gas gas_remaining wei
                                   args msg.sender, arg4, sub_2b3cf787[address(msg.sender)].field_2304
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if sub_2b3cf787[address(msg.sender)].field_2304 == address(arg1):
                                if sub_2b3cf787[address(msg.sender)].field_2304 == address(arg2):
                                    if ext_call.return_data[0] > sub_2b3cf787[address(msg.sender)].field_1024:
                                        return 0
                                    if sub_2b3cf787[address(msg.sender)].field_1536 > !sub_2b3cf787[address(msg.sender)][12][tx.origin].field_0:
                                        revert with 0, 17
                                    if block.timestamp < sub_2b3cf787[address(msg.sender)].field_1536 + sub_2b3cf787[address(msg.sender)][12][tx.origin].field_0:
                                        return 0
                                    sub_2b3cf787[address(msg.sender)][12][tx.origin].field_0 = block.timestamp
                            if sub_2b3cf787[address(msg.sender)].field_2048 == address(arg1):
                                if sub_2b3cf787[address(msg.sender)].field_2304 == address(arg3):
                                    if ext_call.return_data[0] > sub_2b3cf787[address(msg.sender)].field_1280:
                                        return 0
                                    if sub_2b3cf787[address(msg.sender)].field_1792 > !sub_2b3cf787[address(msg.sender)][13][address(arg2)].field_0:
                                        revert with 0, 17
                                    if block.timestamp < sub_2b3cf787[address(msg.sender)].field_1792 + sub_2b3cf787[address(msg.sender)][13][address(arg2)].field_0:
                                        return 0
                                    sub_2b3cf787[address(msg.sender)][13][address(arg2)].field_0 = block.timestamp
            else:
                if not sub_2b3cf787[address(msg.sender)].field_512:
                    if sub_2b3cf787[address(msg.sender)].field_256 != address(arg2):
                        return 0
                    sub_2b3cf787[address(msg.sender)].field_512 = block.timestamp
                else:
                    if sub_2b3cf787[address(msg.sender)][14][address(arg2)].field_0:
                        if sub_2b3cf787[address(msg.sender)].field_2560 == -1:
                            revert with 0, 17
                        sub_2b3cf787[address(msg.sender)].field_2560++
                    else:
                        if sub_2b3cf787[address(msg.sender)][14][address(arg3)].field_0:
                            if sub_2b3cf787[address(msg.sender)].field_2560 == -1:
                                revert with 0, 17
                            sub_2b3cf787[address(msg.sender)].field_2560++
                        else:
                            if sub_2b3cf787[address(msg.sender)][14][tx.origin].field_0:
                                if sub_2b3cf787[address(msg.sender)].field_2560 == -1:
                                    revert with 0, 17
                                sub_2b3cf787[address(msg.sender)].field_2560++
                            else:
                                if sub_2b3cf787[address(msg.sender)].field_2560 < sub_2b3cf787[address(msg.sender)].field_2816:
                                    return 0
                                staticcall tokenConverterAddress.0x9428f139 with:
                                        gas gas_remaining wei
                                       args msg.sender, arg4, sub_2b3cf787[address(msg.sender)].field_2304
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if sub_2b3cf787[address(msg.sender)].field_2304 == address(arg1):
                                    if sub_2b3cf787[address(msg.sender)].field_2304 == address(arg2):
                                        if ext_call.return_data[0] > sub_2b3cf787[address(msg.sender)].field_1024:
                                            return 0
                                        if sub_2b3cf787[address(msg.sender)].field_1536 > !sub_2b3cf787[address(msg.sender)][12][tx.origin].field_0:
                                            revert with 0, 17
                                        if block.timestamp < sub_2b3cf787[address(msg.sender)].field_1536 + sub_2b3cf787[address(msg.sender)][12][tx.origin].field_0:
                                            return 0
                                        sub_2b3cf787[address(msg.sender)][12][tx.origin].field_0 = block.timestamp
                                if sub_2b3cf787[address(msg.sender)].field_2048 == address(arg1):
                                    if sub_2b3cf787[address(msg.sender)].field_2304 == address(arg3):
                                        if ext_call.return_data[0] > sub_2b3cf787[address(msg.sender)].field_1280:
                                            return 0
                                        if sub_2b3cf787[address(msg.sender)].field_1792 > !sub_2b3cf787[address(msg.sender)][13][address(arg2)].field_0:
                                            revert with 0, 17
                                        if block.timestamp < sub_2b3cf787[address(msg.sender)].field_1792 + sub_2b3cf787[address(msg.sender)][13][address(arg2)].field_0:
                                            return 0
                                        sub_2b3cf787[address(msg.sender)][13][address(arg2)].field_0 = block.timestamp
    return 1
}



}
