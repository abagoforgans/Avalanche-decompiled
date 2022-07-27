contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address nFTContractAddress;
uint8 stor2; offset 160
address sub_d17cd93eAddress;
mapping of struct stakings;

function NFTContract() payable {
    return nFTContractAddress
}

function stakings(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return stakings[arg1].field_0, 
           stakings[arg1].field_256,
           stakings[arg1].field_512,
           stakings[arg1].field_768,
           stakings[arg1].field_1024
}

function sub_d17cd93e(?) payable {
    return sub_d17cd93eAddress
}

function _fallback() payable {
    revert
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= 3:
        revert with 0, 'Token ID should be less than 3'
    staticcall nFTContractAddress.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'You do not own this node!'
    stakings[stor0].field_0 = msg.sender
    stakings[stor0].field_256 = arg1
    stakings[stor0].field_512 = ext_call.return_data[0]
    stakings[stor0].field_768 = block.timestamp
    stakings[stor0].field_1024 = block.timestamp
    require ext_code.size(nFTContractAddress)
    call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1, ext_call.return_data[0], 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor0 == -1:
        revert with 0, 17
    stor0++
    emit staked(arg1, ext_call.return_data[0], stor0, msg.sender);
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Token ID should be less than 3 (0, 1, 2 : we have only 3 nodes)'
    idx = 0
    while idx < stor0:
        mem[0] = idx
        mem[32] = 3
        if stakings[idx].field_0 != msg.sender:
            if 1 > !idx:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stakings[idx].field_256 != arg1:
            if 1 > !idx:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stakings[idx].field_512 <= 0:
            if 1 > !idx:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= stor0:
            revert with 0, 'You've not staked this node yet'
        mem[256] = 30
        mem[288] = 510
        mem[320] = 7800
        if block.timestamp < stakings[idx].field_1024:
            revert with 0, 17
        if stakings[idx].field_256 >= 3:
            revert with 0, 50
        if mem[(32 * stakings[idx].field_256) + 256] and stakings[idx].field_512 > -1 / mem[(32 * stakings[idx].field_256) + 256]:
            revert with 0, 17
        if block.timestamp - stakings[idx].field_1024 >= 720 * 24 * 3600:
            if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 150 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                revert with 0, 17
            if 150 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 150 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                revert with 0, 17
            if not stor2:
                if (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                    revert with 0, 17
                stakings[idx].field_1024 = block.timestamp
                call sub_d17cd93eAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stakings[idx].field_0, (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
            else:
                if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                    if 10^stor2 and (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                        revert with 0, 17
                    stakings[idx].field_1024 = block.timestamp
                    call sub_d17cd93eAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stakings[idx].field_0, 10^stor2 * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, 10^stor2 * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                else:
                    t = 10
                    u = 1
                    s = stor2
                    while s > 1:
                        if t > -1 / t:
                            revert with 0, 17
                        if not bool(s):
                            t = t * t
                            u = u
                            s = uint255(s) * 0.5
                            continue 
                        t = t * t
                        u = t * u
                        s = uint255(s) * 0.5
                        continue 
                    if u > -1 / t:
                        revert with 0, 17
                    if t * u and (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                        revert with 0, 17
                    stakings[idx].field_1024 = block.timestamp
                    call sub_d17cd93eAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stakings[idx].field_0, t * u * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, t * u * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
        else:
            if block.timestamp - stakings[idx].field_1024 >= 480 * 24 * 3600:
                if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 130 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                    revert with 0, 17
                if 130 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 130 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                    revert with 0, 17
                if not stor2:
                    if (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                        revert with 0, 17
                    stakings[idx].field_1024 = block.timestamp
                    call sub_d17cd93eAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stakings[idx].field_0, (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                else:
                    if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                        if 10^stor2 and (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                            revert with 0, 17
                        stakings[idx].field_1024 = block.timestamp
                        call sub_d17cd93eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stakings[idx].field_0, 10^stor2 * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, 10^stor2 * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                    else:
                        t = 10
                        u = 1
                        s = stor2
                        while s > 1:
                            if t > -1 / t:
                                revert with 0, 17
                            if not bool(s):
                                t = t * t
                                u = u
                                s = uint255(s) * 0.5
                                continue 
                            t = t * t
                            u = t * u
                            s = uint255(s) * 0.5
                            continue 
                        if u > -1 / t:
                            revert with 0, 17
                        if t * u and (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                            revert with 0, 17
                        stakings[idx].field_1024 = block.timestamp
                        call sub_d17cd93eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stakings[idx].field_0, t * u * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, t * u * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
            else:
                if block.timestamp - stakings[idx].field_1024 >= 240 * 24 * 3600:
                    if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 115 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                        revert with 0, 17
                    if 115 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 115 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                        revert with 0, 17
                    if not stor2:
                        if (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                            revert with 0, 17
                        stakings[idx].field_1024 = block.timestamp
                        call sub_d17cd93eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stakings[idx].field_0, (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                    else:
                        if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                            if 10^stor2 and (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                revert with 0, 17
                            stakings[idx].field_1024 = block.timestamp
                            call sub_d17cd93eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stakings[idx].field_0, 10^stor2 * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, 10^stor2 * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                        else:
                            t = 10
                            u = 1
                            s = stor2
                            while s > 1:
                                if t > -1 / t:
                                    revert with 0, 17
                                if not bool(s):
                                    t = t * t
                                    u = u
                                    s = uint255(s) * 0.5
                                    continue 
                                t = t * t
                                u = t * u
                                s = uint255(s) * 0.5
                                continue 
                            if u > -1 / t:
                                revert with 0, 17
                            if t * u and (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                                revert with 0, 17
                            stakings[idx].field_1024 = block.timestamp
                            call sub_d17cd93eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stakings[idx].field_0, t * u * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, t * u * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                else:
                    if block.timestamp - stakings[idx].field_1024 < 120 * 24 * 3600:
                        if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 100 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                            revert with 0, 17
                        if 100 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 100 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                            revert with 0, 17
                        if not stor2:
                            if (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                                revert with 0, 17
                            stakings[idx].field_1024 = block.timestamp
                            call sub_d17cd93eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stakings[idx].field_0, (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                        else:
                            if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                                if 10^stor2 and (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                    revert with 0, 17
                                stakings[idx].field_1024 = block.timestamp
                                call sub_d17cd93eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stakings[idx].field_0, 10^stor2 * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, 10^stor2 * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            else:
                                t = 10
                                u = 1
                                s = stor2
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 0, 17
                                    if not bool(s):
                                        t = t * t
                                        u = u
                                        s = uint255(s) * 0.5
                                        continue 
                                    t = t * t
                                    u = t * u
                                    s = uint255(s) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 0, 17
                                if t * u and (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                                    revert with 0, 17
                                stakings[idx].field_1024 = block.timestamp
                                call sub_d17cd93eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stakings[idx].field_0, t * u * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, t * u * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                    else:
                        if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 105 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                            revert with 0, 17
                        if 105 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 105 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                            revert with 0, 17
                        if not stor2:
                            if (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                                revert with 0, 17
                            stakings[idx].field_1024 = block.timestamp
                            call sub_d17cd93eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stakings[idx].field_0, (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                        else:
                            if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                                if 10^stor2 and (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                    revert with 0, 17
                                stakings[idx].field_1024 = block.timestamp
                                call sub_d17cd93eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stakings[idx].field_0, 10^stor2 * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, 10^stor2 * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            else:
                                t = 10
                                u = 1
                                s = stor2
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 0, 17
                                    if not bool(s):
                                        t = t * t
                                        u = u
                                        s = uint255(s) * 0.5
                                        continue 
                                    t = t * t
                                    u = t * u
                                    s = uint255(s) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 0, 17
                                if t * u and (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                                    revert with 0, 17
                                stakings[idx].field_1024 = block.timestamp
                                call sub_d17cd93eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stakings[idx].field_0, t * u * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, t * u * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
    revert with 0, 'You've not staked this node yet'
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Token ID should be less than 3 (0, 1, 2 : we have only 3 nodes)'
    idx = 0
    while idx < stor0:
        mem[0] = idx
        mem[32] = 3
        if stakings[idx].field_0 != msg.sender:
            if 1 > !idx:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stakings[idx].field_256 != arg1:
            if 1 > !idx:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stakings[idx].field_512 <= 0:
            if 1 > !idx:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= stor0:
            revert with 0, 'You've not staked this node yet'
        if stakings[idx].field_512 > stakings[idx].field_512:
            revert with 0, 'You have less stake balance'
        mem[256] = 30
        mem[288] = 510
        mem[320] = 7800
        if block.timestamp < stakings[idx].field_1024:
            revert with 0, 17
        if stakings[idx].field_256 >= 3:
            revert with 0, 50
        if mem[(32 * stakings[idx].field_256) + 256] and stakings[idx].field_512 > -1 / mem[(32 * stakings[idx].field_256) + 256]:
            revert with 0, 17
        if block.timestamp - stakings[idx].field_1024 >= 720 * 24 * 3600:
            if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 150 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                revert with 0, 17
            if 150 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 150 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                revert with 0, 17
            if not stor2:
                if (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                    revert with 0, 17
                stakings[idx].field_1024 = block.timestamp
                call sub_d17cd93eAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stakings[idx].field_0, (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                if stakings[idx].field_512 < stakings[idx].field_512:
                    revert with 0, 17
                stakings[idx].field_512 = 0
                require ext_code.size(nFTContractAddress)
                call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args address(this.address), stakings[idx].field_0, stakings[idx].field_256, stakings[idx].field_512, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xf27a0c4c: stakings[idx].field_256, stakings[idx].field_512, stakings[idx].field_512, (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100, stakings[idx].field_0
            else:
                if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                    if 10^stor2 and (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                        revert with 0, 17
                    stakings[idx].field_1024 = block.timestamp
                    call sub_d17cd93eAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stakings[idx].field_0, 10^stor2 * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, 10^stor2 * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                    if stakings[idx].field_512 < stakings[idx].field_512:
                        revert with 0, 17
                    stakings[idx].field_512 = 0
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), stakings[idx].field_0, stakings[idx].field_256, stakings[idx].field_512, 160, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xf27a0c4c: stakings[idx].field_256, stakings[idx].field_512, stakings[idx].field_512, 10^stor2 * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100, stakings[idx].field_0
                else:
                    t = 10
                    u = 1
                    s = stor2
                    while s > 1:
                        if t > -1 / t:
                            revert with 0, 17
                        if not bool(s):
                            t = t * t
                            u = u
                            s = uint255(s) * 0.5
                            continue 
                        t = t * t
                        u = t * u
                        s = uint255(s) * 0.5
                        continue 
                    if u > -1 / t:
                        revert with 0, 17
                    if t * u and (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                        revert with 0, 17
                    stakings[idx].field_1024 = block.timestamp
                    call sub_d17cd93eAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stakings[idx].field_0, t * u * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, t * u * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                    if stakings[idx].field_512 < stakings[idx].field_512:
                        revert with 0, 17
                    stakings[idx].field_512 = 0
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), stakings[idx].field_0, stakings[idx].field_256, stakings[idx].field_512, 160, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xf27a0c4c: stakings[idx].field_256, stakings[idx].field_512, stakings[idx].field_512, t * u * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100, stakings[idx].field_0
        else:
            if block.timestamp - stakings[idx].field_1024 >= 480 * 24 * 3600:
                if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 130 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                    revert with 0, 17
                if 130 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 130 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                    revert with 0, 17
                if not stor2:
                    if (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                        revert with 0, 17
                    stakings[idx].field_1024 = block.timestamp
                    call sub_d17cd93eAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args stakings[idx].field_0, (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                    if stakings[idx].field_512 < stakings[idx].field_512:
                        revert with 0, 17
                    stakings[idx].field_512 = 0
                    require ext_code.size(nFTContractAddress)
                    call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), stakings[idx].field_0, stakings[idx].field_256, stakings[idx].field_512, 160, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0xf27a0c4c: stakings[idx].field_256, stakings[idx].field_512, stakings[idx].field_512, (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100, stakings[idx].field_0
                else:
                    if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                        if 10^stor2 and (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                            revert with 0, 17
                        stakings[idx].field_1024 = block.timestamp
                        call sub_d17cd93eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stakings[idx].field_0, 10^stor2 * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, 10^stor2 * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                        if stakings[idx].field_512 < stakings[idx].field_512:
                            revert with 0, 17
                        stakings[idx].field_512 = 0
                        require ext_code.size(nFTContractAddress)
                        call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), stakings[idx].field_0, stakings[idx].field_256, stakings[idx].field_512, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf27a0c4c: stakings[idx].field_256, stakings[idx].field_512, stakings[idx].field_512, 10^stor2 * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100, stakings[idx].field_0
                    else:
                        t = 10
                        u = 1
                        s = stor2
                        while s > 1:
                            if t > -1 / t:
                                revert with 0, 17
                            if not bool(s):
                                t = t * t
                                u = u
                                s = uint255(s) * 0.5
                                continue 
                            t = t * t
                            u = t * u
                            s = uint255(s) * 0.5
                            continue 
                        if u > -1 / t:
                            revert with 0, 17
                        if t * u and (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                            revert with 0, 17
                        stakings[idx].field_1024 = block.timestamp
                        call sub_d17cd93eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stakings[idx].field_0, t * u * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, t * u * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                        if stakings[idx].field_512 < stakings[idx].field_512:
                            revert with 0, 17
                        stakings[idx].field_512 = 0
                        require ext_code.size(nFTContractAddress)
                        call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), stakings[idx].field_0, stakings[idx].field_256, stakings[idx].field_512, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf27a0c4c: stakings[idx].field_256, stakings[idx].field_512, stakings[idx].field_512, t * u * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100, stakings[idx].field_0
            else:
                if block.timestamp - stakings[idx].field_1024 >= 240 * 24 * 3600:
                    if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 115 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                        revert with 0, 17
                    if 115 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 115 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                        revert with 0, 17
                    if not stor2:
                        if (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                            revert with 0, 17
                        stakings[idx].field_1024 = block.timestamp
                        call sub_d17cd93eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args stakings[idx].field_0, (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                        if stakings[idx].field_512 < stakings[idx].field_512:
                            revert with 0, 17
                        stakings[idx].field_512 = 0
                        require ext_code.size(nFTContractAddress)
                        call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), stakings[idx].field_0, stakings[idx].field_256, stakings[idx].field_512, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0xf27a0c4c: stakings[idx].field_256, stakings[idx].field_512, stakings[idx].field_512, (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100, stakings[idx].field_0
                    else:
                        if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                            if 10^stor2 and (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                revert with 0, 17
                            stakings[idx].field_1024 = block.timestamp
                            call sub_d17cd93eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stakings[idx].field_0, 10^stor2 * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, 10^stor2 * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            if stakings[idx].field_512 < stakings[idx].field_512:
                                revert with 0, 17
                            stakings[idx].field_512 = 0
                            require ext_code.size(nFTContractAddress)
                            call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), stakings[idx].field_0, stakings[idx].field_256, stakings[idx].field_512, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xf27a0c4c: stakings[idx].field_256, stakings[idx].field_512, stakings[idx].field_512, 10^stor2 * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100, stakings[idx].field_0
                        else:
                            t = 10
                            u = 1
                            s = stor2
                            while s > 1:
                                if t > -1 / t:
                                    revert with 0, 17
                                if not bool(s):
                                    t = t * t
                                    u = u
                                    s = uint255(s) * 0.5
                                    continue 
                                t = t * t
                                u = t * u
                                s = uint255(s) * 0.5
                                continue 
                            if u > -1 / t:
                                revert with 0, 17
                            if t * u and (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                                revert with 0, 17
                            stakings[idx].field_1024 = block.timestamp
                            call sub_d17cd93eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stakings[idx].field_0, t * u * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, t * u * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            if stakings[idx].field_512 < stakings[idx].field_512:
                                revert with 0, 17
                            stakings[idx].field_512 = 0
                            require ext_code.size(nFTContractAddress)
                            call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), stakings[idx].field_0, stakings[idx].field_256, stakings[idx].field_512, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xf27a0c4c: stakings[idx].field_256, stakings[idx].field_512, stakings[idx].field_512, t * u * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100, stakings[idx].field_0
                else:
                    if block.timestamp - stakings[idx].field_1024 < 120 * 24 * 3600:
                        if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 100 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                            revert with 0, 17
                        if 100 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 100 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                            revert with 0, 17
                        if not stor2:
                            if (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                                revert with 0, 17
                            stakings[idx].field_1024 = block.timestamp
                            call sub_d17cd93eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stakings[idx].field_0, (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            if stakings[idx].field_512 < stakings[idx].field_512:
                                revert with 0, 17
                            stakings[idx].field_512 = 0
                            require ext_code.size(nFTContractAddress)
                            call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), stakings[idx].field_0, stakings[idx].field_256, stakings[idx].field_512, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xf27a0c4c: stakings[idx].field_256, stakings[idx].field_512, stakings[idx].field_512, (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100, stakings[idx].field_0
                        else:
                            if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                                if 10^stor2 and (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                    revert with 0, 17
                                stakings[idx].field_1024 = block.timestamp
                                call sub_d17cd93eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stakings[idx].field_0, 10^stor2 * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, 10^stor2 * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                                if stakings[idx].field_512 < stakings[idx].field_512:
                                    revert with 0, 17
                                stakings[idx].field_512 = 0
                                require ext_code.size(nFTContractAddress)
                                call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), stakings[idx].field_0, stakings[idx].field_256, stakings[idx].field_512, 160, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xf27a0c4c: stakings[idx].field_256, stakings[idx].field_512, stakings[idx].field_512, 10^stor2 * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100, stakings[idx].field_0
                            else:
                                t = 10
                                u = 1
                                s = stor2
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 0, 17
                                    if not bool(s):
                                        t = t * t
                                        u = u
                                        s = uint255(s) * 0.5
                                        continue 
                                    t = t * t
                                    u = t * u
                                    s = uint255(s) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 0, 17
                                if t * u and (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                                    revert with 0, 17
                                stakings[idx].field_1024 = block.timestamp
                                call sub_d17cd93eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stakings[idx].field_0, t * u * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, t * u * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                                if stakings[idx].field_512 < stakings[idx].field_512:
                                    revert with 0, 17
                                stakings[idx].field_512 = 0
                                require ext_code.size(nFTContractAddress)
                                call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), stakings[idx].field_0, stakings[idx].field_256, stakings[idx].field_512, 160, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xf27a0c4c: stakings[idx].field_256, stakings[idx].field_512, stakings[idx].field_512, t * u * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100, stakings[idx].field_0
                    else:
                        if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 105 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                            revert with 0, 17
                        if 105 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 105 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                            revert with 0, 17
                        if not stor2:
                            if (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                                revert with 0, 17
                            stakings[idx].field_1024 = block.timestamp
                            call sub_d17cd93eAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stakings[idx].field_0, (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            if stakings[idx].field_512 < stakings[idx].field_512:
                                revert with 0, 17
                            stakings[idx].field_512 = 0
                            require ext_code.size(nFTContractAddress)
                            call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), stakings[idx].field_0, stakings[idx].field_256, stakings[idx].field_512, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0xf27a0c4c: stakings[idx].field_256, stakings[idx].field_512, stakings[idx].field_512, (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100, stakings[idx].field_0
                        else:
                            if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                                if 10^stor2 and (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                    revert with 0, 17
                                stakings[idx].field_1024 = block.timestamp
                                call sub_d17cd93eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stakings[idx].field_0, 10^stor2 * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, 10^stor2 * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                                if stakings[idx].field_512 < stakings[idx].field_512:
                                    revert with 0, 17
                                stakings[idx].field_512 = 0
                                require ext_code.size(nFTContractAddress)
                                call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), stakings[idx].field_0, stakings[idx].field_256, stakings[idx].field_512, 160, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xf27a0c4c: stakings[idx].field_256, stakings[idx].field_512, stakings[idx].field_512, 10^stor2 * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100, stakings[idx].field_0
                            else:
                                t = 10
                                u = 1
                                s = stor2
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 0, 17
                                    if not bool(s):
                                        t = t * t
                                        u = u
                                        s = uint255(s) * 0.5
                                        continue 
                                    t = t * t
                                    u = t * u
                                    s = uint255(s) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 0, 17
                                if t * u and (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                                    revert with 0, 17
                                stakings[idx].field_1024 = block.timestamp
                                call sub_d17cd93eAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stakings[idx].field_0, t * u * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                emit 0x40d12cab: stakings[idx].field_256, stakings[idx].field_512, t * u * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                                if stakings[idx].field_512 < stakings[idx].field_512:
                                    revert with 0, 17
                                stakings[idx].field_512 = 0
                                require ext_code.size(nFTContractAddress)
                                call nFTContractAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args address(this.address), stakings[idx].field_0, stakings[idx].field_256, stakings[idx].field_512, 160, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0xf27a0c4c: stakings[idx].field_256, stakings[idx].field_512, stakings[idx].field_512, t * u * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100, stakings[idx].field_0
    revert with 0, 'You've not staked this node yet'
}

function sub_feb29453(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 >= 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Token ID should be less than 3 (0, 1, 2 : we have only 3 nodes)'
    idx = 0
    while idx < stor0:
        mem[0] = idx
        mem[32] = 3
        if stakings[idx].field_0 != address(arg1):
            if 1 > !idx:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stakings[idx].field_256 != arg2:
            if 1 > !idx:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stakings[idx].field_512 <= 0:
            if 1 > !idx:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= stor0:
            revert with 0, 'You've not staked this node yet'
        if not stor2:
            mem[256] = 30
            mem[288] = 510
            mem[320] = 7800
            if block.timestamp < stakings[idx].field_1024:
                revert with 0, 17
            if stakings[idx].field_256 >= 3:
                revert with 0, 50
            if mem[(32 * stakings[idx].field_256) + 256] and stakings[idx].field_512 > -1 / mem[(32 * stakings[idx].field_256) + 256]:
                revert with 0, 17
            if block.timestamp - stakings[idx].field_1024 >= 720 * 24 * 3600:
                if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 150 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                    revert with 0, 17
                if 150 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 150 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                    revert with 0, 17
                if not stor2:
                    if (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                        revert with 0, 17
                    mem[352] = (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                else:
                    if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                        if 10^stor2 and (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                            revert with 0, 17
                        mem[352] = 10^stor2 * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                    else:
                        t = 10
                        u = 1
                        s = stor2
                        while s > 1:
                            if t > -1 / t:
                                revert with 0, 17
                            if not bool(s):
                                t = t * t
                                u = u
                                s = uint255(s) * 0.5
                                continue 
                            t = t * t
                            u = t * u
                            s = uint255(s) * 0.5
                            continue 
                        if u > -1 / t:
                            revert with 0, 17
                        if t * u and (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                            revert with 0, 17
                        mem[352] = t * u * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
            else:
                if block.timestamp - stakings[idx].field_1024 >= 480 * 24 * 3600:
                    if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 130 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                        revert with 0, 17
                    if 130 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 130 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                        revert with 0, 17
                    if not stor2:
                        if (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                            revert with 0, 17
                        mem[352] = (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                    else:
                        if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                            if 10^stor2 and (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                revert with 0, 17
                            mem[352] = 10^stor2 * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                        else:
                            t = 10
                            u = 1
                            s = stor2
                            while s > 1:
                                if t > -1 / t:
                                    revert with 0, 17
                                if not bool(s):
                                    t = t * t
                                    u = u
                                    s = uint255(s) * 0.5
                                    continue 
                                t = t * t
                                u = t * u
                                s = uint255(s) * 0.5
                                continue 
                            if u > -1 / t:
                                revert with 0, 17
                            if t * u and (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                                revert with 0, 17
                            mem[352] = t * u * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                else:
                    if block.timestamp - stakings[idx].field_1024 >= 240 * 24 * 3600:
                        if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 115 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                            revert with 0, 17
                        if 115 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 115 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                            revert with 0, 17
                        if not stor2:
                            if (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                                revert with 0, 17
                            mem[352] = (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                        else:
                            if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                                if 10^stor2 and (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                    revert with 0, 17
                                mem[352] = 10^stor2 * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            else:
                                t = 10
                                u = 1
                                s = stor2
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 0, 17
                                    if not bool(s):
                                        t = t * t
                                        u = u
                                        s = uint255(s) * 0.5
                                        continue 
                                    t = t * t
                                    u = t * u
                                    s = uint255(s) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 0, 17
                                if t * u and (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                                    revert with 0, 17
                                mem[352] = t * u * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                    else:
                        if block.timestamp - stakings[idx].field_1024 < 120 * 24 * 3600:
                            if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 100 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                revert with 0, 17
                            if 100 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 100 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                revert with 0, 17
                            if not stor2:
                                if (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                                    revert with 0, 17
                                mem[352] = (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            else:
                                if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                                    if 10^stor2 and (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                        revert with 0, 17
                                    mem[352] = 10^stor2 * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                                else:
                                    t = 10
                                    u = 1
                                    s = stor2
                                    while s > 1:
                                        if t > -1 / t:
                                            revert with 0, 17
                                        if not bool(s):
                                            t = t * t
                                            u = u
                                            s = uint255(s) * 0.5
                                            continue 
                                        t = t * t
                                        u = t * u
                                        s = uint255(s) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 0, 17
                                    if t * u and (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                                        revert with 0, 17
                                    mem[352] = t * u * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                        else:
                            if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 105 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                revert with 0, 17
                            if 105 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 105 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                revert with 0, 17
                            if not stor2:
                                if (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                                    revert with 0, 17
                                mem[352] = (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                            else:
                                if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                                    if 10^stor2 and (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                        revert with 0, 17
                                    mem[352] = 10^stor2 * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
                                else:
                                    t = 10
                                    u = 1
                                    s = stor2
                                    while s > 1:
                                        if t > -1 / t:
                                            revert with 0, 17
                                        if not bool(s):
                                            t = t * t
                                            u = u
                                            s = uint255(s) * 0.5
                                            continue 
                                        t = t * t
                                        u = t * u
                                        s = uint255(s) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 0, 17
                                    if t * u and (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                                        revert with 0, 17
                                    mem[352] = t * u * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100
        else:
            if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                mem[256] = 30
                mem[288] = 510
                mem[320] = 7800
                if block.timestamp < stakings[idx].field_1024:
                    revert with 0, 17
                if stakings[idx].field_256 >= 3:
                    revert with 0, 50
                if mem[(32 * stakings[idx].field_256) + 256] and stakings[idx].field_512 > -1 / mem[(32 * stakings[idx].field_256) + 256]:
                    revert with 0, 17
                if block.timestamp - stakings[idx].field_1024 >= 720 * 24 * 3600:
                    if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 150 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                        revert with 0, 17
                    if 150 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 150 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                        revert with 0, 17
                    if not stor2:
                        if (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                            revert with 0, 17
                        if not 10^stor2:
                            revert with 0, 18
                        mem[352] = (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / 10^stor2
                    else:
                        if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                            if 10^stor2 and (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                revert with 0, 17
                            if not 10^stor2:
                                revert with 0, 18
                            mem[352] = 10^stor2 * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / 10^stor2
                        else:
                            t = 10
                            u = 1
                            s = stor2
                            while s > 1:
                                if t > -1 / t:
                                    revert with 0, 17
                                if not bool(s):
                                    t = t * t
                                    u = u
                                    s = uint255(s) * 0.5
                                    continue 
                                t = t * t
                                u = t * u
                                s = uint255(s) * 0.5
                                continue 
                            if u > -1 / t:
                                revert with 0, 17
                            if t * u and (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                                revert with 0, 17
                            if not 10^stor2:
                                revert with 0, 18
                            mem[352] = t * u * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / 10^stor2
                else:
                    if block.timestamp - stakings[idx].field_1024 >= 480 * 24 * 3600:
                        if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 130 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                            revert with 0, 17
                        if 130 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 130 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                            revert with 0, 17
                        if not stor2:
                            if (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                                revert with 0, 17
                            if not 10^stor2:
                                revert with 0, 18
                            mem[352] = (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / 10^stor2
                        else:
                            if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                                if 10^stor2 and (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                    revert with 0, 17
                                if not 10^stor2:
                                    revert with 0, 18
                                mem[352] = 10^stor2 * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / 10^stor2
                            else:
                                t = 10
                                u = 1
                                s = stor2
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 0, 17
                                    if not bool(s):
                                        t = t * t
                                        u = u
                                        s = uint255(s) * 0.5
                                        continue 
                                    t = t * t
                                    u = t * u
                                    s = uint255(s) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 0, 17
                                if t * u and (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                                    revert with 0, 17
                                if not 10^stor2:
                                    revert with 0, 18
                                mem[352] = t * u * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / 10^stor2
                    else:
                        if block.timestamp - stakings[idx].field_1024 >= 240 * 24 * 3600:
                            if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 115 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                revert with 0, 17
                            if 115 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 115 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                revert with 0, 17
                            if not stor2:
                                if (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                                    revert with 0, 17
                                if not 10^stor2:
                                    revert with 0, 18
                                mem[352] = (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / 10^stor2
                            else:
                                if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                                    if 10^stor2 and (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                        revert with 0, 17
                                    if not 10^stor2:
                                        revert with 0, 18
                                    mem[352] = 10^stor2 * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / 10^stor2
                                else:
                                    t = 10
                                    u = 1
                                    s = stor2
                                    while s > 1:
                                        if t > -1 / t:
                                            revert with 0, 17
                                        if not bool(s):
                                            t = t * t
                                            u = u
                                            s = uint255(s) * 0.5
                                            continue 
                                        t = t * t
                                        u = t * u
                                        s = uint255(s) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 0, 17
                                    if t * u and (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                                        revert with 0, 17
                                    if not 10^stor2:
                                        revert with 0, 18
                                    mem[352] = t * u * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / 10^stor2
                        else:
                            if block.timestamp - stakings[idx].field_1024 < 120 * 24 * 3600:
                                if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 100 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                    revert with 0, 17
                                if 100 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 100 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                    revert with 0, 17
                                if not stor2:
                                    if (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                                        revert with 0, 17
                                    if not 10^stor2:
                                        revert with 0, 18
                                    mem[352] = (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / 10^stor2
                                else:
                                    if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                                        if 10^stor2 and (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                            revert with 0, 17
                                        if not 10^stor2:
                                            revert with 0, 18
                                        mem[352] = 10^stor2 * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / 10^stor2
                                    else:
                                        t = 10
                                        u = 1
                                        s = stor2
                                        while s > 1:
                                            if t > -1 / t:
                                                revert with 0, 17
                                            if not bool(s):
                                                t = t * t
                                                u = u
                                                s = uint255(s) * 0.5
                                                continue 
                                            t = t * t
                                            u = t * u
                                            s = uint255(s) * 0.5
                                            continue 
                                        if u > -1 / t:
                                            revert with 0, 17
                                        if t * u and (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                                            revert with 0, 17
                                        if not 10^stor2:
                                            revert with 0, 18
                                        mem[352] = t * u * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / 10^stor2
                            else:
                                if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 105 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                    revert with 0, 17
                                if 105 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 105 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                    revert with 0, 17
                                if not stor2:
                                    if (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                                        revert with 0, 17
                                    if not 10^stor2:
                                        revert with 0, 18
                                    mem[352] = (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / 10^stor2
                                else:
                                    if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                                        if 10^stor2 and (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                            revert with 0, 17
                                        if not 10^stor2:
                                            revert with 0, 18
                                        mem[352] = 10^stor2 * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / 10^stor2
                                    else:
                                        t = 10
                                        u = 1
                                        s = stor2
                                        while s > 1:
                                            if t > -1 / t:
                                                revert with 0, 17
                                            if not bool(s):
                                                t = t * t
                                                u = u
                                                s = uint255(s) * 0.5
                                                continue 
                                            t = t * t
                                            u = t * u
                                            s = uint255(s) * 0.5
                                            continue 
                                        if u > -1 / t:
                                            revert with 0, 17
                                        if t * u and (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / t * u:
                                            revert with 0, 17
                                        if not 10^stor2:
                                            revert with 0, 18
                                        mem[352] = t * u * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / 10^stor2
            else:
                t = 10
                u = 1
                s = stor2
                while s > 1:
                    if t > -1 / t:
                        revert with 0, 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = t * u
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 0, 17
                mem[256] = 30
                mem[288] = 510
                mem[320] = 7800
                if block.timestamp < stakings[idx].field_1024:
                    revert with 0, 17
                if stakings[idx].field_256 >= 3:
                    revert with 0, 50
                if mem[(32 * stakings[idx].field_256) + 256] and stakings[idx].field_512 > -1 / mem[(32 * stakings[idx].field_256) + 256]:
                    revert with 0, 17
                if block.timestamp - stakings[idx].field_1024 >= 720 * 24 * 3600:
                    if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 150 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                        revert with 0, 17
                    if 150 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 150 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                        revert with 0, 17
                    if not stor2:
                        if (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                            revert with 0, 17
                        if not t * u:
                            revert with 0, 18
                        mem[352] = (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / t * u
                    else:
                        if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                            if 10^stor2 and (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                revert with 0, 17
                            if not t * u:
                                revert with 0, 18
                            mem[352] = 10^stor2 * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / t * u
                        else:
                            v = 10
                            w = 1
                            s = stor2
                            while s > 1:
                                if v > -1 / v:
                                    revert with 0, 17
                                if not bool(s):
                                    v = v * v
                                    w = w
                                    s = uint255(s) * 0.5
                                    continue 
                                v = v * v
                                w = v * w
                                s = uint255(s) * 0.5
                                continue 
                            if w > -1 / v:
                                revert with 0, 17
                            if v * w and (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / v * w:
                                revert with 0, 17
                            if not t * u:
                                revert with 0, 18
                            mem[352] = v * w * (150 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (150 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / t * u
                else:
                    if block.timestamp - stakings[idx].field_1024 >= 480 * 24 * 3600:
                        if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 130 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                            revert with 0, 17
                        if 130 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 130 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                            revert with 0, 17
                        if not stor2:
                            if (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                                revert with 0, 17
                            if not t * u:
                                revert with 0, 18
                            mem[352] = (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / t * u
                        else:
                            if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                                if 10^stor2 and (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                    revert with 0, 17
                                if not t * u:
                                    revert with 0, 18
                                mem[352] = 10^stor2 * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / t * u
                            else:
                                v = 10
                                w = 1
                                s = stor2
                                while s > 1:
                                    if v > -1 / v:
                                        revert with 0, 17
                                    if not bool(s):
                                        v = v * v
                                        w = w
                                        s = uint255(s) * 0.5
                                        continue 
                                    v = v * v
                                    w = v * w
                                    s = uint255(s) * 0.5
                                    continue 
                                if w > -1 / v:
                                    revert with 0, 17
                                if v * w and (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / v * w:
                                    revert with 0, 17
                                if not t * u:
                                    revert with 0, 18
                                mem[352] = v * w * (130 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (130 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / t * u
                    else:
                        if block.timestamp - stakings[idx].field_1024 >= 240 * 24 * 3600:
                            if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 115 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                revert with 0, 17
                            if 115 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 115 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                revert with 0, 17
                            if not stor2:
                                if (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                                    revert with 0, 17
                                if not t * u:
                                    revert with 0, 18
                                mem[352] = (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / t * u
                            else:
                                if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                                    if 10^stor2 and (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                        revert with 0, 17
                                    if not t * u:
                                        revert with 0, 18
                                    mem[352] = 10^stor2 * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / t * u
                                else:
                                    v = 10
                                    w = 1
                                    s = stor2
                                    while s > 1:
                                        if v > -1 / v:
                                            revert with 0, 17
                                        if not bool(s):
                                            v = v * v
                                            w = w
                                            s = uint255(s) * 0.5
                                            continue 
                                        v = v * v
                                        w = v * w
                                        s = uint255(s) * 0.5
                                        continue 
                                    if w > -1 / v:
                                        revert with 0, 17
                                    if v * w and (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / v * w:
                                        revert with 0, 17
                                    if not t * u:
                                        revert with 0, 18
                                    mem[352] = v * w * (115 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (115 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / t * u
                        else:
                            if block.timestamp - stakings[idx].field_1024 < 120 * 24 * 3600:
                                if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 100 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                    revert with 0, 17
                                if 100 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 100 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                    revert with 0, 17
                                if not stor2:
                                    if (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                                        revert with 0, 17
                                    if not t * u:
                                        revert with 0, 18
                                    mem[352] = (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / t * u
                                else:
                                    if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                                        if 10^stor2 and (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                            revert with 0, 17
                                        if not t * u:
                                            revert with 0, 18
                                        mem[352] = 10^stor2 * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / t * u
                                    else:
                                        v = 10
                                        w = 1
                                        s = stor2
                                        while s > 1:
                                            if v > -1 / v:
                                                revert with 0, 17
                                            if not bool(s):
                                                v = v * v
                                                w = w
                                                s = uint255(s) * 0.5
                                                continue 
                                            v = v * v
                                            w = v * w
                                            s = uint255(s) * 0.5
                                            continue 
                                        if w > -1 / v:
                                            revert with 0, 17
                                        if v * w and (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / v * w:
                                            revert with 0, 17
                                        if not t * u:
                                            revert with 0, 18
                                        mem[352] = v * w * (100 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (100 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / t * u
                            else:
                                if mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and 105 > -1 / mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                    revert with 0, 17
                                if 105 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512 and block.timestamp - stakings[idx].field_1024 > -1 / 105 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512:
                                    revert with 0, 17
                                if not stor2:
                                    if (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1:
                                        revert with 0, 17
                                    if not t * u:
                                        revert with 0, 18
                                    mem[352] = (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / t * u
                                else:
                                    if bool(bool(stor2 < 78)) or bool(bool(stor2 < 32)):
                                        if 10^stor2 and (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / 10^stor2:
                                            revert with 0, 17
                                        if not t * u:
                                            revert with 0, 18
                                        mem[352] = 10^stor2 * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / t * u
                                    else:
                                        v = 10
                                        w = 1
                                        s = stor2
                                        while s > 1:
                                            if v > -1 / v:
                                                revert with 0, 17
                                            if not bool(s):
                                                v = v * v
                                                w = w
                                                s = uint255(s) * 0.5
                                                continue 
                                            v = v * v
                                            w = v * w
                                            s = uint255(s) * 0.5
                                            continue 
                                        if w > -1 / v:
                                            revert with 0, 17
                                        if v * w and (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 > -1 / v * w:
                                            revert with 0, 17
                                        if not t * u:
                                            revert with 0, 18
                                        mem[352] = v * w * (105 * block.timestamp * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) - (105 * stakings[idx].field_1024 * mem[(32 * stakings[idx].field_256) + 256] * stakings[idx].field_512) / 24 * 3600 / 100 / t * u
        return memory
          from 352
           len 32
    revert with 0, 'You've not staked this node yet'
}



}
