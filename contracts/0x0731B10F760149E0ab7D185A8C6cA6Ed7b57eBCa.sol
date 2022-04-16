contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - getProfit(address arg1, address arg2)
#  - flashArbitrage(address arg1, address arg2)
#
address owner;
address stor1;
array of struct stor2;
mapping of uint256 stor3;

function owner() {
    return owner
}

function baseTokensContains(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not stor3[address(arg1)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function addBaseToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3[address(arg1)]:
        stor2.length++
        stor2[stor2.length].field_0 = arg1
        stor2[stor2.length].field_160 = 0
        stor3[address(arg1)] = stor2.length
    emit BaseTokenAdded(arg1);
}

function withdraw() {
    if eth.balance(this.address) <= 0:
        if var77002 >= stor2.length:
        if var83001 >= stor2.length:
            revert with 'NH{q', 50
        require ext_code.size(var105003)
        # nil
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(owner, eth.balance(this.address));
        if var83002 >= stor2.length:
        if var89001 >= stor2.length:
            revert with 'NH{q', 50
        require ext_code.size(var111003)
        # nil
}

function getBaseTokens() {
    if stor2.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if stor2.length:
        mem[128 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        if idx >= stor2.length:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = stor2[idx].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function removeBaseToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor3[address(arg1)]:
        if stor3[address(arg1)] < 1:
            revert with 'NH{q', 17
        if stor2.length < 1:
            revert with 'NH{q', 17
        if stor2.length - 1 != stor3[address(arg1)] - 1:
            if stor2.length - 1 >= stor2.length:
                revert with 'NH{q', 50
            if stor3[address(arg1)] - 1 >= stor2.length:
                revert with 'NH{q', 50
            stor2[stor3[address(arg1)]].field_0 = stor2[stor2.length].field_0
            stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
        if not stor2.length:
            revert with 'NH{q', 49
        stor2[stor2.length].field_0 = 0
        stor2.length--
        stor3[address(arg1)] = 0
    emit BaseTokenRemoved(arg1);
}

function _fallback() {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if stor1 != msg.sender:
        revert with 0, 'Non permissioned address call'
    if address(arg1) != this.address:
        revert with 0, 'Not from this contract'
    require arg4.length >= 224
    if not bool(ceil32(arg4.length) + 352 <= test266151307()):
        revert with 'NH{q', 65
    require mem[128] == mem[140 len 20]
    mem[ceil32(arg4.length) + 128] = mem[128]
    require mem[160] == mem[172 len 20]
    mem[ceil32(arg4.length) + 160] = mem[160]
    require mem[192] == bool(mem[192])
    mem[ceil32(arg4.length) + 192] = mem[192]
    require mem[224] == mem[236 len 20]
    mem[ceil32(arg4.length) + 224] = mem[224]
    require mem[256] == mem[268 len 20]
    mem[ceil32(arg4.length) + 256] = mem[256]
    require mem[288] == mem[288]
    mem[ceil32(arg4.length) + 288] = mem[288]
    require mem[320] == mem[320]
    mem[ceil32(arg4.length) + 320] = mem[320]
    mem[ceil32(arg4.length) + 388] = mem[ceil32(arg4.length) + 172 len 20]
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(mem[ceil32(arg4.length) + 236 len 20]) <= 0:
        revert with 0, 'Address: call to non-contract'
    if arg2 > 0:
        mem[ceil32(arg4.length) + 516 len 96] = 0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0
        mem[ceil32(arg4.length) + 584] = 0
        call mem[ceil32(arg4.length) + 236 len 20] with:
           funct Mask(32, 224, 0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if arg4.length > 0:
                    revert with arg4[all]
                revert with 0, 'SafeERC20: low-level call failed'
            if arg4.length > 0:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(arg4.length) + 548] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if mem[ceil32(arg4.length) + 192]:
                mem[ceil32(arg4.length) + 552] = mem[ceil32(arg4.length) + 320]
                mem[ceil32(arg4.length) + 584] = 0
                mem[ceil32(arg4.length) + 616] = this.address
                mem[ceil32(arg4.length) + 648] = 128
                mem[ceil32(arg4.length) + 680] = 0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0
                mem[ceil32(arg4.length) + 712 len ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0)] = mem[ceil32(arg4.length) + 548 len ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0)]
                if ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0) <= 0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0:
                    require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                    call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 320], 0, address(this.address), 128, 0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0, mem[ceil32(arg4.length) + 712 len ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0)]
                else:
                    mem[ceil32(arg4.length) + 0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0 + 712] = 0
                    require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                    call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 320], 0, address(this.address), 128, 0, mem[ceil32(arg4.length) + 388], arg2, 0, mem[ceil32(arg4.length) + 712 len ceil32(0, mem[ceil32(arg4.length) + 388], arg2, 0)]
            else:
                mem[ceil32(arg4.length) + 552] = 0
                mem[ceil32(arg4.length) + 584] = mem[ceil32(arg4.length) + 320]
                mem[ceil32(arg4.length) + 616] = this.address
                mem[ceil32(arg4.length) + 648] = 128
                mem[ceil32(arg4.length) + 680] = 0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0
                mem[ceil32(arg4.length) + 712 len ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0)] = mem[ceil32(arg4.length) + 548 len ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0)]
                if ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0) <= 0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0:
                    require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                    call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, mem[ceil32(arg4.length) + 320], address(this.address), 128, 0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0, mem[ceil32(arg4.length) + 712 len ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0)]
                else:
                    mem[ceil32(arg4.length) + 0, mem[ceil32(arg4.length) + 172 len 20], arg2, 0 + 712] = 0
                    require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                    call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, mem[ceil32(arg4.length) + 320], address(this.address), 128, 0, mem[ceil32(arg4.length) + 388], arg2, 0, mem[ceil32(arg4.length) + 712 len ceil32(0, mem[ceil32(arg4.length) + 388], arg2, 0)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(mem[ceil32(arg4.length) + 268 len 20]) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(arg4.length) + 712 len 96] = 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0
            call mem[ceil32(arg4.length) + 268 len 20] with:
               funct Mask(32, 224, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length > 0:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length > 0:
                    require arg4.length >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(arg4.length) + 744 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(arg4.length) + 744] == bool(mem[ceil32(arg4.length) + 744])
                    if not mem[ceil32(arg4.length) + 744]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(arg4.length) + 516] = return_data.size
            mem[ceil32(arg4.length) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if mem[ceil32(arg4.length) + 192]:
                    _583 = mem[ceil32(arg4.length) + 320]
                    _604 = mem[ceil32(arg4.length) + 160]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 549] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 553] = mem[ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 585] = 0
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 617] = this.address
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 649] = 128
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 681] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 549 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    if ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]) <= mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]:
                        require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                        call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 320], 0, address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    else:
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + mem[ceil32(arg4.length) + ceil32(return_data.size) + 517] + 713] = 0
                        require ext_code.size(address(_604))
                        call address(_604).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _583, 0, address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                else:
                    _584 = mem[ceil32(arg4.length) + 320]
                    _605 = mem[ceil32(arg4.length) + 160]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 549] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 553] = 0
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 585] = mem[ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 617] = this.address
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 649] = 128
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 681] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 549 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    if ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]) <= mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]:
                        require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                        call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, mem[ceil32(arg4.length) + 320], address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    else:
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + mem[ceil32(arg4.length) + ceil32(return_data.size) + 517] + 713] = 0
                        require ext_code.size(address(_605))
                        call address(_605).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _584, address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
            else:
                require return_data.size >= 32
                require mem[ceil32(arg4.length) + 548] == bool(mem[ceil32(arg4.length) + 548])
                if not mem[ceil32(arg4.length) + 548]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[ceil32(arg4.length) + 192]:
                    _690 = mem[ceil32(arg4.length) + 320]
                    _708 = mem[ceil32(arg4.length) + 160]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 549] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 553] = mem[ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 585] = 0
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 617] = this.address
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 649] = 128
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 681] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 549 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    if ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]) <= mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]:
                        require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                        call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 320], 0, address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    else:
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + mem[ceil32(arg4.length) + ceil32(return_data.size) + 517] + 713] = 0
                        require ext_code.size(address(_708))
                        call address(_708).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _690, 0, address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                else:
                    _691 = mem[ceil32(arg4.length) + 320]
                    _709 = mem[ceil32(arg4.length) + 160]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 549] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 553] = 0
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 585] = mem[ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 617] = this.address
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 649] = 128
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 681] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 549 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    if ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]) <= mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]:
                        require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                        call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, mem[ceil32(arg4.length) + 320], address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    else:
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + mem[ceil32(arg4.length) + ceil32(return_data.size) + 517] + 713] = 0
                        require ext_code.size(address(_709))
                        call address(_709).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _691, address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(mem[ceil32(arg4.length) + 268 len 20]) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len 96] = 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0
            call mem[ceil32(arg4.length) + 268 len 20] with:
               funct Mask(32, 224, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length > 0:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length > 0:
                    require arg4.length >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 745 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(arg4.length) + ceil32(return_data.size) + 745] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 745])
                    if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 745]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[ceil32(arg4.length) + 516 len 96] = 0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0
        mem[ceil32(arg4.length) + 584] = 0
        call mem[ceil32(arg4.length) + 236 len 20] with:
           funct Mask(32, 224, 0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if arg4.length > 0:
                    revert with arg4[all]
                revert with 0, 'SafeERC20: low-level call failed'
            if arg4.length > 0:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(arg4.length) + 548] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if mem[ceil32(arg4.length) + 192]:
                mem[ceil32(arg4.length) + 552] = mem[ceil32(arg4.length) + 320]
                mem[ceil32(arg4.length) + 584] = 0
                mem[ceil32(arg4.length) + 616] = this.address
                mem[ceil32(arg4.length) + 648] = 128
                mem[ceil32(arg4.length) + 680] = 0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0
                mem[ceil32(arg4.length) + 712 len ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0)] = mem[ceil32(arg4.length) + 548 len ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0)]
                if ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0) <= 0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0:
                    require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                    call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 320], 0, address(this.address), 128, 0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0, mem[ceil32(arg4.length) + 712 len ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0)]
                else:
                    mem[ceil32(arg4.length) + 0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0 + 712] = 0
                    require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                    call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg4.length) + 320], 0, address(this.address), 128, 0, mem[ceil32(arg4.length) + 388], arg3, 0, mem[ceil32(arg4.length) + 712 len ceil32(0, mem[ceil32(arg4.length) + 388], arg3, 0)]
            else:
                mem[ceil32(arg4.length) + 552] = 0
                mem[ceil32(arg4.length) + 584] = mem[ceil32(arg4.length) + 320]
                mem[ceil32(arg4.length) + 616] = this.address
                mem[ceil32(arg4.length) + 648] = 128
                mem[ceil32(arg4.length) + 680] = 0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0
                mem[ceil32(arg4.length) + 712 len ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0)] = mem[ceil32(arg4.length) + 548 len ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0)]
                if ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0) <= 0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0:
                    require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                    call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, mem[ceil32(arg4.length) + 320], address(this.address), 128, 0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0, mem[ceil32(arg4.length) + 712 len ceil32(0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0)]
                else:
                    mem[ceil32(arg4.length) + 0, mem[ceil32(arg4.length) + 172 len 20], arg3, 0 + 712] = 0
                    require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                    call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, mem[ceil32(arg4.length) + 320], address(this.address), 128, 0, mem[ceil32(arg4.length) + 388], arg3, 0, mem[ceil32(arg4.length) + 712 len ceil32(0, mem[ceil32(arg4.length) + 388], arg3, 0)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(mem[ceil32(arg4.length) + 268 len 20]) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(arg4.length) + 712 len 96] = 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0
            call mem[ceil32(arg4.length) + 268 len 20] with:
               funct Mask(32, 224, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length > 0:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length > 0:
                    require arg4.length >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(arg4.length) + 744 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(arg4.length) + 744] == bool(mem[ceil32(arg4.length) + 744])
                    if not mem[ceil32(arg4.length) + 744]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(arg4.length) + 516] = return_data.size
            mem[ceil32(arg4.length) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if mem[ceil32(arg4.length) + 192]:
                    _593 = mem[ceil32(arg4.length) + 320]
                    _614 = mem[ceil32(arg4.length) + 160]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 549] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 553] = mem[ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 585] = 0
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 617] = this.address
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 649] = 128
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 681] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 549 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    if ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]) <= mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]:
                        require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                        call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 320], 0, address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    else:
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + mem[ceil32(arg4.length) + ceil32(return_data.size) + 517] + 713] = 0
                        require ext_code.size(address(_614))
                        call address(_614).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _593, 0, address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                else:
                    _594 = mem[ceil32(arg4.length) + 320]
                    _615 = mem[ceil32(arg4.length) + 160]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 549] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 553] = 0
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 585] = mem[ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 617] = this.address
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 649] = 128
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 681] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 549 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    if ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]) <= mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]:
                        require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                        call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, mem[ceil32(arg4.length) + 320], address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    else:
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + mem[ceil32(arg4.length) + ceil32(return_data.size) + 517] + 713] = 0
                        require ext_code.size(address(_615))
                        call address(_615).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _594, address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
            else:
                require return_data.size >= 32
                require mem[ceil32(arg4.length) + 548] == bool(mem[ceil32(arg4.length) + 548])
                if not mem[ceil32(arg4.length) + 548]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if mem[ceil32(arg4.length) + 192]:
                    _698 = mem[ceil32(arg4.length) + 320]
                    _718 = mem[ceil32(arg4.length) + 160]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 549] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 553] = mem[ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 585] = 0
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 617] = this.address
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 649] = 128
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 681] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 549 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    if ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]) <= mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]:
                        require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                        call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg4.length) + 320], 0, address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    else:
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + mem[ceil32(arg4.length) + ceil32(return_data.size) + 517] + 713] = 0
                        require ext_code.size(address(_718))
                        call address(_718).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _698, 0, address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                else:
                    _699 = mem[ceil32(arg4.length) + 320]
                    _719 = mem[ceil32(arg4.length) + 160]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 549] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 553] = 0
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 585] = mem[ceil32(arg4.length) + 320]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 617] = this.address
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 649] = 128
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 681] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]
                    mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])] = mem[ceil32(arg4.length) + ceil32(return_data.size) + 549 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    if ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]) <= mem[ceil32(arg4.length) + ceil32(return_data.size) + 517]:
                        require ext_code.size(mem[ceil32(arg4.length) + 172 len 20])
                        call mem[ceil32(arg4.length) + 172 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, mem[ceil32(arg4.length) + 320], address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
                    else:
                        mem[ceil32(arg4.length) + ceil32(return_data.size) + mem[ceil32(arg4.length) + ceil32(return_data.size) + 517] + 713] = 0
                        require ext_code.size(address(_719))
                        call address(_719).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _699, address(this.address), 128, mem[ceil32(arg4.length) + ceil32(return_data.size) + 517], mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len ceil32(mem[ceil32(arg4.length) + ceil32(return_data.size) + 517])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(mem[ceil32(arg4.length) + 268 len 20]) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(arg4.length) + ceil32(return_data.size) + 713 len 96] = 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0
            call mem[ceil32(arg4.length) + 268 len 20] with:
               funct Mask(32, 224, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, Mask(8 * -ceil32(arg4.length) + arg4.length + 20, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)], mem[ceil32(arg4.length) + 288], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length > 0:
                        revert with arg4[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg4.length > 0:
                    require arg4.length >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(arg4.length) + ceil32(return_data.size) + 745 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 814 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(arg4.length) + ceil32(return_data.size) + 745] == bool(mem[ceil32(arg4.length) + ceil32(return_data.size) + 745])
                    if not mem[ceil32(arg4.length) + ceil32(return_data.size) + 745]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    return arg4[all]
}



}
