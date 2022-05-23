contract main {




// =====================  Runtime code  =====================


#
#  - sub_e1bcbd8f(?)
#
address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'W1-R1'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function calculate(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 and 997 > -1 / arg1:
        revert with 'NH{q', 17
    if 997 * arg1 and arg3 > -1 / 997 * arg1:
        revert with 'NH{q', 17
    if arg2 and 1000 > -1 / arg2:
        revert with 'NH{q', 17
    if 1000 * arg2 > (-997 * arg1) - 1:
        revert with 'NH{q', 17
    if not (1000 * arg2) + (997 * arg1):
        revert with 'NH{q', 18
    return (997 * arg1 * arg3 / (1000 * arg2) + (997 * arg1))
}

function withdrawErc20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'W2-R1'
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'W2-R2'
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a9588af3(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _109 = mem[128]
    staticcall address(cd[4]).token0() with:
            gas gas_remaining wei
    mem[floor32(('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == address(_109):
        if 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _119 = mem[160]
        staticcall address(cd[4]).token0() with:
                gas gas_remaining wei
        mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == address(_119):
            staticcall address(cd[4]).getReserves() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
        else:
            if 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _128 = mem[160]
            staticcall address(cd[4]).token1() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != address(_128):
                revert with 0, 'S0-R1'
            staticcall address(cd[4]).getReserves() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
    else:
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _116 = mem[128]
        staticcall address(cd[4]).token1() with:
                gas gas_remaining wei
        mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != address(_116):
            revert with 0, 'S0-R1'
        if 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _132 = mem[160]
        staticcall address(cd[4]).token0() with:
                gas gas_remaining wei
        mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == address(_132):
            staticcall address(cd[4]).getReserves() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
        else:
            if 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _146 = mem[160]
            staticcall address(cd[4]).token1() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != address(_146):
                revert with 0, 'S0-R1'
            staticcall address(cd[4]).getReserves() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (6 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    staticcall address(cd[4]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == mem[140 len 20]:
        return ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    return ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
}

function sub_68e9bd80(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall address(arg2).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 196] = stor1
    mem[(2 * ceil32(return_data.size)) + 228] = address(arg2)
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor1, address(arg2)
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 4
        mem[(4 * ceil32(return_data.size)) + 260] = 'W-R1'
        revert with memory
          from (4 * ceil32(return_data.size)) + 192
           len (5 * ceil32(return_data.size)) + 100
    if owner != msg.sender:
        mem[(4 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 32
        mem[(4 * ceil32(return_data.size)) + 260] = 'Ownable: caller is not the owner'
        revert with memory
          from (4 * ceil32(return_data.size)) + 192
           len (5 * ceil32(return_data.size)) + 100
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    call stor1.deposit() with:
       value msg.value wei
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 196] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 228] = msg.value
    call stor1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 64]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    mem[(4 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
           args mem[(4 * ceil32(return_data.size)) + 196 len 7 * ceil32(return_data.size)]
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == stor1:
        mem[(8 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
               args mem[(8 * ceil32(return_data.size)) + 196 len 13 * ceil32(return_data.size)]
        mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == stor1:
            mem[(9 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
                   args mem[(9 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
        else:
            mem[(9 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
                   args mem[(9 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == stor1:
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                mem[(13 * ceil32(return_data.size)) + 288] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                       args mem[(13 * ceil32(return_data.size)) + 292 len 4 * ceil32(return_data.size)]
                mem[(13 * ceil32(return_data.size)) + 288 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                mem[(15 * ceil32(return_data.size)) + 288] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                       args mem[(15 * ceil32(return_data.size)) + 292 len 8 * ceil32(return_data.size)]
                mem[(15 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if msg.value and 997 > -1 / msg.value:
                    revert with 'NH{q', 17
                if ext_call.return_data[12 len 20] == stor1:
                    if 997 * msg.value and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * msg.value:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * msg.value) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value):
                        revert with 'NH{q', 18
                    mem[(16 * ceil32(return_data.size)) + 288] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                           args mem[(16 * ceil32(return_data.size)) + 292 len ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if ext_call.return_data[12 len 20] == stor1:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), 0, address(this.address), 128, 0
                else:
                    if 997 * msg.value and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * msg.value:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * msg.value) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value):
                        revert with 'NH{q', 18
                    mem[(16 * ceil32(return_data.size)) + 288] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                           args mem[(16 * ceil32(return_data.size)) + 292 len ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if ext_call.return_data[12 len 20] == stor1:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), 0, address(this.address), 128, 0
            else:
                mem[(13 * ceil32(return_data.size)) + 288] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                       args mem[(13 * ceil32(return_data.size)) + 292 len 4 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                    revert with 0, 'S0-R1', mem[(15 * ceil32(return_data.size)) + 388 len 9 * ceil32(return_data.size)]
                mem[(15 * ceil32(return_data.size)) + 288] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                       args mem[(15 * ceil32(return_data.size)) + 292 len 8 * ceil32(return_data.size)]
                mem[(15 * ceil32(return_data.size)) + 288 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                mem[(16 * ceil32(return_data.size)) + 288] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                       args mem[(16 * ceil32(return_data.size)) + 292 len ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if msg.value and 997 > -1 / msg.value:
                    revert with 'NH{q', 17
                if ext_call.return_data[12 len 20] == stor1:
                    if 997 * msg.value and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * msg.value:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * msg.value) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value):
                        revert with 'NH{q', 18
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if ext_call.return_data[12 len 20] == stor1:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), 0, address(this.address), 128, 0
                else:
                    if 997 * msg.value and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * msg.value:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * msg.value) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value):
                        revert with 'NH{q', 18
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if ext_call.return_data[12 len 20] == stor1:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), 0, address(this.address), 128, 0
        else:
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            mem[(11 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != stor1:
                revert with 0, 'S0-R1', mem[(13 * ceil32(return_data.size)) + 388 len 5 * ceil32(return_data.size)]
            mem[(13 * ceil32(return_data.size)) + 288] = 0xdfe168100000000000000000000000000000000000000000000000000000000
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
                   args mem[(13 * ceil32(return_data.size)) + 292 len 4 * ceil32(return_data.size)]
            mem[(13 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                mem[(15 * ceil32(return_data.size)) + 288] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                       args mem[(15 * ceil32(return_data.size)) + 292 len 8 * ceil32(return_data.size)]
                mem[(15 * ceil32(return_data.size)) + 288 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                mem[(16 * ceil32(return_data.size)) + 288] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                       args mem[(16 * ceil32(return_data.size)) + 292 len ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if msg.value and 997 > -1 / msg.value:
                    revert with 'NH{q', 17
                if ext_call.return_data[12 len 20] == stor1:
                    if 997 * msg.value and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * msg.value:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * msg.value) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value):
                        revert with 'NH{q', 18
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if ext_call.return_data[12 len 20] == stor1:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), 0, address(this.address), 128, 0
                else:
                    if 997 * msg.value and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * msg.value:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * msg.value) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value):
                        revert with 'NH{q', 18
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if ext_call.return_data[12 len 20] == stor1:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), 0, address(this.address), 128, 0
            else:
                mem[(15 * ceil32(return_data.size)) + 288] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                       args mem[(15 * ceil32(return_data.size)) + 292 len 8 * ceil32(return_data.size)]
                mem[(15 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                    mem[(16 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(16 * ceil32(return_data.size)) + 292] = 32
                    mem[(16 * ceil32(return_data.size)) + 324] = 5
                    mem[(16 * ceil32(return_data.size)) + 356] = 'S0-R1'
                    revert with memory
                      from (16 * ceil32(return_data.size)) + 288
                       len ceil32(return_data.size) + 100
                mem[(16 * ceil32(return_data.size)) + 288] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                       args mem[(16 * ceil32(return_data.size)) + 292 len ceil32(return_data.size)]
                mem[(16 * ceil32(return_data.size)) + 288 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if msg.value and 997 > -1 / msg.value:
                    revert with 'NH{q', 17
                if ext_call.return_data[12 len 20] == stor1:
                    if 997 * msg.value and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * msg.value:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * msg.value) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value):
                        revert with 'NH{q', 18
                    mem[(19 * ceil32(return_data.size)) + 288] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                           args mem[(19 * ceil32(return_data.size)) + 292 len 16 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if ext_call.return_data[12 len 20] == stor1:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), 0, address(this.address), 128, 0
                else:
                    if 997 * msg.value and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * msg.value:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * msg.value) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value):
                        revert with 'NH{q', 18
                    mem[(19 * ceil32(return_data.size)) + 288] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                           args mem[(19 * ceil32(return_data.size)) + 292 len 16 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if ext_call.return_data[12 len 20] == stor1:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), 0, address(this.address), 128, 0
    else:
        mem[(8 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
               args mem[(8 * ceil32(return_data.size)) + 196 len 13 * ceil32(return_data.size)]
        mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != stor1:
            revert with 0, 'S0-R1', mem[(9 * ceil32(return_data.size)) + 292 len 5 * ceil32(return_data.size)]
        mem[(9 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
               args mem[(9 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == stor1:
            mem[(10 * ceil32(return_data.size)) + 192] = 0xd21220a700000000000000000000000000000000000000000000000000000000
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
                   args mem[(10 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
        else:
            mem[(10 * ceil32(return_data.size)) + 192] = 0xdfe168100000000000000000000000000000000000000000000000000000000
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
                   args mem[(10 * ceil32(return_data.size)) + 196 len 4 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == stor1:
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                mem[(15 * ceil32(return_data.size)) + 288] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                       args mem[(15 * ceil32(return_data.size)) + 292 len 4 * ceil32(return_data.size)]
                mem[(15 * ceil32(return_data.size)) + 288 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                mem[(17 * ceil32(return_data.size)) + 288] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                       args mem[(17 * ceil32(return_data.size)) + 292 len 8 * ceil32(return_data.size)]
            else:
                mem[(15 * ceil32(return_data.size)) + 288] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                       args mem[(15 * ceil32(return_data.size)) + 292 len 4 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                    revert with 0, 'S0-R1', mem[(17 * ceil32(return_data.size)) + 388 len 9 * ceil32(return_data.size)]
                mem[(17 * ceil32(return_data.size)) + 288] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                       args mem[(17 * ceil32(return_data.size)) + 292 len 8 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if msg.value and 997 > -1 / msg.value:
                revert with 'NH{q', 17
            if ext_call.return_data[12 len 20] == stor1:
                if 997 * msg.value and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * msg.value:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * msg.value) - 1:
                    revert with 'NH{q', 17
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value):
                    revert with 'NH{q', 18
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] == stor1:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), address(this.address), 128, 0
                else:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), 0, address(this.address), 128, 0
            else:
                if 997 * msg.value and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * msg.value:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * msg.value) - 1:
                    revert with 'NH{q', 17
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value):
                    revert with 'NH{q', 18
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[12 len 20] == stor1:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), address(this.address), 128, 0
                else:
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), 0, address(this.address), 128, 0
        else:
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != stor1:
                revert with 0, 'S0-R1', mem[(15 * ceil32(return_data.size)) + 388 len 5 * ceil32(return_data.size)]
            mem[(15 * ceil32(return_data.size)) + 288] = 0xdfe168100000000000000000000000000000000000000000000000000000000
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
                   args mem[(15 * ceil32(return_data.size)) + 292 len 4 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                mem[(17 * ceil32(return_data.size)) + 288] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                       args mem[(17 * ceil32(return_data.size)) + 292 len 8 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if msg.value and 997 > -1 / msg.value:
                    revert with 'NH{q', 17
                if ext_call.return_data[12 len 20] == stor1:
                    if 997 * msg.value and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * msg.value:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * msg.value) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value):
                        revert with 'NH{q', 18
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if ext_call.return_data[12 len 20] == stor1:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), 0, address(this.address), 128, 0
                else:
                    if 997 * msg.value and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * msg.value:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * msg.value) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value):
                        revert with 'NH{q', 18
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if ext_call.return_data[12 len 20] == stor1:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), 0, address(this.address), 128, 0
            else:
                mem[(17 * ceil32(return_data.size)) + 288] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                       args mem[(17 * ceil32(return_data.size)) + 292 len 8 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                    revert with 0, 'S0-R1'
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(18 * ceil32(return_data.size)) + 288 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if msg.value and 997 > -1 / msg.value:
                    revert with 'NH{q', 17
                if ext_call.return_data[12 len 20] == stor1:
                    if 997 * msg.value and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * msg.value:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * msg.value) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value):
                        revert with 'NH{q', 18
                    mem[(21 * ceil32(return_data.size)) + 288] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                           args mem[(21 * ceil32(return_data.size)) + 292 len 16 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if ext_call.return_data[12 len 20] == stor1:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * msg.value * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * msg.value), 0, address(this.address), 128, 0
                else:
                    if 997 * msg.value and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * msg.value:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * msg.value) - 1:
                        revert with 'NH{q', 17
                    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value):
                        revert with 'NH{q', 18
                    mem[(21 * ceil32(return_data.size)) + 288] = 0xdfe168100000000000000000000000000000000000000000000000000000000
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                           args mem[(21 * ceil32(return_data.size)) + 292 len 16 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if ext_call.return_data[12 len 20] == stor1:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), address(this.address), 128, 0
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 997 * msg.value * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * msg.value), 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(arg2).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -arg3 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] <= ext_call.return_data[0] + arg3:
        revert with 0, 'T-R2'
    call address(arg2).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ddfd1b0e(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == cd[68]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _152 = mem[128]
    staticcall address(cd[4]).token0() with:
            gas gas_remaining wei
    mem[floor32(('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == address(_152):
        if 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _163 = mem[160]
        staticcall address(cd[4]).token0() with:
                gas gas_remaining wei
        mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == address(_163):
            staticcall address(cd[4]).getReserves() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _207 = mem[128]
            staticcall address(cd[4]).token0() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if cd[68] and 997 > -1 / cd[68]:
                revert with 'NH{q', 17
            if ext_call.return_data[12 len 20] == address(_207):
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * cd[68]:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _243 = mem[128]
                mem[floor32(('cd', 36).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[4])
                mem[floor32(('cd', 36).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                call address(_243).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                mem[floor32(('cd', 36).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _267 = mem[160]
                staticcall address(cd[4]).token0() with:
                        gas gas_remaining wei
                mem[floor32(('cd', 36).length) + (7 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] == address(_267):
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97])]
                else:
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97])]
            else:
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * cd[68]:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _246 = mem[128]
                mem[floor32(('cd', 36).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[4])
                mem[floor32(('cd', 36).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                call address(_246).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                mem[floor32(('cd', 36).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _272 = mem[160]
                staticcall address(cd[4]).token0() with:
                        gas gas_remaining wei
                mem[floor32(('cd', 36).length) + (7 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] == address(_272):
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97])]
                else:
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97])]
        else:
            if 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _172 = mem[160]
            staticcall address(cd[4]).token1() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != address(_172):
                revert with 0, 'S0-R1'
            staticcall address(cd[4]).getReserves() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _224 = mem[128]
            staticcall address(cd[4]).token0() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if cd[68] and 997 > -1 / cd[68]:
                revert with 'NH{q', 17
            if ext_call.return_data[12 len 20] == address(_224):
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * cd[68]:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _254 = mem[128]
                mem[floor32(('cd', 36).length) + (7 * ceil32(return_data.size)) + 101] = address(cd[4])
                mem[floor32(('cd', 36).length) + (7 * ceil32(return_data.size)) + 133] = cd[68]
                call address(_254).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                mem[floor32(('cd', 36).length) + (7 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _299 = mem[160]
                staticcall address(cd[4]).token0() with:
                        gas gas_remaining wei
                mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] == address(_299):
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
                else:
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
            else:
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * cd[68]:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _261 = mem[128]
                mem[floor32(('cd', 36).length) + (7 * ceil32(return_data.size)) + 101] = address(cd[4])
                mem[floor32(('cd', 36).length) + (7 * ceil32(return_data.size)) + 133] = cd[68]
                call address(_261).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                mem[floor32(('cd', 36).length) + (7 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _311 = mem[160]
                staticcall address(cd[4]).token0() with:
                        gas gas_remaining wei
                mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] == address(_311):
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
                else:
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
    else:
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _160 = mem[128]
        staticcall address(cd[4]).token1() with:
                gas gas_remaining wei
        mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != address(_160):
            revert with 0, 'S0-R1'
        if 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        _176 = mem[160]
        staticcall address(cd[4]).token0() with:
                gas gas_remaining wei
        mem[floor32(('cd', 36).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == address(_176):
            staticcall address(cd[4]).getReserves() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _227 = mem[128]
            staticcall address(cd[4]).token0() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if cd[68] and 997 > -1 / cd[68]:
                revert with 'NH{q', 17
            if ext_call.return_data[12 len 20] == address(_227):
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * cd[68]:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _257 = mem[128]
                mem[floor32(('cd', 36).length) + (7 * ceil32(return_data.size)) + 101] = address(cd[4])
                mem[floor32(('cd', 36).length) + (7 * ceil32(return_data.size)) + 133] = cd[68]
                call address(_257).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                mem[floor32(('cd', 36).length) + (7 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _303 = mem[160]
                staticcall address(cd[4]).token0() with:
                        gas gas_remaining wei
                mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] == address(_303):
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
                else:
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
            else:
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * cd[68]:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _263 = mem[128]
                mem[floor32(('cd', 36).length) + (7 * ceil32(return_data.size)) + 101] = address(cd[4])
                mem[floor32(('cd', 36).length) + (7 * ceil32(return_data.size)) + 133] = cd[68]
                call address(_263).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                mem[floor32(('cd', 36).length) + (7 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _315 = mem[160]
                staticcall address(cd[4]).token0() with:
                        gas gas_remaining wei
                mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] == address(_315):
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
                else:
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97])]
        else:
            if 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _190 = mem[160]
            staticcall address(cd[4]).token1() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != address(_190):
                revert with 0, 'S0-R1'
            staticcall address(cd[4]).getReserves() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (6 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _237 = mem[128]
            staticcall address(cd[4]).token0() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + (7 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if cd[68] and 997 > -1 / cd[68]:
                revert with 'NH{q', 17
            if ext_call.return_data[12 len 20] == address(_237):
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * cd[68]:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _287 = mem[128]
                mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 101] = address(cd[4])
                mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 133] = cd[68]
                call address(_287).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _337 = mem[160]
                staticcall address(cd[4]).token0() with:
                        gas gas_remaining wei
                mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] == address(_337):
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97])]
                else:
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97])]
            else:
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * cd[68]:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _292 = mem[128]
                mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 101] = address(cd[4])
                mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 133] = cd[68]
                call address(_292).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), cd[68]
                mem[floor32(('cd', 36).length) + (8 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 1
                if 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _348 = mem[160]
                staticcall address(cd[4]).token0() with:
                        gas gas_remaining wei
                mem[floor32(('cd', 36).length) + (10 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if ext_call.return_data[12 len 20] == address(_348):
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97])]
                else:
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 36).length) + (11 * ceil32(return_data.size)) + 97])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
