contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
array of uint256 stor3;

function _fallback() payable {
    revert
}

function withdraw() payable {
    require msg.sender == stor2
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function delegate(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == stor2
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    delegate arg1.mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
}

function execute() payable {
    require msg.sender == stor2
    require ext_code.size(stor1)
    staticcall stor1.nodePrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.autoDistri() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor1)
    staticcall stor1.rewardPerNode() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(stor0)
        staticcall stor0.cashoutFee() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 100] = stor0
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args stor0
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 100 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(stor1)
        call stor1._changeNodePrice(uint256 arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1._changeAutoDistri(bool arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1._changeRewardPerNode(uint256 arg1) with:
             gas gas_remaining wei
            args (100 * ext_call.return_data[0] / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 132] = 64
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[(8 * ceil32(return_data.size)) + 164] = stor3.length.field_1
            if not bool(stor3.length):
                mem[(8 * ceil32(return_data.size)) + 196] = Mask(248, 8, stor3.length)
                require ext_code.size(stor1)
                call stor1.createNode(address arg1, string arg2) with:
                     gas gas_remaining wei
                    args address(this.address), Array(len=2 * Mask(256, -1, stor3.length.field_1), data=Mask(248, 8, stor3.length))
            else:
                if bool(stor3.length) != 1:
                    require ext_code.size(stor1)
                    call stor1.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + 100 len -(8 * ceil32(return_data.size)) - 100]
                else:
                    idx = 0
                    s = 0
                    while idx < stor3.length.field_1:
                        mem[(8 * ceil32(return_data.size)) + idx + 196] = stor3[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args address(this.address), Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[(8 * ceil32(return_data.size)) + 196 len ceil32(stor3.length.field_1)])
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[(8 * ceil32(return_data.size)) + 164] = stor3.length.field_1
            if not bool(stor3.length):
                mem[(8 * ceil32(return_data.size)) + 196] = Mask(248, 8, stor3.length)
                require ext_code.size(stor1)
                call stor1.createNode(address arg1, string arg2) with:
                     gas gas_remaining wei
                    args address(this.address), Array(len=stor3.length % 128, data=Mask(248, 8, stor3.length))
            else:
                if bool(stor3.length) != 1:
                    require ext_code.size(stor1)
                    call stor1.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + 100 len -(8 * ceil32(return_data.size)) - 100]
                else:
                    idx = 0
                    s = 0
                    while idx < stor3.length.field_1:
                        mem[(8 * ceil32(return_data.size)) + idx + 196] = stor3[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args address(this.address), Array(len=stor3.length % 128, data=mem[(8 * ceil32(return_data.size)) + 196 len ceil32(stor3.length.field_1)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        call stor0.cashoutReward(uint256 arg1) with:
             gas gas_remaining wei
            args block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1._changeNodePrice(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1._changeAutoDistri(bool arg1) with:
             gas gas_remaining wei
            args bool(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1._changeRewardPerNode(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor3.length):
                mem[(8 * ceil32(return_data.size)) + 128] = Mask(248, 8, stor3.length)
                mem[(8 * ceil32(return_data.size)) + stor3.length.field_1 + 128] = 'A'
                if bool(stor3.length):
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor3.length.field_1 + 1:
                        stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(8 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                    else:
                        stor3.length = 0
                        idx = 0
                        while stor3.length.field_1 + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor3.length.field_1 + 1:
                        stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(8 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                    else:
                        stor3.length = 0
                        idx = 0
                        while stor3.length.field_1 + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                if bool(stor3.length) != 1:
                    if bool(stor3.length):
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if -(8 * ceil32(return_data.size)) - 127:
                            stor3[].field_0 = Array(len=-(8 * ceil32(return_data.size)) - 127, data=mem[(8 * ceil32(return_data.size)) + 128 len -(8 * ceil32(return_data.size)) - 127])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if -(8 * ceil32(return_data.size)) - 127:
                            stor3[].field_0 = Array(len=-(8 * ceil32(return_data.size)) - 127, data=mem[(8 * ceil32(return_data.size)) + 128 len -(8 * ceil32(return_data.size)) - 127])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                else:
                    idx = 0
                    s = 0
                    while idx < stor3.length.field_1:
                        mem[(8 * ceil32(return_data.size)) + idx + 128] = stor3[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(8 * ceil32(return_data.size)) + stor3.length.field_1 + 128] = 'A'
                    if bool(stor3.length):
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor3.length.field_1 + 1:
                            stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(8 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor3.length.field_1 + 1:
                            stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(8 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor3.length):
                mem[(8 * ceil32(return_data.size)) + 128] = Mask(248, 8, stor3.length)
                mem[(8 * ceil32(return_data.size)) + stor3.length.field_1 + 128] = 'A'
                if bool(stor3.length):
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor3.length.field_1 + 1:
                        stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(8 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                    else:
                        stor3.length = 0
                        idx = 0
                        while stor3.length.field_1 + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor3.length.field_1 + 1:
                        stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(8 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                    else:
                        stor3.length = 0
                        idx = 0
                        while stor3.length.field_1 + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                if bool(stor3.length) != 1:
                    if bool(stor3.length):
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if -(8 * ceil32(return_data.size)) - 127:
                            stor3[].field_0 = Array(len=-(8 * ceil32(return_data.size)) - 127, data=mem[(8 * ceil32(return_data.size)) + 128 len -(8 * ceil32(return_data.size)) - 127])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if -(8 * ceil32(return_data.size)) - 127:
                            stor3[].field_0 = Array(len=-(8 * ceil32(return_data.size)) - 127, data=mem[(8 * ceil32(return_data.size)) + 128 len -(8 * ceil32(return_data.size)) - 127])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                else:
                    idx = 0
                    s = 0
                    while idx < stor3.length.field_1:
                        mem[(8 * ceil32(return_data.size)) + idx + 128] = stor3[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(8 * ceil32(return_data.size)) + stor3.length.field_1 + 128] = 'A'
                    if bool(stor3.length):
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor3.length.field_1 + 1:
                            stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(8 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor3.length.field_1 + 1:
                            stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(8 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
    else:
        mem[(6 * ceil32(return_data.size)) + 100] = stor0
        mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor0)
        staticcall stor0.cashoutFee() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 100] = stor0
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args stor0
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 100 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(stor1)
        call stor1._changeNodePrice(uint256 arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1._changeAutoDistri(bool arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1._changeRewardPerNode(uint256 arg1) with:
             gas gas_remaining wei
            args (100 * ext_call.return_data[0] / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 132] = 64
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[(10 * ceil32(return_data.size)) + 164] = stor3.length.field_1
            if not bool(stor3.length):
                mem[(10 * ceil32(return_data.size)) + 196] = Mask(248, 8, stor3.length)
                require ext_code.size(stor1)
                call stor1.createNode(address arg1, string arg2) with:
                     gas gas_remaining wei
                    args address(this.address), Array(len=2 * Mask(256, -1, stor3.length.field_1), data=Mask(248, 8, stor3.length))
            else:
                if bool(stor3.length) != 1:
                    require ext_code.size(stor1)
                    call stor1.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args mem[(10 * ceil32(return_data.size)) + 100 len (-10 * ceil32(return_data.size)) - 100]
                else:
                    idx = 0
                    s = 0
                    while idx < stor3.length.field_1:
                        mem[(10 * ceil32(return_data.size)) + idx + 196] = stor3[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args address(this.address), Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[(10 * ceil32(return_data.size)) + 196 len ceil32(stor3.length.field_1)])
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            mem[(10 * ceil32(return_data.size)) + 164] = stor3.length.field_1
            if not bool(stor3.length):
                mem[(10 * ceil32(return_data.size)) + 196] = Mask(248, 8, stor3.length)
                require ext_code.size(stor1)
                call stor1.createNode(address arg1, string arg2) with:
                     gas gas_remaining wei
                    args address(this.address), Array(len=stor3.length % 128, data=Mask(248, 8, stor3.length))
            else:
                if bool(stor3.length) != 1:
                    require ext_code.size(stor1)
                    call stor1.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args mem[(10 * ceil32(return_data.size)) + 100 len (-10 * ceil32(return_data.size)) - 100]
                else:
                    idx = 0
                    s = 0
                    while idx < stor3.length.field_1:
                        mem[(10 * ceil32(return_data.size)) + idx + 196] = stor3[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args address(this.address), Array(len=stor3.length % 128, data=mem[(10 * ceil32(return_data.size)) + 196 len ceil32(stor3.length.field_1)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor0)
        call stor0.cashoutReward(uint256 arg1) with:
             gas gas_remaining wei
            args block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1._changeNodePrice(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor1)
        call stor1._changeAutoDistri(bool arg1) with:
             gas gas_remaining wei
            args bool(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
        require ext_code.size(stor1)
        call stor1._changeRewardPerNode(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor3.length):
                mem[(10 * ceil32(return_data.size)) + 128] = Mask(248, 8, stor3.length)
                mem[(10 * ceil32(return_data.size)) + stor3.length.field_1 + 128] = 'A'
                if bool(stor3.length):
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor3.length.field_1 + 1:
                        stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(10 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                    else:
                        stor3.length = 0
                        idx = 0
                        while stor3.length.field_1 + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor3.length.field_1 + 1:
                        stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(10 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                    else:
                        stor3.length = 0
                        idx = 0
                        while stor3.length.field_1 + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                if bool(stor3.length) != 1:
                    if bool(stor3.length):
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if (-10 * ceil32(return_data.size)) - 127:
                            stor3[].field_0 = Array(len=(-10 * ceil32(return_data.size)) - 127, data=mem[(10 * ceil32(return_data.size)) + 128 len (-10 * ceil32(return_data.size)) - 127])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if (-10 * ceil32(return_data.size)) - 127:
                            stor3[].field_0 = Array(len=(-10 * ceil32(return_data.size)) - 127, data=mem[(10 * ceil32(return_data.size)) + 128 len (-10 * ceil32(return_data.size)) - 127])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                else:
                    idx = 0
                    s = 0
                    while idx < stor3.length.field_1:
                        mem[(10 * ceil32(return_data.size)) + idx + 128] = stor3[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(10 * ceil32(return_data.size)) + stor3.length.field_1 + 128] = 'A'
                    if bool(stor3.length):
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor3.length.field_1 + 1:
                            stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(10 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor3.length.field_1 + 1:
                            stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(10 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor3.length):
                mem[(10 * ceil32(return_data.size)) + 128] = Mask(248, 8, stor3.length)
                mem[(10 * ceil32(return_data.size)) + stor3.length.field_1 + 128] = 'A'
                if bool(stor3.length):
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor3.length.field_1 + 1:
                        stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(10 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                    else:
                        stor3.length = 0
                        idx = 0
                        while stor3.length.field_1 + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if stor3.length.field_1 + 1:
                        stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(10 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                    else:
                        stor3.length = 0
                        idx = 0
                        while stor3.length.field_1 + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                if bool(stor3.length) != 1:
                    if bool(stor3.length):
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if (-10 * ceil32(return_data.size)) - 127:
                            stor3[].field_0 = Array(len=(-10 * ceil32(return_data.size)) - 127, data=mem[(10 * ceil32(return_data.size)) + 128 len (-10 * ceil32(return_data.size)) - 127])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if (-10 * ceil32(return_data.size)) - 127:
                            stor3[].field_0 = Array(len=(-10 * ceil32(return_data.size)) - 127, data=mem[(10 * ceil32(return_data.size)) + 128 len (-10 * ceil32(return_data.size)) - 127])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                else:
                    idx = 0
                    s = 0
                    while idx < stor3.length.field_1:
                        mem[(10 * ceil32(return_data.size)) + idx + 128] = stor3[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(10 * ceil32(return_data.size)) + stor3.length.field_1 + 128] = 'A'
                    if bool(stor3.length):
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor3.length.field_1 + 1:
                            stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(10 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if stor3.length.field_1 + 1:
                            stor3[].field_0 = Array(len=stor3.length.field_1 + 1, data=mem[(10 * ceil32(return_data.size)) + 128 len stor3.length.field_1 + 1])
                        else:
                            stor3.length = 0
                            idx = 0
                            while stor3.length.field_1 + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
}



}
