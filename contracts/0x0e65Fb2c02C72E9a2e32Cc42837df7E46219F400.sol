contract main {




// =====================  Runtime code  =====================


address owner;
address sub_f48f38afAddress;
address stor2;
address stor3;
address stor4;
address stor9;
uint256 stor10;
address stor11;

function owner() {
    return owner
}

function sub_f48f38af(?) {
    return sub_f48f38afAddress
}

function _fallback() payable {
    revert
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    sub_f48f38afAddress = arg1
}

function sub_1cbcfa48(?) {
    if owner != msg.sender:
        if sub_f48f38afAddress != msg.sender:
            revert with 0, 'nod'
    require ext_code.size(stor2)
    call stor2.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor9, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getClaimableAmount() {
    if owner != msg.sender:
        if sub_f48f38afAddress != msg.sender:
            revert with 0, 'nod'
    require ext_code.size(stor9)
    call stor9.updatePool(uint256 rg1) with:
         gas gas_remaining wei
        args stor10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor9)
    staticcall stor9.pendingRewards(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args stor10, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a75cebaa(?) {
    if owner != msg.sender:
        if sub_f48f38afAddress != msg.sender:
            revert with 0, 'nod'
    require ext_code.size(stor9)
    call stor9.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function init(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    sub_f48f38afAddress = arg1
    mem[100] = stor9
    mem[132] = -1
    require ext_code.size(stor2)
    call stor2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor9, -1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor11
    mem[ceil32(return_data.size) + 132] = -1
    require ext_code.size(stor4)
    call stor4.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor11, -1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.deposit() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = stor4
    mem[(2 * ceil32(return_data.size)) + 160] = stor2
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 196] = stor10
        mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] - 10
        require ext_code.size(stor9)
        call stor9.deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 196 len (7 * ceil32(return_data.size)) + 64]
    else:
        mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 228] = 64
        mem[(4 * ceil32(return_data.size)) + 260] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor11)
        staticcall stor11.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _53 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _54 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require _53 + (32 * _54) + 32 <= return_data.size
        idx = 0
        s = (4 * ceil32(return_data.size)) + _53 + 224
        t = (6 * ceil32(return_data.size)) + 224
        while idx < _54:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 > _54:
            revert with 0, 'SafeMath: subtraction overflow'
        require _54 - 1 < _54
        if block.timestamp + 600 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        _85 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _88 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 196
        while idx < _88:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_85 + 100] = this.address
        mem[_85 + 132] = block.timestamp + 600
        require ext_code.size(stor11)
        call stor11.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _85 + (32 * _88) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _105 = mem[_104]
        require mem[_104] <= test266151307()
        require _104 + mem[_104] + 31 < _104 + return_data.size
        _106 = mem[_104 + mem[_104]]
        require mem[_104 + mem[_104]] <= test266151307()
        require _104 + ceil32(return_data.size) + (32 * mem[_104 + mem[_104]]) + 32 <= test266151307() and (32 * mem[_104 + mem[_104]]) + 32 >= 0
        mem[64] = _104 + ceil32(return_data.size) + (32 * mem[_104 + mem[_104]]) + 32
        mem[_104 + ceil32(return_data.size)] = _106
        require _105 + (32 * _106) + 32 <= return_data.size
        idx = 0
        s = _104 + _105 + 32
        t = _104 + ceil32(return_data.size) + 32
        while idx < _106:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _118 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_118] == mem[_118]
        require ext_code.size(stor9)
        call stor9.deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor10, mem[_118] - 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function drain() payable {
    if msg.sender == owner:
        mem[100] = stor9
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args stor9
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= 2:
            if owner != msg.sender:
                if sub_f48f38afAddress != msg.sender:
                    revert with 0, 'nod'
            require ext_code.size(stor9)
            call stor9.updatePool(uint256 rg1) with:
                 gas gas_remaining wei
                args stor10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor9)
            staticcall stor9.pendingRewards(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor10, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= 71062073123672400111883 * 3600:
                require ext_code.size(stor9)
                call stor9.withdraw(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor10, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor3)
                call stor3.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor2)
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor4)
                call stor4.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                require ext_code.size(stor2)
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor9, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if owner != msg.sender:
                    if sub_f48f38afAddress != msg.sender:
                        revert with 0, 'nod'
                require ext_code.size(stor9)
                call stor9.updatePool(uint256 rg1) with:
                     gas gas_remaining wei
                    args stor10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor9)
                staticcall stor9.pendingRewards(uint256 rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor10, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] >= 71062073123672400111883 * 3600:
                    require ext_code.size(stor9)
                    call stor9.withdraw(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor10, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(stor3)
                    call stor3.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(stor2)
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(stor4)
                    call stor4.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(stor4)
                call stor4.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96] = 2
                mem[(2 * ceil32(return_data.size)) + 128] = stor4
                mem[(2 * ceil32(return_data.size)) + 160] = stor2
                mem[(2 * ceil32(return_data.size)) + 196] = this.address
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    mem[(4 * ceil32(return_data.size)) + 196] = stor9
                    mem[(4 * ceil32(return_data.size)) + 228] = 1
                    require ext_code.size(stor2)
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if owner != msg.sender:
                        if sub_f48f38afAddress != msg.sender:
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 3
                            mem[(4 * ceil32(return_data.size)) + 260] = 'nod'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 192
                               len (7 * ceil32(return_data.size)) + 100
                    mem[(4 * ceil32(return_data.size)) + 196] = stor10
                    require ext_code.size(stor9)
                    call stor9.updatePool(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 196 len (7 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 196] = stor10
                    mem[(4 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(stor9)
                    staticcall stor9.pendingRewards(uint256 rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[(4 * ceil32(return_data.size)) + 196 len (7 * ceil32(return_data.size)) + 64]
                    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] >= 71062073123672400111883 * 3600:
                        mem[(8 * ceil32(return_data.size)) + 196] = stor10
                        mem[(8 * ceil32(return_data.size)) + 228] = 1
                        require ext_code.size(stor9)
                        call stor9.withdraw(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 196 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 196] = this.address
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 196 len (13 * ceil32(return_data.size)) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(9 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        require ext_code.size(stor3)
                        call stor3.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + 260 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address), mem[(10 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(12 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        require ext_code.size(stor2)
                        call stor2.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 260 len 20 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address), mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor4)
                        call stor4.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 260 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor11)
                    staticcall stor11.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _398 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _411 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require _398 + (32 * _411) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _398 + 224
                    t = (6 * ceil32(return_data.size)) + 224
                    while idx < _411:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 > _411:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require _411 - 1 < _411
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    _629 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _635 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _635:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_629 + 100] = this.address
                    mem[_629 + 132] = block.timestamp + 600
                    require ext_code.size(stor11)
                    call stor11.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _629 + (32 * _635) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _735 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _737 = mem[_735]
                    require mem[_735] <= test266151307()
                    require _735 + mem[_735] + 31 < _735 + return_data.size
                    _739 = mem[_735 + mem[_735]]
                    require mem[_735 + mem[_735]] <= test266151307()
                    require _735 + ceil32(return_data.size) + (32 * mem[_735 + mem[_735]]) + 32 <= test266151307() and (32 * mem[_735 + mem[_735]]) + 32 >= 0
                    mem[64] = _735 + ceil32(return_data.size) + (32 * mem[_735 + mem[_735]]) + 32
                    mem[_735 + ceil32(return_data.size)] = _739
                    require _737 + (32 * _739) + 32 <= return_data.size
                    idx = 0
                    s = _735 + _737 + 32
                    t = _735 + ceil32(return_data.size) + 32
                    while idx < _739:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = stor9
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor2)
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor9, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _849 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_849] == bool(mem[_849])
                    if msg.sender == owner:
                        require ext_code.size(stor9)
                        call stor9.updatePool(uint256 rg1) with:
                             gas gas_remaining wei
                            args stor10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = stor10
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor9)
                        staticcall stor9.pendingRewards(uint256 rg1, address rg2) with:
                                gas gas_remaining wei
                               args stor10, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _873 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_873] == mem[_873]
                        if mem[_873] >= 71062073123672400111883 * 3600:
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor9)
                            call stor9.withdraw(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args stor10, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _897 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _901 = mem[_897]
                            require mem[_897] == mem[_897]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _901
                            require ext_code.size(stor3)
                            call stor3.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _901
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _913 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_913] == bool(mem[_913])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _929 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _933 = mem[_929]
                            require mem[_929] == mem[_929]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _933
                            require ext_code.size(stor2)
                            call stor2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _933
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _945 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_945] == bool(mem[_945])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _961 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _965 = mem[_961]
                            require mem[_961] == mem[_961]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _965
                            require ext_code.size(stor4)
                            call stor4.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _965
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _977 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_977] == bool(mem[_977])
                    else:
                        if sub_f48f38afAddress != msg.sender:
                            revert with 0, 'nod'
                        require ext_code.size(stor9)
                        call stor9.updatePool(uint256 rg1) with:
                             gas gas_remaining wei
                            args stor10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = stor10
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor9)
                        staticcall stor9.pendingRewards(uint256 rg1, address rg2) with:
                                gas gas_remaining wei
                               args stor10, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _875 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_875] == mem[_875]
                        if mem[_875] >= 71062073123672400111883 * 3600:
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor9)
                            call stor9.withdraw(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args stor10, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _899 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _903 = mem[_899]
                            require mem[_899] == mem[_899]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _903
                            require ext_code.size(stor3)
                            call stor3.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _903
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _915 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_915] == bool(mem[_915])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _931 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _935 = mem[_931]
                            require mem[_931] == mem[_931]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _935
                            require ext_code.size(stor2)
                            call stor2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _935
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _947 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_947] == bool(mem[_947])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _963 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _967 = mem[_963]
                            require mem[_963] == mem[_963]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _967
                            require ext_code.size(stor4)
                            call stor4.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _967
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _979 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_979] == bool(mem[_979])
    else:
        if sub_f48f38afAddress != msg.sender:
            revert with 0, 'nod'
        mem[100] = stor9
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args stor9
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= 2:
            if owner != msg.sender:
                if sub_f48f38afAddress != msg.sender:
                    revert with 0, 'nod'
            require ext_code.size(stor9)
            call stor9.updatePool(uint256 rg1) with:
                 gas gas_remaining wei
                args stor10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor9)
            staticcall stor9.pendingRewards(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor10, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] >= 71062073123672400111883 * 3600:
                require ext_code.size(stor9)
                call stor9.withdraw(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor10, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor3)
                call stor3.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor2)
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(stor4)
                call stor4.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                require ext_code.size(stor2)
                call stor2.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor9, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if owner != msg.sender:
                    if sub_f48f38afAddress != msg.sender:
                        revert with 0, 'nod'
                require ext_code.size(stor9)
                call stor9.updatePool(uint256 rg1) with:
                     gas gas_remaining wei
                    args stor10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor9)
                staticcall stor9.pendingRewards(uint256 rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor10, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] >= 71062073123672400111883 * 3600:
                    require ext_code.size(stor9)
                    call stor9.withdraw(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor10, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(stor3)
                    call stor3.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(stor2)
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_code.size(stor4)
                    call stor4.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                require ext_code.size(stor4)
                call stor4.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 96] = 2
                mem[(2 * ceil32(return_data.size)) + 128] = stor4
                mem[(2 * ceil32(return_data.size)) + 160] = stor2
                mem[(2 * ceil32(return_data.size)) + 196] = this.address
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    mem[(4 * ceil32(return_data.size)) + 196] = stor9
                    mem[(4 * ceil32(return_data.size)) + 228] = 1
                    require ext_code.size(stor2)
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if owner != msg.sender:
                        if sub_f48f38afAddress != msg.sender:
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 3
                            mem[(4 * ceil32(return_data.size)) + 260] = 'nod'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 192
                               len (7 * ceil32(return_data.size)) + 100
                    mem[(4 * ceil32(return_data.size)) + 196] = stor10
                    require ext_code.size(stor9)
                    call stor9.updatePool(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 196 len (7 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 196] = stor10
                    mem[(4 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(stor9)
                    staticcall stor9.pendingRewards(uint256 rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[(4 * ceil32(return_data.size)) + 196 len (7 * ceil32(return_data.size)) + 64]
                    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] >= 71062073123672400111883 * 3600:
                        mem[(8 * ceil32(return_data.size)) + 196] = stor10
                        mem[(8 * ceil32(return_data.size)) + 228] = 1
                        require ext_code.size(stor9)
                        call stor9.withdraw(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args mem[(8 * ceil32(return_data.size)) + 196 len (13 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 196] = this.address
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args mem[(8 * ceil32(return_data.size)) + 196 len (13 * ceil32(return_data.size)) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(9 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        require ext_code.size(stor3)
                        call stor3.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], mem[(9 * ceil32(return_data.size)) + 260 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address), mem[(10 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(12 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
                        require ext_code.size(stor2)
                        call stor2.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], mem[(12 * ceil32(return_data.size)) + 260 len 20 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address), mem[(13 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(stor4)
                        call stor4.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0], mem[(14 * ceil32(return_data.size)) + 260 len 5 * ceil32(return_data.size)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 228] = 64
                    mem[(4 * ceil32(return_data.size)) + 260] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = (4 * ceil32(return_data.size)) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor11)
                    staticcall stor11.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _399 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _414 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0
                    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require _399 + (32 * _414) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _399 + 224
                    t = (6 * ceil32(return_data.size)) + 224
                    while idx < _414:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 > _414:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require _414 - 1 < _414
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    _630 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _636 = mem[(2 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 164] = mem[(2 * ceil32(return_data.size)) + 96]
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 128
                    t = mem[64] + 196
                    while idx < _636:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_630 + 100] = this.address
                    mem[_630 + 132] = block.timestamp + 600
                    require ext_code.size(stor11)
                    call stor11.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _630 + (32 * _636) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _736 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _738 = mem[_736]
                    require mem[_736] <= test266151307()
                    require _736 + mem[_736] + 31 < _736 + return_data.size
                    _740 = mem[_736 + mem[_736]]
                    require mem[_736 + mem[_736]] <= test266151307()
                    require _736 + ceil32(return_data.size) + (32 * mem[_736 + mem[_736]]) + 32 <= test266151307() and (32 * mem[_736 + mem[_736]]) + 32 >= 0
                    mem[64] = _736 + ceil32(return_data.size) + (32 * mem[_736 + mem[_736]]) + 32
                    mem[_736 + ceil32(return_data.size)] = _740
                    require _738 + (32 * _740) + 32 <= return_data.size
                    idx = 0
                    s = _736 + _738 + 32
                    t = _736 + ceil32(return_data.size) + 32
                    while idx < _740:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = stor9
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor2)
                    call stor2.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor9, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _850 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_850] == bool(mem[_850])
                    if msg.sender == owner:
                        require ext_code.size(stor9)
                        call stor9.updatePool(uint256 rg1) with:
                             gas gas_remaining wei
                            args stor10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = stor10
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor9)
                        staticcall stor9.pendingRewards(uint256 rg1, address rg2) with:
                                gas gas_remaining wei
                               args stor10, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _874 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_874] == mem[_874]
                        if mem[_874] >= 71062073123672400111883 * 3600:
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor9)
                            call stor9.withdraw(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args stor10, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _898 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _902 = mem[_898]
                            require mem[_898] == mem[_898]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _902
                            require ext_code.size(stor3)
                            call stor3.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _902
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _914 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_914] == bool(mem[_914])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _930 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _934 = mem[_930]
                            require mem[_930] == mem[_930]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _934
                            require ext_code.size(stor2)
                            call stor2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _934
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _946 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_946] == bool(mem[_946])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _962 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _966 = mem[_962]
                            require mem[_962] == mem[_962]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _966
                            require ext_code.size(stor4)
                            call stor4.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _966
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _978 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_978] == bool(mem[_978])
                    else:
                        if sub_f48f38afAddress != msg.sender:
                            revert with 0, 'nod'
                        require ext_code.size(stor9)
                        call stor9.updatePool(uint256 rg1) with:
                             gas gas_remaining wei
                            args stor10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = stor10
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(stor9)
                        staticcall stor9.pendingRewards(uint256 rg1, address rg2) with:
                                gas gas_remaining wei
                               args stor10, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _876 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_876] == mem[_876]
                        if mem[_876] >= 71062073123672400111883 * 3600:
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor9)
                            call stor9.withdraw(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args stor10, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _900 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _904 = mem[_900]
                            require mem[_900] == mem[_900]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _904
                            require ext_code.size(stor3)
                            call stor3.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _904
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _916 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_916] == bool(mem[_916])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _932 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _936 = mem[_932]
                            require mem[_932] == mem[_932]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _936
                            require ext_code.size(stor2)
                            call stor2.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _936
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _948 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_948] == bool(mem[_948])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _964 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _968 = mem[_964]
                            require mem[_964] == mem[_964]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _968
                            require ext_code.size(stor4)
                            call stor4.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _968
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _980 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_980] == bool(mem[_980])
}



}
