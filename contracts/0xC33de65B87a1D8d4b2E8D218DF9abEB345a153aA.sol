contract main {




// =====================  Runtime code  =====================


array of address sub_dc8afbc1;
address owner;
address stor2;

function owner() payable {
    return owner
}

function sub_a1717c02(?) payable {
    return sub_dc8afbc1.length
}

function sub_dc8afbc1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_dc8afbc1.length
    return sub_dc8afbc1[arg1]
}

function _fallback() payable {
    revert
}

function acceptOwnership() payable {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 39, code.data[21998 len 39], mem[203 len 25]
    owner = stor2
    emit OwnershipTransferred(stor2);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 39, code.data[22138 len 39], mem[203 len 25]
    if not arg1:
        revert with 0, 'Cannot set owner to 0 address'
    stor2 = arg1
    emit OwnershipTransferProposed(msg.sender, owner);
}

function sub_2bb4e269(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 39, code.data[22138 len 39], mem[203 len 25]
    if not arg1:
        revert with 0, 'startStaking:: not deployed'
    require ext_code.size(arg1)
    call arg1.withdrawLPRewards(address rg1, address rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function calculateRewardsAmount(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 68, code.data[21817 len 68], mem[232 len 28]
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg3:
        return 0
    if (arg2 * arg3) - (arg1 * arg3) / arg3 != arg2 - arg1:
        revert with 0, 32, 33, code.data[21965 len 33], mem[261 len 31]
    return ((arg2 * arg3) - (arg1 * arg3))
}

function setLockSchemesToLMC(address[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 39, code.data[22138 len 39], mem[(32 * arg1.length) + 235 len 25]
    if not arg2:
        revert with 0, 32, 41, code.data[21924 len 41], mem[(32 * arg1.length) + 237 len 23]
    if not arg1.length:
        revert with 0, 32, 54, code.data[22177 len 54], mem[(32 * arg1.length) + 250 len 10]
    mem[(32 * arg1.length) + 132] = 32
    mem[(32 * arg1.length) + 164] = arg1.length
    mem[(32 * arg1.length) + 196 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(arg2)
    call arg2.0xc8523c1d with:
         gas gas_remaining wei
        args mem[(32 * arg1.length) + 132 len (96 * arg1.length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0d50caf2(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 32, 39, code.data[22138 len 39], mem[(32 * arg2.length) + 235 len 25]
    if not arg1:
        revert with 0, 32, 39, code.data[21885 len 39], mem[(32 * arg2.length) + 235 len 25]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 32, 37, code.data[21539 len 37], mem[(32 * arg2.length) + 233 len 27]
        require idx < arg2.length
        _25 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 128] = 0xa861a7a300000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + 132] = address(_25)
        mem[(32 * arg2.length) + 164] = 1
        require ext_code.size(arg1)
        call arg1.0xa861a7a3 with:
             gas gas_remaining wei
            args address(_25), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg2.length
        _29 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 128] = arg1
        mem[(32 * arg2.length) + 160] = address(_29)
        emit 0x49564019: address(arg1), address(_29)
        idx = idx + 1
        continue 
}

function sub_b7b8fbd2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 39, code.data[22138 len 39], mem[203 len 25]
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = transfer(address rg1, uint256 rg2), msg.sender, ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, code.data[22231 len 42], mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 32, 42, code.data[22231 len 42], mem[ceil32(return_data.size) + 307 len 22]
    emit RewardsWithdrawn(address(arg1), ext_call.return_data[0]);
}

function deploy(address arg1, uint256 arg2, uint256 arg3, address[] arg4, uint256[] arg5, address arg6, uint256 arg7, uint256 arg8) payable {
    mem[64] = 96
    require calldata.size - 4 >= 256
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 39, code.data[22138 len 39], mem[203 len 25]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 83, code.data[21385 len 83], mem[247 len 13]
    if not arg4.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 78, code.data[21657 len 78], mem[242 len 18]
    if arg5.length != arg4.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 101, code.data[22037 len 101], mem[265 len 27]
    if not arg7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 71, code.data[21468 len 71], mem[235 len 25]
    mem[96 len 15128] = code.data[6257 len 15128]
    mem[15224] = arg1
    mem[15256] = arg2
    mem[15288] = arg3
    mem[15384] = arg6
    mem[15416] = arg7
    mem[15448] = arg8
    mem[15320] = 256
    mem[15480] = arg4.length
    mem[15512 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 15512] = 0
    mem[15352] = floor32(arg4.length) + 288
    mem[floor32(arg4.length) + 15512] = arg5.length
    mem[floor32(arg4.length) + 15544 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + floor32(arg4.length) + 15544] = 0
    create contract with 0 wei
                    code: code.data[6257 len 15128], address(arg1), arg2, arg3, Array(len=arg8, data=arg4.length, mem[15512 len floor32(arg4.length) + 32], call.data[arg5 + 36 len floor32(arg5.length)]), floor32(arg4.length) + 288, address(arg6), arg7
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg4.length:
        if not address(cd[((32 * idx) + arg4 + 36)]):
            revert with 0, 32, 81, code.data[21576 len 81], mem[mem[64] + 149 len 15]
        require idx < arg5.length
        if 0 == cd[((32 * idx) + arg5 + 36)]:
            revert with 0, 32, 82, code.data[21735 len 82], mem[mem[64] + 150 len 14]
        require idx < arg5.length
        if cd[((32 * idx) + arg5 + 36)] <= 0:
            revert with 0, 32, 68, code.data[21817 len 68], mem[mem[64] + 136 len 28]
        _89 = mem[64]
        mem[64] = mem[64] + 64
        mem[_89] = 30
        mem[_89 + 32] = 'SafeMath: subtraction overflow'
        if arg2 > arg3:
            _90 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _90 + 68] = mem[idx + _89 + 32]
                idx = idx + 32
                continue 
            mem[_90 + 68] = mem[_90 + 70 len 30]
            revert with memory
              from mem[64]
               len _90 + -mem[64] + 100
        if cd[((32 * idx) + arg5 + 36)]:
            if (arg3 * cd[((32 * idx) + arg5 + 36)]) - (arg2 * cd[((32 * idx) + arg5 + 36)]) / cd[((32 * idx) + arg5 + 36)] != arg3 - arg2:
                revert with 0, 32, 33, code.data[21965 len 33], mem[mem[64] + 101 len 31]
            require idx < arg4.length
            _102 = mem[64]
            mem[mem[64] + 36] = address(create.new_address)
            mem[mem[64] + 68] = (arg3 * cd[((32 * idx) + arg5 + 36)]) - (arg2 * cd[((32 * idx) + arg5 + 36)])
            _103 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_103 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_103 + 36 len 28]
            if not ext_code.size(address(cd[((32 * idx) + arg4 + 36)])):
                revert with 0, 'SafeERC20: call to non-contract'
            _110 = mem[_103]
            t = _103 + 32
            u = _102 + 100
            s = mem[_103]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_102 + floor32(mem[_103]) + 100] = mem[_103 + -(mem[_103] % 32) + floor32(mem[_103]) + 64 len mem[_103] % 32] or Mask(8 * -(mem[_103] % 32) + 32, -(8 * -(mem[_103] % 32) + 32) + 256, mem[_102 + floor32(mem[_103]) + 100])
            call address(cd[((32 * idx) + arg4 + 36)]).mem[_102 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_102 + 104 len _110 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 32, 42, code.data[22231 len 42], mem[_102 + 210 len 22]
            else:
                mem[64] = _102 + ceil32(return_data.size) + 101
                mem[_102 + 100] = return_data.size
                mem[_102 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_102 + 132]:
                        revert with 0, 32, 42, code.data[22231 len 42], mem[_102 + ceil32(return_data.size) + 211 len 22]
        else:
            require idx < arg4.length
            _99 = mem[64]
            mem[mem[64] + 36] = address(create.new_address)
            mem[mem[64] + 68] = 0
            _100 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_100 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_100 + 36 len 28]
            if not ext_code.size(address(cd[((32 * idx) + arg4 + 36)])):
                revert with 0, 'SafeERC20: call to non-contract'
            _106 = mem[_100]
            t = _100 + 32
            u = mem[64]
            s = mem[_100]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_100])] = mem[_100 + floor32(mem[_100]) + -(mem[_100] % 32) + 64 len mem[_100] % 32] or Mask(8 * -(mem[_100] % 32) + 32, -(8 * -(mem[_100] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_100])])
            call address(cd[((32 * idx) + arg4 + 36)]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _106 + _99 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
            else:
                _161 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_161] = return_data.size
                mem[_161 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_161 + 32]:
                        revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
        idx = idx + 1
        continue 
    sub_dc8afbc1.length++
    sub_dc8afbc1[sub_dc8afbc1.length] = address(create.new_address)
    emit RewardsPoolDeployed(address(create.new_address), arg1);
}

