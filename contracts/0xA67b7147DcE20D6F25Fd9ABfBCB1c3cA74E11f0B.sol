contract main {




// =====================  Runtime code  =====================


address owner;
array of struct metaSwapPoolInfo;
address metaSwapAddress;
address metaSwapDepositAddress;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944778999;

function metaSwapPoolLength() payable {
    return metaSwapPoolInfo.length
}

function metaSwapAddress() payable {
    return metaSwapAddress
}

function owner() payable {
    return owner
}

function metaSwapDepositAddress() payable {
    return metaSwapDepositAddress
}

function metaSwapPoolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < metaSwapPoolInfo.length
    return metaSwapPoolInfo[arg1].field_0, metaSwapPoolInfo[arg1].field_256
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deploy(address[] arg1, uint8[] arg2, string arg3, string arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8, address arg9) payable {
    require calldata.size - 4 >= 288
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 160 >= 128 and (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307()
    mem[(32 * arg1.length) + 128] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 192 >= 160 and (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 192 <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len arg3.length] = arg3[all]
    mem[(32 * arg1.length) + (32 * arg2.length) + arg3.length + 192] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 224 >= 192 and (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 <= test266151307()
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 192] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 224 len arg4.length] = arg4[all]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + arg4.length + 224] = 0
    require arg8 == arg8
    require arg9 == arg9
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, metaSwapAddress, 0x5af43d82803e903d91602b57fd5bf3
    if not address(create.new_address):
        revert with 0, 'ERC1167: create failed'
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 264] = 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000
        create contract with 0 wei
                        code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, metaSwapDepositAddress, 0x5af43d82803e903d91602b57fd5bf3
        mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = 0x118e1c7700000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 228] = 288
        mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 516] = arg1.length
        idx = 0
        s = 128
        t = mem[64] + 324
        while idx < arg1.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 260] = (32 * arg1.length) + 320
        _320 = mem[(32 * arg1.length) + 128]
        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 548] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = (64 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 580
        while idx < mem[(32 * arg1.length) + 128]:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 292] = (32 * arg1.length) + (32 * _320) + 352
        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * _320) + 580] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * _320) + 612 len ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
        if ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) <= mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
            mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 324] = ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + (32 * arg1.length) + (32 * _320) + 384
            _512 = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 192]
            mem[ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + (64 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * _320) + 612] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 192]
            mem[ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + (64 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * _320) + 644 len ceil32(_512)] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 224 len ceil32(_512)]
            if ceil32(_512) <= _512:
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356] = arg5
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 388] = arg6
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = arg7
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = arg8
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = arg9
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_512) + ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + (64 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * _320) + -mem[64] + 640]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(address(create.new_address))
                    staticcall address(create.new_address).0x5fd65f0f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 224
                        require ext_call.return_data[192] == ext_call.return_data[204 len 20]
                        require ext_code.size(address(create.new_address))
                        call address(create.new_address).0xc0c53b8b with:
                             gas gas_remaining wei
                            args address(arg9), address(create.new_address), ext_call.return_data[204 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(address(create.new_address))
                            call address(create.new_address).0xf2fde38b with:
                                 gas gas_remaining wei
                                args owner
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                metaSwapPoolInfo.length++
                                metaSwapPoolInfo[metaSwapPoolInfo.length].field_0 = address(create.new_address)
                                storB10E[stor1.length] = address(create.new_address)
                                emit NewMetaSwapPool(address(create.new_address), address(create.new_address), msg.sender);
                                return address(create.new_address)
            else:
                mem[ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + (64 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * _320) + _512 + 644] = 0
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356] = arg5
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 388] = arg6
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = arg7
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = arg8
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = arg9
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_512) + ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + (64 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * _320) + -mem[64] + 640]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(address(create.new_address))
                    staticcall address(create.new_address).0x5fd65f0f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 224
                        require ext_call.return_data[192] == ext_call.return_data[204 len 20]
                        require ext_code.size(address(create.new_address))
                        call address(create.new_address).0xc0c53b8b with:
                             gas gas_remaining wei
                            args address(arg9), address(create.new_address), ext_call.return_data[204 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(address(create.new_address))
                            call address(create.new_address).0xf2fde38b with:
                                 gas gas_remaining wei
                                args owner
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                metaSwapPoolInfo.length++
                                metaSwapPoolInfo[metaSwapPoolInfo.length].field_0 = address(create.new_address)
                                storB10E[stor1.length] = address(create.new_address)
                                emit NewMetaSwapPool(address(create.new_address), address(create.new_address), msg.sender);
                                return address(create.new_address)
        else:
            mem[(64 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * _320) + mem[(32 * arg1.length) + (32 * arg2.length) + 160] + 612] = 0
            mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 324] = ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + (32 * arg1.length) + (32 * _320) + 384
            _513 = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 192]
            mem[ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + (64 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * _320) + 612] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 192]
            mem[ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + (64 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * _320) + 644 len ceil32(_513)] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + 224 len ceil32(_513)]
            if ceil32(_513) <= _513:
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356] = arg5
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 388] = arg6
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = arg7
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = arg8
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = arg9
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_513) + ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + (64 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * _320) + -mem[64] + 640]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(address(create.new_address))
                    staticcall address(create.new_address).0x5fd65f0f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 224
                        require ext_call.return_data[192] == ext_call.return_data[204 len 20]
                        require ext_code.size(address(create.new_address))
                        call address(create.new_address).0xc0c53b8b with:
                             gas gas_remaining wei
                            args address(arg9), address(create.new_address), ext_call.return_data[204 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(address(create.new_address))
                            call address(create.new_address).0xf2fde38b with:
                                 gas gas_remaining wei
                                args owner
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                metaSwapPoolInfo.length++
                                metaSwapPoolInfo[metaSwapPoolInfo.length].field_0 = address(create.new_address)
                                storB10E[stor1.length] = address(create.new_address)
                                emit NewMetaSwapPool(address(create.new_address), address(create.new_address), msg.sender);
                                return address(create.new_address)
            else:
                mem[ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + (64 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * _320) + _513 + 644] = 0
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356] = arg5
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 388] = arg6
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = arg7
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = arg8
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = arg9
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_513) + ceil32(mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + (64 * arg1.length) + (32 * arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + (32 * _320) + -mem[64] + 640]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(address(create.new_address))
                    staticcall address(create.new_address).0x5fd65f0f with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 224
                        require ext_call.return_data[192] == ext_call.return_data[204 len 20]
                        require ext_code.size(address(create.new_address))
                        call address(create.new_address).0xc0c53b8b with:
                             gas gas_remaining wei
                            args address(arg9), address(create.new_address), ext_call.return_data[204 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(address(create.new_address))
                            call address(create.new_address).0xf2fde38b with:
                                 gas gas_remaining wei
                                args owner
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                metaSwapPoolInfo.length++
                                metaSwapPoolInfo[metaSwapPoolInfo.length].field_0 = address(create.new_address)
                                storB10E[stor1.length] = address(create.new_address)
                                emit NewMetaSwapPool(address(create.new_address), address(create.new_address), msg.sender);
                                return address(create.new_address)
}



}