function extendRewardPool(uint256 arg1, uint256[] arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 39, code.data[22138 len 39], mem[203 len 25]
    require ext_code.size(arg3)
    staticcall arg3.endBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2.length <= test266151307()
    mem[96] = arg2.length
    if not arg2.length:
        require arg2.length <= test266151307()
        mem[(32 * arg2.length) + 128] = arg2.length
        mem[64] = (64 * arg2.length) + 160
        if not arg2.length:
            idx = 0
            while idx < arg2.length:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg3)
                staticcall arg3.rewardPerBlock(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 32, 68, code.data[21817 len 68], mem[mem[64] + 136 len 28]
                _890 = mem[64]
                mem[64] = mem[64] + 64
                mem[_890] = 30
                mem[_890 + 32] = 'SafeMath: subtraction overflow'
                if block.number > ext_call.return_data[0]:
                    _894 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _894 + 68] = mem[idx + _890 + 32]
                        idx = idx + 32
                        continue 
                    mem[_894 + 68] = mem[_894 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _894 + -mem[64] + 100
                if not ext_call.return_data[0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 0
                    require idx < arg2.length
                    if cd[((32 * idx) + arg2 + 36)] <= 0:
                        revert with 0, 32, 68, code.data[21817 len 68], mem[mem[64] + 136 len 28]
                    _946 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_946] = 30
                    mem[_946 + 32] = 'SafeMath: subtraction overflow'
                    if block.number > arg1:
                        _959 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _959 + 68] = mem[idx + _946 + 32]
                            idx = idx + 32
                            continue 
                        mem[_959 + 68] = mem[_959 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _959 + -mem[64] + 100
                    if not cd[((32 * idx) + arg2 + 36)]:
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                        mem[mem[64] + 4] = idx
                        require ext_code.size(arg3)
                        staticcall arg3.0xb6d0dcd8 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        idx = idx + 1
                        continue 
                    if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) / cd[((32 * idx) + arg2 + 36)] != arg1 - block.number:
                        revert with 0, 32, 33, code.data[21965 len 33], mem[mem[64] + 101 len 31]
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 4] = idx
                    require ext_code.size(arg3)
                    staticcall arg3.0xb6d0dcd8 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * arg2.length) + 128]
                    if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) > 0:
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        _1247 = mem[64]
                        mem[mem[64] + 36] = arg3
                        mem[mem[64] + 68] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)])
                        _1248 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1248 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1248 + 36 len 28]
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        _1311 = mem[_1248]
                        t = _1248 + 32
                        u = mem[64]
                        s = mem[_1248]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1248])] = mem[_1248 + floor32(mem[_1248]) + -(mem[_1248] % 32) + 64 len mem[_1248] % 32] or Mask(8 * -(mem[_1248] % 32) + 32, -(8 * -(mem[_1248] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1248])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1311 + _1247 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                        else:
                            _1750 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1750] = return_data.size
                            mem[_1750 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1750 + 32]:
                                    revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - block.number:
                        revert with 0, 32, 33, code.data[21965 len 33], mem[mem[64] + 101 len 31]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0])
                    require idx < arg2.length
                    if cd[((32 * idx) + arg2 + 36)] <= 0:
                        revert with 0, 32, 68, code.data[21817 len 68], mem[mem[64] + 136 len 28]
                    _958 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_958] = 30
                    mem[_958 + 32] = 'SafeMath: subtraction overflow'
                    if block.number > arg1:
                        _974 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _974 + 68] = mem[idx + _958 + 32]
                            idx = idx + 32
                            continue 
                        mem[_974 + 68] = mem[_974 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _974 + -mem[64] + 100
                    if not cd[((32 * idx) + arg2 + 36)]:
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                        mem[mem[64] + 4] = idx
                        require ext_code.size(arg3)
                        staticcall arg3.0xb6d0dcd8 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        if 0 > (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0]):
                            require idx < mem[96]
                            require idx < mem[(32 * arg2.length) + 128]
                            _1244 = mem[64]
                            mem[mem[64] + 36] = arg3
                            mem[mem[64] + 68] = (-1 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.number * ext_call.return_data[0])
                            _1245 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1245 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1245 + 36 len 28]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1307 = mem[_1245]
                            t = _1245 + 32
                            u = mem[64]
                            s = mem[_1245]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_1245])] = mem[_1245 + floor32(mem[_1245]) + -(mem[_1245] % 32) + 64 len mem[_1245] % 32] or Mask(8 * -(mem[_1245] % 32) + 32, -(8 * -(mem[_1245] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1245])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1307 + _1244 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                            else:
                                _1747 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1747] = return_data.size
                                mem[_1747 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1747 + 32]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                    else:
                        if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) / cd[((32 * idx) + arg2 + 36)] != arg1 - block.number:
                            revert with 0, 32, 33, code.data[21965 len 33], mem[mem[64] + 101 len 31]
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 4] = idx
                        require ext_code.size(arg3)
                        staticcall arg3.0xb6d0dcd8 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) > (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0]):
                            require idx < mem[96]
                            require idx < mem[(32 * arg2.length) + 128]
                            _1278 = mem[64]
                            mem[mem[64] + 36] = arg3
                            mem[mem[64] + 68] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (block.number * ext_call.return_data[0])
                            _1279 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1279 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1279 + 36 len 28]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1359 = mem[_1279]
                            t = _1279 + 32
                            u = mem[64]
                            s = mem[_1279]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_1279])] = mem[_1279 + floor32(mem[_1279]) + -(mem[_1279] % 32) + 64 len mem[_1279] % 32] or Mask(8 * -(mem[_1279] % 32) + 32, -(8 * -(mem[_1279] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1279])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1359 + _1278 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                            else:
                                _1746 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1746] = return_data.size
                                mem[_1746 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1746 + 32]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                idx = idx + 1
                continue 
            _834 = mem[64]
            mem[mem[64]] = 0x20e67c7600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = arg2.length
            mem[mem[64] + 164 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            mem[(32 * arg2.length) + mem[64] + 164] = 0
            mem[mem[64] + 68] = floor32(arg2.length) + 160
            mem[_834 + floor32(arg2.length) + 164] = mem[96]
            _836 = mem[96]
            mem[_834 + floor32(arg2.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_834 + 100] = (32 * mem[96]) + floor32(arg2.length) + 192
            mem[(32 * _836) + _834 + floor32(arg2.length) + 196] = mem[(32 * arg2.length) + 128]
            _1659 = mem[(32 * arg2.length) + 128]
            mem[(32 * _836) + _834 + floor32(arg2.length) + 228 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            require ext_code.size(arg3)
            call arg3.0x20e67c76 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * _1659) + (32 * _836) + _834 + floor32(arg2.length) + -mem[64] + 224]
        else:
            mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while idx < arg2.length:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg3)
                staticcall arg3.rewardPerBlock(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 32, 68, code.data[21817 len 68], mem[mem[64] + 136 len 28]
                _891 = mem[64]
                mem[64] = mem[64] + 64
                mem[_891] = 30
                mem[_891 + 32] = 'SafeMath: subtraction overflow'
                if block.number > ext_call.return_data[0]:
                    _897 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _897 + 68] = mem[idx + _891 + 32]
                        idx = idx + 32
                        continue 
                    mem[_897 + 68] = mem[_897 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _897 + -mem[64] + 100
                if not ext_call.return_data[0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 0
                    require idx < arg2.length
                    if cd[((32 * idx) + arg2 + 36)] <= 0:
                        revert with 0, 32, 68, code.data[21817 len 68], mem[mem[64] + 136 len 28]
                    _947 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_947] = 30
                    mem[_947 + 32] = 'SafeMath: subtraction overflow'
                    if block.number > arg1:
                        _963 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _963 + 68] = mem[idx + _947 + 32]
                            idx = idx + 32
                            continue 
                        mem[_963 + 68] = mem[_963 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _963 + -mem[64] + 100
                    if not cd[((32 * idx) + arg2 + 36)]:
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                        mem[mem[64] + 4] = idx
                        require ext_code.size(arg3)
                        staticcall arg3.0xb6d0dcd8 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        idx = idx + 1
                        continue 
                    if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) / cd[((32 * idx) + arg2 + 36)] != arg1 - block.number:
                        revert with 0, 32, 33, code.data[21965 len 33], mem[mem[64] + 101 len 31]
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 4] = idx
                    require ext_code.size(arg3)
                    staticcall arg3.0xb6d0dcd8 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * arg2.length) + 128]
                    if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) > 0:
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        _1255 = mem[64]
                        mem[mem[64] + 36] = arg3
                        mem[mem[64] + 68] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)])
                        _1256 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1256 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1256 + 36 len 28]
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        _1323 = mem[_1256]
                        t = _1256 + 32
                        u = mem[64]
                        s = mem[_1256]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1256])] = mem[_1256 + floor32(mem[_1256]) + -(mem[_1256] % 32) + 64 len mem[_1256] % 32] or Mask(8 * -(mem[_1256] % 32) + 32, -(8 * -(mem[_1256] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1256])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1323 + _1255 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                        else:
                            _1760 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1760] = return_data.size
                            mem[_1760 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1760 + 32]:
                                    revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - block.number:
                        revert with 0, 32, 33, code.data[21965 len 33], mem[mem[64] + 101 len 31]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0])
                    require idx < arg2.length
                    if cd[((32 * idx) + arg2 + 36)] <= 0:
                        revert with 0, 32, 68, code.data[21817 len 68], mem[mem[64] + 136 len 28]
                    _962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_962] = 30
                    mem[_962 + 32] = 'SafeMath: subtraction overflow'
                    if block.number > arg1:
                        _978 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _978 + 68] = mem[idx + _962 + 32]
                            idx = idx + 32
                            continue 
                        mem[_978 + 68] = mem[_978 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _978 + -mem[64] + 100
                    if not cd[((32 * idx) + arg2 + 36)]:
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                        mem[mem[64] + 4] = idx
                        require ext_code.size(arg3)
                        staticcall arg3.0xb6d0dcd8 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        if 0 > (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0]):
                            require idx < mem[96]
                            require idx < mem[(32 * arg2.length) + 128]
                            _1252 = mem[64]
                            mem[mem[64] + 36] = arg3
                            mem[mem[64] + 68] = (-1 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.number * ext_call.return_data[0])
                            _1253 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1253 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1253 + 36 len 28]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1319 = mem[_1253]
                            t = _1253 + 32
                            u = _1252 + 100
                            s = mem[_1253]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1252 + floor32(mem[_1253]) + 100] = mem[_1253 + -(mem[_1253] % 32) + floor32(mem[_1253]) + 64 len mem[_1253] % 32] or Mask(8 * -(mem[_1253] % 32) + 32, -(8 * -(mem[_1253] % 32) + 32) + 256, mem[_1252 + floor32(mem[_1253]) + 100])
                            call address(ext_call.return_data[0]).mem[_1252 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1252 + 104 len _1319 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[_1252 + 210 len 22]
                            else:
                                mem[64] = _1252 + ceil32(return_data.size) + 101
                                mem[_1252 + 100] = return_data.size
                                mem[_1252 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1252 + 132]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[_1252 + ceil32(return_data.size) + 211 len 22]
                    else:
                        if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) / cd[((32 * idx) + arg2 + 36)] != arg1 - block.number:
                            revert with 0, 32, 33, code.data[21965 len 33], mem[mem[64] + 101 len 31]
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 4] = idx
                        require ext_code.size(arg3)
                        staticcall arg3.0xb6d0dcd8 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) > (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0]):
                            require idx < mem[96]
                            require idx < mem[(32 * arg2.length) + 128]
                            _1285 = mem[64]
                            mem[mem[64] + 36] = arg3
                            mem[mem[64] + 68] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (block.number * ext_call.return_data[0])
                            _1286 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1286 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1286 + 36 len 28]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1371 = mem[_1286]
                            t = _1286 + 32
                            u = mem[64]
                            s = mem[_1286]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_1286])] = mem[_1286 + floor32(mem[_1286]) + -(mem[_1286] % 32) + 64 len mem[_1286] % 32] or Mask(8 * -(mem[_1286] % 32) + 32, -(8 * -(mem[_1286] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1286])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1371 + _1285 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                            else:
                                _1756 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1756] = return_data.size
                                mem[_1756 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1756 + 32]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                idx = idx + 1
                continue 
            _839 = mem[64]
            mem[mem[64]] = 0x20e67c7600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = arg2.length
            mem[mem[64] + 164 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            mem[(32 * arg2.length) + mem[64] + 164] = 0
            mem[mem[64] + 68] = floor32(arg2.length) + 160
            mem[_839 + floor32(arg2.length) + 164] = mem[96]
            _841 = mem[96]
            mem[_839 + floor32(arg2.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_839 + 100] = (32 * mem[96]) + floor32(arg2.length) + 192
            mem[(32 * _841) + _839 + floor32(arg2.length) + 196] = mem[(32 * arg2.length) + 128]
            _1681 = mem[(32 * arg2.length) + 128]
            mem[(32 * _841) + _839 + floor32(arg2.length) + 228 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            require ext_code.size(arg3)
            call arg3.0x20e67c76 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * _1681) + (32 * _841) + _839 + floor32(arg2.length) + -mem[64] + 224]
    else:
        mem[128 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        require arg2.length <= test266151307()
        mem[(32 * arg2.length) + 128] = arg2.length
        mem[64] = (64 * arg2.length) + 160
        if not arg2.length:
            idx = 0
            while idx < arg2.length:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg3)
                staticcall arg3.rewardPerBlock(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 32, 68, code.data[21817 len 68], mem[mem[64] + 136 len 28]
                _892 = mem[64]
                mem[64] = mem[64] + 64
                mem[_892] = 30
                mem[_892 + 32] = 'SafeMath: subtraction overflow'
                if block.number > ext_call.return_data[0]:
                    _900 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _900 + 68] = mem[idx + _892 + 32]
                        idx = idx + 32
                        continue 
                    mem[_900 + 68] = mem[_900 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _900 + -mem[64] + 100
                if not ext_call.return_data[0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 0
                    require idx < arg2.length
                    if cd[((32 * idx) + arg2 + 36)] <= 0:
                        revert with 0, 32, 68, code.data[21817 len 68], mem[mem[64] + 136 len 28]
                    _948 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_948] = 30
                    mem[_948 + 32] = 'SafeMath: subtraction overflow'
                    if block.number > arg1:
                        _967 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _967 + 68] = mem[idx + _948 + 32]
                            idx = idx + 32
                            continue 
                        mem[_967 + 68] = mem[_967 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _967 + -mem[64] + 100
                    if not cd[((32 * idx) + arg2 + 36)]:
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                        mem[mem[64] + 4] = idx
                        require ext_code.size(arg3)
                        staticcall arg3.0xb6d0dcd8 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        idx = idx + 1
                        continue 
                    if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) / cd[((32 * idx) + arg2 + 36)] != arg1 - block.number:
                        revert with 0, 32, 33, code.data[21965 len 33], mem[mem[64] + 101 len 31]
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 4] = idx
                    require ext_code.size(arg3)
                    staticcall arg3.0xb6d0dcd8 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * arg2.length) + 128]
                    if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) > 0:
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        _1263 = mem[64]
                        mem[mem[64] + 36] = arg3
                        mem[mem[64] + 68] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)])
                        _1264 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1264 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1264 + 36 len 28]
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        _1335 = mem[_1264]
                        t = _1264 + 32
                        u = mem[64]
                        s = mem[_1264]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[mem[64] + floor32(mem[_1264])] = mem[_1264 + floor32(mem[_1264]) + -(mem[_1264] % 32) + 64 len mem[_1264] % 32] or Mask(8 * -(mem[_1264] % 32) + 32, -(8 * -(mem[_1264] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1264])])
                        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1335 + _1263 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                        else:
                            _1770 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1770] = return_data.size
                            mem[_1770 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1770 + 32]:
                                    revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - block.number:
                        revert with 0, 32, 33, code.data[21965 len 33], mem[mem[64] + 101 len 31]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0])
                    require idx < arg2.length
                    if cd[((32 * idx) + arg2 + 36)] <= 0:
                        revert with 0, 32, 68, code.data[21817 len 68], mem[mem[64] + 136 len 28]
                    _966 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_966] = 30
                    mem[_966 + 32] = 'SafeMath: subtraction overflow'
                    if block.number > arg1:
                        _982 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _982 + 68] = mem[idx + _966 + 32]
                            idx = idx + 32
                            continue 
                        mem[_982 + 68] = mem[_982 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _982 + -mem[64] + 100
                    if not cd[((32 * idx) + arg2 + 36)]:
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                        mem[mem[64] + 4] = idx
                        require ext_code.size(arg3)
                        staticcall arg3.0xb6d0dcd8 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        if 0 > (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0]):
                            require idx < mem[96]
                            require idx < mem[(32 * arg2.length) + 128]
                            _1260 = mem[64]
                            mem[mem[64] + 36] = arg3
                            mem[mem[64] + 68] = (-1 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.number * ext_call.return_data[0])
                            _1261 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1261 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1261 + 36 len 28]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1331 = mem[_1261]
                            t = _1261 + 32
                            u = _1260 + 100
                            s = mem[_1261]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1260 + floor32(mem[_1261]) + 100] = mem[_1261 + -(mem[_1261] % 32) + floor32(mem[_1261]) + 64 len mem[_1261] % 32] or Mask(8 * -(mem[_1261] % 32) + 32, -(8 * -(mem[_1261] % 32) + 32) + 256, mem[_1260 + floor32(mem[_1261]) + 100])
                            call address(ext_call.return_data[0]).mem[_1260 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1260 + 104 len _1331 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[_1260 + 210 len 22]
                            else:
                                mem[64] = _1260 + ceil32(return_data.size) + 101
                                mem[_1260 + 100] = return_data.size
                                mem[_1260 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1260 + 132]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[_1260 + ceil32(return_data.size) + 211 len 22]
                    else:
                        if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) / cd[((32 * idx) + arg2 + 36)] != arg1 - block.number:
                            revert with 0, 32, 33, code.data[21965 len 33], mem[mem[64] + 101 len 31]
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 4] = idx
                        require ext_code.size(arg3)
                        staticcall arg3.0xb6d0dcd8 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) > (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0]):
                            require idx < mem[96]
                            require idx < mem[(32 * arg2.length) + 128]
                            _1292 = mem[64]
                            mem[mem[64] + 36] = arg3
                            mem[mem[64] + 68] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (block.number * ext_call.return_data[0])
                            _1293 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1293 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1293 + 36 len 28]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1383 = mem[_1293]
                            t = _1293 + 32
                            u = mem[64]
                            s = mem[_1293]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_1293])] = mem[_1293 + floor32(mem[_1293]) + -(mem[_1293] % 32) + 64 len mem[_1293] % 32] or Mask(8 * -(mem[_1293] % 32) + 32, -(8 * -(mem[_1293] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1293])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1383 + _1292 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                            else:
                                _1766 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1766] = return_data.size
                                mem[_1766 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1766 + 32]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                idx = idx + 1
                continue 
            _844 = mem[64]
            mem[mem[64]] = 0x20e67c7600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = arg2.length
            mem[mem[64] + 164 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            mem[(32 * arg2.length) + mem[64] + 164] = 0
            mem[mem[64] + 68] = floor32(arg2.length) + 160
            mem[_844 + floor32(arg2.length) + 164] = mem[96]
            _846 = mem[96]
            mem[_844 + floor32(arg2.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_844 + 100] = (32 * mem[96]) + floor32(arg2.length) + 192
            mem[(32 * _846) + _844 + floor32(arg2.length) + 196] = mem[(32 * arg2.length) + 128]
            _1703 = mem[(32 * arg2.length) + 128]
            mem[(32 * _846) + _844 + floor32(arg2.length) + 228 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            require ext_code.size(arg3)
            call arg3.0x20e67c76 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * _1703) + (32 * _846) + _844 + floor32(arg2.length) + -mem[64] + 224]
        else:
            mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while idx < arg2.length:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg3)
                staticcall arg3.rewardPerBlock(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 32, 68, code.data[21817 len 68], mem[mem[64] + 136 len 28]
                _893 = mem[64]
                mem[64] = mem[64] + 64
                mem[_893] = 30
                mem[_893 + 32] = 'SafeMath: subtraction overflow'
                if block.number > ext_call.return_data[0]:
                    _903 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _903 + 68] = mem[idx + _893 + 32]
                        idx = idx + 32
                        continue 
                    mem[_903 + 68] = mem[_903 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _903 + -mem[64] + 100
                if not ext_call.return_data[0]:
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = 0
                    require idx < arg2.length
                    if cd[((32 * idx) + arg2 + 36)] <= 0:
                        revert with 0, 32, 68, code.data[21817 len 68], mem[mem[64] + 136 len 28]
                    _949 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_949] = 30
                    mem[_949 + 32] = 'SafeMath: subtraction overflow'
                    if block.number > arg1:
                        _971 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _971 + 68] = mem[idx + _949 + 32]
                            idx = idx + 32
                            continue 
                        mem[_971 + 68] = mem[_971 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _971 + -mem[64] + 100
                    if not cd[((32 * idx) + arg2 + 36)]:
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                        mem[mem[64] + 4] = idx
                        require ext_code.size(arg3)
                        staticcall arg3.0xb6d0dcd8 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        idx = idx + 1
                        continue 
                    if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) / cd[((32 * idx) + arg2 + 36)] != arg1 - block.number:
                        revert with 0, 32, 33, code.data[21965 len 33], mem[mem[64] + 101 len 31]
                    require idx < mem[(32 * arg2.length) + 128]
                    mem[(32 * idx) + (32 * arg2.length) + 160] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 4] = idx
                    require ext_code.size(arg3)
                    staticcall arg3.0xb6d0dcd8 with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require idx < mem[96]
                    require idx < mem[(32 * arg2.length) + 128]
                    if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) > 0:
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        _1271 = mem[64]
                        mem[mem[64] + 36] = arg3
                        mem[mem[64] + 68] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)])
                        _1272 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_1272 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1272 + 36 len 28]
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'SafeERC20: call to non-contract'
                        _1347 = mem[_1272]
                        t = _1272 + 32
                        u = _1271 + 100
                        s = mem[_1272]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1271 + floor32(mem[_1272]) + 100] = mem[_1272 + -(mem[_1272] % 32) + floor32(mem[_1272]) + 64 len mem[_1272] % 32] or Mask(8 * -(mem[_1272] % 32) + 32, -(8 * -(mem[_1272] % 32) + 32) + 256, mem[_1271 + floor32(mem[_1272]) + 100])
                        call address(ext_call.return_data[0]).mem[_1271 + 100 len 4] with:
                             gas gas_remaining wei
                            args mem[_1271 + 104 len _1347 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                if not mem[128]:
                                    revert with 0, 32, 42, code.data[22231 len 42], mem[_1271 + 210 len 22]
                        else:
                            mem[64] = _1271 + ceil32(return_data.size) + 101
                            mem[_1271 + 100] = return_data.size
                            mem[_1271 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[_1271 + 132]:
                                    revert with 0, 32, 42, code.data[22231 len 42], mem[_1271 + ceil32(return_data.size) + 211 len 22]
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - block.number:
                        revert with 0, 32, 33, code.data[21965 len 33], mem[mem[64] + 101 len 31]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0])
                    require idx < arg2.length
                    if cd[((32 * idx) + arg2 + 36)] <= 0:
                        revert with 0, 32, 68, code.data[21817 len 68], mem[mem[64] + 136 len 28]
                    _970 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_970] = 30
                    mem[_970 + 32] = 'SafeMath: subtraction overflow'
                    if block.number > arg1:
                        _986 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _986 + 68] = mem[idx + _970 + 32]
                            idx = idx + 32
                            continue 
                        mem[_986 + 68] = mem[_986 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _986 + -mem[64] + 100
                    if not cd[((32 * idx) + arg2 + 36)]:
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = 0
                        mem[mem[64] + 4] = idx
                        require ext_code.size(arg3)
                        staticcall arg3.0xb6d0dcd8 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        if 0 > (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0]):
                            require idx < mem[96]
                            require idx < mem[(32 * arg2.length) + 128]
                            _1268 = mem[64]
                            mem[mem[64] + 36] = arg3
                            mem[mem[64] + 68] = (-1 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.number * ext_call.return_data[0])
                            _1269 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1269 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1269 + 36 len 28]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1343 = mem[_1269]
                            t = _1269 + 32
                            u = _1268 + 100
                            s = mem[_1269]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1268 + floor32(mem[_1269]) + 100] = mem[_1269 + -(mem[_1269] % 32) + floor32(mem[_1269]) + 64 len mem[_1269] % 32] or Mask(8 * -(mem[_1269] % 32) + 32, -(8 * -(mem[_1269] % 32) + 32) + 256, mem[_1268 + floor32(mem[_1269]) + 100])
                            call address(ext_call.return_data[0]).mem[_1268 + 100 len 4] with:
                                 gas gas_remaining wei
                                args mem[_1268 + 104 len _1343 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[_1268 + 210 len 22]
                            else:
                                mem[64] = _1268 + ceil32(return_data.size) + 101
                                mem[_1268 + 100] = return_data.size
                                mem[_1268 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1268 + 132]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[_1268 + ceil32(return_data.size) + 211 len 22]
                    else:
                        if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) / cd[((32 * idx) + arg2 + 36)] != arg1 - block.number:
                            revert with 0, 32, 33, code.data[21965 len 33], mem[mem[64] + 101 len 31]
                        require idx < mem[(32 * arg2.length) + 128]
                        mem[(32 * idx) + (32 * arg2.length) + 160] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 4] = idx
                        require ext_code.size(arg3)
                        staticcall arg3.0xb6d0dcd8 with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require idx < mem[96]
                        require idx < mem[(32 * arg2.length) + 128]
                        if (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) > (ext_call.return_data[0] * ext_call.return_data[0]) - (block.number * ext_call.return_data[0]):
                            require idx < mem[96]
                            require idx < mem[(32 * arg2.length) + 128]
                            _1299 = mem[64]
                            mem[mem[64] + 36] = arg3
                            mem[mem[64] + 68] = (arg1 * cd[((32 * idx) + arg2 + 36)]) - (block.number * cd[((32 * idx) + arg2 + 36)]) - (ext_call.return_data[0] * ext_call.return_data[0]) + (block.number * ext_call.return_data[0])
                            _1300 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1300 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1300 + 36 len 28]
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1395 = mem[_1300]
                            t = _1300 + 32
                            u = mem[64]
                            s = mem[_1300]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_1300])] = mem[_1300 + floor32(mem[_1300]) + -(mem[_1300] % 32) + 64 len mem[_1300] % 32] or Mask(8 * -(mem[_1300] % 32) + 32, -(8 * -(mem[_1300] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1300])])
                            call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1395 + _1299 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                            else:
                                _1776 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1776] = return_data.size
                                mem[_1776 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_1776 + 32]:
                                        revert with 0, 32, 42, code.data[22231 len 42], mem[mem[64] + 110 len 22]
                idx = idx + 1
                continue 
            _849 = mem[64]
            mem[mem[64]] = 0x20e67c7600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = arg2.length
            mem[mem[64] + 164 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            mem[(32 * arg2.length) + mem[64] + 164] = 0
            mem[mem[64] + 68] = floor32(arg2.length) + 160
            mem[_849 + floor32(arg2.length) + 164] = mem[96]
            _851 = mem[96]
            mem[_849 + floor32(arg2.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_849 + 100] = (32 * mem[96]) + floor32(arg2.length) + 192
            mem[(32 * _851) + _849 + floor32(arg2.length) + 196] = mem[(32 * arg2.length) + 128]
            _1725 = mem[(32 * arg2.length) + 128]
            mem[(32 * _851) + _849 + floor32(arg2.length) + 228 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            require ext_code.size(arg3)
            call arg3.0x20e67c76 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (32 * _1725) + (32 * _851) + _849 + floor32(arg2.length) + -mem[64] + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
