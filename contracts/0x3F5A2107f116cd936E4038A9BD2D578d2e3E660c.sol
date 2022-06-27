contract main {




// =====================  Runtime code  =====================


#
#  - onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#
address owner;
address stor1;
address stor3;
address stor4;

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

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 'Address: insufficient balance'
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Address: unable to send value, recipient may have reverted'
        else:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
        ('bool', 'ext_call.success')
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function liquidate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 16
    mem[128] = 'Liquidate called'
    mem[196] = 32
    mem[228] = 16
    mem[260] = 'Liquidate called'
    mem[276] = 0
    mem[160] = 100
    mem[196 len 28] = 0
    mem[192 len 4] = log(string arg1)
    staticcall 'console.log'.log(string arg1) with:
            gas gas_remaining wei
           args 0, 0, 16, 'Liquidate called', 0
    mem[292] = 0
    mem[324] = 0
    mem[356] = 0
    mem[388] = 0
    mem[420] = 0
    mem[452] = 0
    mem[484] = 0
    mem[516] = 0
    mem[548] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[552] = arg1
    require ext_code.size(stor4)
    staticcall stor4.getAssetsIn(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 548
    require return_data.size >= 32
    _372 = mem[548 len 4], address(arg1) << 64
    require mem[548 len 4], address(arg1) << 64 <= test266151307()
    require mem[548 len 4], address(arg1) << 64 + 579 < return_data.size + 548
    _374 = mem[mem[548 len 4], address(arg1) << 64 + 548]
    if mem[mem[548 len 4], address(arg1) << 64 + 548] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[548 len 4], address(arg1) << 64 + 548]) + 549 > test266151307() or floor32(mem[mem[548 len 4], address(arg1) << 64 + 548]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[548 len 4], address(arg1) << 64 + 548]) + 549
    mem[ceil32(return_data.size) + 548] = mem[mem[548 len 4], address(arg1) << 64 + 548]
    require _372 + (32 * _374) + 32 <= return_data.size
    idx = 0
    s = _372 + 580
    t = ceil32(return_data.size) + 580
    while idx < _374:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _753 = mem[64]
    mem[mem[64]] = 0x673b0c00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    mem[mem[64] + 68] = _374
    idx = 0
    s = ceil32(return_data.size) + 580
    t = mem[64] + 100
    while idx < _374:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_753 + 36] = arg1
    require ext_code.size(stor3)
    call stor3.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _753 + (32 * _374) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1159 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1161 = mem[_1159]
    require mem[_1159] <= test266151307()
    require _1159 + mem[_1159] + 31 < _1159 + return_data.size
    _1163 = mem[_1159 + mem[_1159]]
    if mem[_1159 + mem[_1159]] > test266151307():
        revert with 'NH{q', 65
    if _1159 + ceil32(return_data.size) + floor32(mem[_1159 + mem[_1159]]) + 1 > test266151307() or floor32(mem[_1159 + mem[_1159]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _1159 + ceil32(return_data.size) + floor32(mem[_1159 + mem[_1159]]) + 1
    mem[_1159 + ceil32(return_data.size)] = _1163
    require _1161 + (320 * _1163) + 32 <= return_data.size
    idx = 0
    s = _1159 + _1161 + 32
    t = _1159 + ceil32(return_data.size) + 32
    while idx < _1163:
        require _1159 + return_data.size - s >= 320
        _1555 = mem[64]
        if mem[64] + 320 > test266151307() or mem[64] + 320 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 320
        require mem[s] == mem[s + 12 len 20]
        mem[_1555] = mem[s]
        require mem[s + 32] == mem[s + 32]
        mem[_1555 + 32] = mem[s + 32]
        require mem[s + 64] == mem[s + 64]
        mem[_1555 + 64] = mem[s + 64]
        require mem[s + 96] == mem[s + 96]
        mem[_1555 + 96] = mem[s + 96]
        require mem[s + 128] == mem[s + 128]
        mem[_1555 + 128] = mem[s + 128]
        require mem[s + 160] == mem[s + 160]
        mem[_1555 + 160] = mem[s + 160]
        require mem[s + 192] == mem[s + 192]
        mem[_1555 + 192] = mem[s + 192]
        require mem[s + 224] == mem[s + 224]
        mem[_1555 + 224] = mem[s + 224]
        require mem[s + 256] == mem[s + 256]
        mem[_1555 + 256] = mem[s + 256]
        require mem[s + 288] == bool(mem[s + 288])
        mem[_1555 + 288] = mem[s + 288]
        mem[t] = _1555
        idx = idx + 1
        s = s + 320
        t = t + 32
        continue 
    _1967 = mem[_1159 + ceil32(return_data.size)]
    idx = 0
    while idx < _1967:
        if idx >= mem[_1159 + ceil32(return_data.size)]:
            revert with 'NH{q', 50
        _1974 = mem[(32 * idx) + _1159 + ceil32(return_data.size) + 32]
        if not mem[mem[(32 * idx) + _1159 + ceil32(return_data.size) + 32] + 288]:
            if mem[mem[(32 * idx) + _1159 + ceil32(return_data.size) + 32] + 192] > 0:
                if mem[324] > -mem[mem[(32 * idx) + _1159 + ceil32(return_data.size) + 32] + 192] - 1:
                    revert with 'NH{q', 17
                mem[324] = mem[324] + mem[mem[(32 * idx) + _1159 + ceil32(return_data.size) + 32] + 192]
                if not mem[368 len 20]:
                    mem[356] = mem[_1974 + 12 len 20]
                    mem[420] = mem[_1974 + 192]
                    mem[388] = mem[_1974 + 160] / 2
                else:
                    if mem[_1974 + 192] > mem[420]:
                        mem[356] = mem[_1974 + 12 len 20]
                        mem[420] = mem[_1974 + 192]
                        mem[388] = mem[_1974 + 160] / 2
        else:
            if mem[mem[(32 * idx) + _1159 + ceil32(return_data.size) + 32] + 64] <= 0:
                if mem[mem[(32 * idx) + _1159 + ceil32(return_data.size) + 32] + 192] > 0:
                    if mem[324] > -mem[mem[(32 * idx) + _1159 + ceil32(return_data.size) + 32] + 192] - 1:
                        revert with 'NH{q', 17
                    mem[324] = mem[324] + mem[mem[(32 * idx) + _1159 + ceil32(return_data.size) + 32] + 192]
                    if not mem[368 len 20]:
                        mem[356] = mem[_1974 + 12 len 20]
                        mem[420] = mem[_1974 + 192]
                        mem[388] = mem[_1974 + 160] / 2
                    else:
                        if mem[_1974 + 192] > mem[420]:
                            mem[356] = mem[_1974 + 12 len 20]
                            mem[420] = mem[_1974 + 192]
                            mem[388] = mem[_1974 + 160] / 2
            else:
                if mem[292] > -mem[mem[(32 * idx) + _1159 + ceil32(return_data.size) + 32] + 128] - 1:
                    revert with 'NH{q', 17
                mem[292] = mem[292] + mem[mem[(32 * idx) + _1159 + ceil32(return_data.size) + 32] + 128]
                if not mem[496 len 20]:
                    mem[484] = mem[_1974 + 12 len 20]
                    mem[516] = mem[_1974 + 128]
                else:
                    if mem[_1974 + 128] > mem[516]:
                        mem[484] = mem[_1974 + 12 len 20]
                        mem[516] = mem[_1974 + 128]
                if mem[_1974 + 192] > 0:
                    if mem[324] > -mem[_1974 + 192] - 1:
                        revert with 'NH{q', 17
                    mem[324] = mem[324] + mem[_1974 + 192]
                    if not mem[368 len 20]:
                        mem[356] = mem[_1974 + 12 len 20]
                        mem[420] = mem[_1974 + 192]
                        mem[388] = mem[_1974 + 160] / 2
                    else:
                        if mem[_1974 + 192] > mem[420]:
                            mem[356] = mem[_1974 + 12 len 20]
                            mem[420] = mem[_1974 + 192]
                            mem[388] = mem[_1974 + 160] / 2
        if idx == -1:
            revert with 'NH{q', 17
        _1967 = mem[_1159 + ceil32(return_data.size)]
        idx = idx + 1
        continue 
    if mem[516] < mem[420] / 2:
        revert with 0, 'Not enough collateral'
    _1999 = mem[356]
    _2000 = mem[484]
    mem[mem[64]] = 0xb0772d0b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor4)
    staticcall stor4.getAllMarkets() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2015 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2040 = mem[_2015]
    require mem[_2015] <= test266151307()
    require _2015 + mem[_2015] + 31 < _2015 + return_data.size
    _2071 = mem[_2015 + mem[_2015]]
    if mem[_2015 + mem[_2015]] > test266151307():
        revert with 'NH{q', 65
    if _2015 + ceil32(return_data.size) + floor32(mem[_2015 + mem[_2015]]) + 1 > test266151307() or floor32(mem[_2015 + mem[_2015]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _2015 + ceil32(return_data.size) + floor32(mem[_2015 + mem[_2015]]) + 1
    mem[_2015 + ceil32(return_data.size)] = _2071
    require _2040 + (32 * _2071) + 32 <= return_data.size
    idx = 0
    s = _2015 + _2040 + 32
    t = _2015 + ceil32(return_data.size) + 32
    while idx < _2071:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < _2071:
        if idx >= _2071:
            revert with 'NH{q', 50
        if address(_1999) == mem[(32 * idx) + _2015 + ceil32(return_data.size) + 44 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= _2071:
            revert with 'NH{q', 50
        if address(_2000) == mem[(32 * idx) + _2015 + ceil32(return_data.size) + 44 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= _2071:
            revert with 'NH{q', 50
        mem[452] = mem[(32 * idx) + _2015 + ceil32(return_data.size) + 44 len 20]
        _2850 = mem[356]
        _2851 = mem[388]
        _2852 = mem[484]
        _2853 = mem[452]
        _2855 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2855] = 15
        mem[_2855 + 32] = 'Initiate called'
        _2857 = mem[64]
        mem[mem[64] + 36] = 32
        mem[mem[64] + 68] = 15
        idx = 0
        while idx < 15:
            mem[mem[64] + idx + 100] = mem[_2855 + idx + 32]
            idx = idx + 32
            continue 
        mem[mem[64] + 115] = 0
        _3390 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_3390 + 32] = mem[_3390 + 36 len 28] or 0x41304fac00000000000000000000000000000000000000000000000000000000
        staticcall 'console.log'.mem[_3390 + 32 len 4] with:
                gas gas_remaining wei
               args mem[_3390 + 36 len mem[_3390] - 4]
        if address(_2850) == address(_2853):
            revert with 0, 'Change flash loan lender'
        require ext_code.size(stor1)
        staticcall stor1.getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(_2853)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[_2857 + ceil32(return_data.size) + 136] = address(_2850)
        require ext_code.size(stor1)
        staticcall stor1.getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(_2850)
        mem[_2857 + ceil32(return_data.size) + 132] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'No borrow token price'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'No flash loan token price'
        if _2851 and ext_call.return_data[0] > -1 / _2851:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if _2851 * ext_call.return_data[0] / ext_call.return_data[0] and 60 > -1 / _2851 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if _2851 * ext_call.return_data[0] / ext_call.return_data[0] > -(60 * _2851 * ext_call.return_data[0] / ext_call.return_data[0] / 10000) - 1:
            revert with 'NH{q', 17
        mem[_2857 + (2 * ceil32(return_data.size)) + 164] = arg1
        mem[_2857 + (2 * ceil32(return_data.size)) + 196] = address(_2850)
        mem[_2857 + (2 * ceil32(return_data.size)) + 228] = _2851
        mem[_2857 + (2 * ceil32(return_data.size)) + 260] = address(_2852)
        mem[_2857 + (2 * ceil32(return_data.size)) + 132] = 128
        mem[_2857 + (2 * ceil32(return_data.size)) + 292] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
        mem[_2857 + (2 * ceil32(return_data.size)) + 296] = this.address
        mem[_2857 + (2 * ceil32(return_data.size)) + 328] = msg.sender
        mem[_2857 + (2 * ceil32(return_data.size)) + 360] = (_2851 * ext_call.return_data[0] / ext_call.return_data[0]) + (60 * _2851 * ext_call.return_data[0] / ext_call.return_data[0] / 10000)
        mem[_2857 + (2 * ceil32(return_data.size)) + 392] = 128
        mem[_2857 + (2 * ceil32(return_data.size)) + 424] = 128
        idx = 0
        while idx < 128:
            mem[_2857 + (2 * ceil32(return_data.size)) + idx + 456] = mem[_2857 + (2 * ceil32(return_data.size)) + idx + 164]
            idx = idx + 32
            continue 
        require ext_code.size(address(_2853))
        call address(_2853).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args address(this.address), msg.sender, (_2851 * ext_call.return_data[0] / ext_call.return_data[0]) + (60 * _2851 * ext_call.return_data[0] / ext_call.return_data[0] / 10000), 128, 128, mem[_2857 + (2 * ceil32(return_data.size)) + 456 len 128]
        mem[_2857 + (2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if eth.balance(this.address) < eth.balance(this.address):
            mem[_2857 + (4 * ceil32(return_data.size)) + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2857 + (4 * ceil32(return_data.size)) + 296] = 32
            mem[_2857 + (4 * ceil32(return_data.size)) + 328] = 29
            mem[_2857 + (4 * ceil32(return_data.size)) + 360] = 'Address: insufficient balance'
            revert with memory
              from _2857 + (4 * ceil32(return_data.size)) + 292
               len (5 * ceil32(return_data.size)) + 100
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                mem[_2857 + (4 * ceil32(return_data.size)) + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2857 + (4 * ceil32(return_data.size)) + 296] = 32
                mem[_2857 + (4 * ceil32(return_data.size)) + 328] = 58
                mem[_2857 + (4 * ceil32(return_data.size)) + 360] = 'Address: unable to send value, r'
                mem[_2857 + (4 * ceil32(return_data.size)) + 392] = 'ecipient may have reverted'
                revert with memory
                  from _2857 + (4 * ceil32(return_data.size)) + 292
                   len (5 * ceil32(return_data.size)) + 132
            emit 0xa9105d69 
            mem[_2857 + (4 * ceil32(return_data.size)) + 324] = 'Done'
            mem[_2857 + (4 * ceil32(return_data.size)) + 392] = 32
            mem[_2857 + (4 * ceil32(return_data.size)) + 424] = 4
            idx = 0
            while idx < 4:
                mem[_2857 + (4 * ceil32(return_data.size)) + idx + 456] = mem[_2857 + (4 * ceil32(return_data.size)) + idx + 324]
                idx = idx + 32
                continue 
            mem[_2857 + (4 * ceil32(return_data.size)) + 460] = 0
            mem[_2857 + (4 * ceil32(return_data.size)) + 388] = 0 or 0x41304fac00000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.log(string arg1) with:
                    gas gas_remaining wei
                   args mem[_2857 + (4 * ceil32(return_data.size)) + 392 len (5 * ceil32(return_data.size)) + 96]
        else:
            mem[_2857 + (4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[_2857 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_2857 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 32
                mem[_2857 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 58
                mem[_2857 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 'Address: unable to send value, r'
                mem[_2857 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'ecipient may have reverted'
                revert with memory
                  from _2857 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                   len (5 * ceil32(return_data.size)) + 132
            emit 0xa9105d69 
            mem[_2857 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 'Done'
            mem[_2857 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
            mem[_2857 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 4
            idx = 0
            while idx < 4:
                mem[_2857 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + idx + 457] = mem[_2857 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + idx + 325]
                idx = idx + 32
                continue 
            mem[_2857 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 0
            mem[_2857 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0 or 0x41304fac00000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.log(string arg1) with:
                    gas gas_remaining wei
                   args mem[_2857 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len (5 * ceil32(return_data.size)) + 96]
    mem[452] = 0
    _2829 = mem[356]
    _2830 = mem[388]
    _2831 = mem[484]
    _2836 = mem[64]
    mem[64] = mem[64] + 64
    mem[_2836] = 15
    mem[_2836 + 32] = 'Initiate called'
    _2839 = mem[64]
    mem[mem[64] + 36] = 32
    mem[mem[64] + 68] = 15
    mem[mem[64] + 100] = 'Initiate called'
    mem[mem[64] + 115] = 0
    _3387 = mem[64]
    mem[mem[64]] = 100
    mem[64] = mem[64] + 132
    mem[_3387 + 32 len 4] = log(string arg1)
    staticcall 'console.log'.log(string arg1) with:
            gas gas_remaining wei
           args mem[_3387 + 36 len mem[_3387] - 4]
    if not address(_2829):
        revert with 0, 'Change flash loan lender'
    require ext_code.size(stor1)
    staticcall stor1.getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor1)
    staticcall stor1.getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args address(_2829)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No borrow token price'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No flash loan token price'
    if _2830 and ext_call.return_data[0] > -1 / _2830:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if _2830 * ext_call.return_data[0] / ext_call.return_data[0] and 60 > -1 / _2830 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if _2830 * ext_call.return_data[0] / ext_call.return_data[0] > -(60 * _2830 * ext_call.return_data[0] / ext_call.return_data[0] / 10000) - 1:
        revert with 'NH{q', 17
    mem[_2839 + (2 * ceil32(return_data.size)) + 296] = this.address
    mem[_2839 + (2 * ceil32(return_data.size)) + 328] = msg.sender
    mem[_2839 + (2 * ceil32(return_data.size)) + 360] = (_2830 * ext_call.return_data[0] / ext_call.return_data[0]) + (60 * _2830 * ext_call.return_data[0] / ext_call.return_data[0] / 10000)
    mem[_2839 + (2 * ceil32(return_data.size)) + 392] = 128
    mem[_2839 + (2 * ceil32(return_data.size)) + 424] = 128
    mem[_2839 + (2 * ceil32(return_data.size)) + 456 len 128] = address(arg1), address(_2829), _2830, address(_2831)
    require ext_code.size(0)
    call 0x0.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, (_2830 * ext_call.return_data[0] / ext_call.return_data[0]) + (60 * _2830 * ext_call.return_data[0] / ext_call.return_data[0] / 10000), 128, 128, address(arg1), address(_2829), _2830, address(_2831)
    mem[_2839 + (2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(this.address) < eth.balance(this.address):
        mem[_2839 + (4 * ceil32(return_data.size)) + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_2839 + (4 * ceil32(return_data.size)) + 296] = 32
        mem[_2839 + (4 * ceil32(return_data.size)) + 328] = 29
        mem[_2839 + (4 * ceil32(return_data.size)) + 360] = 'Address: insufficient balance'
        revert with memory
          from _2839 + (4 * ceil32(return_data.size)) + 292
           len (5 * ceil32(return_data.size)) + 100
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            mem[_2839 + (4 * ceil32(return_data.size)) + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2839 + (4 * ceil32(return_data.size)) + 296] = 32
            mem[_2839 + (4 * ceil32(return_data.size)) + 328] = 58
            mem[_2839 + (4 * ceil32(return_data.size)) + 360] = 'Address: unable to send value, r'
            mem[_2839 + (4 * ceil32(return_data.size)) + 392] = 'ecipient may have reverted'
            revert with memory
              from _2839 + (4 * ceil32(return_data.size)) + 292
               len (5 * ceil32(return_data.size)) + 132
        emit 0xa9105d69 
        mem[_2839 + (4 * ceil32(return_data.size)) + 392] = 32
        mem[_2839 + (4 * ceil32(return_data.size)) + 424] = 4
        mem[_2839 + (4 * ceil32(return_data.size)) + 456] = 'Done'
        mem[_2839 + (4 * ceil32(return_data.size)) + 460] = 0
        mem[_2839 + (4 * ceil32(return_data.size)) + 392 len 28] = 0
        staticcall 'console.log'.log(string arg1) with:
                gas gas_remaining wei
               args mem[_2839 + (4 * ceil32(return_data.size)) + 392 len (5 * ceil32(return_data.size)) + 96]
    else:
        mem[_2839 + (4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[_2839 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_2839 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 32
            mem[_2839 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 58
            mem[_2839 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 'Address: unable to send value, r'
            mem[_2839 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'ecipient may have reverted'
            revert with memory
              from _2839 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
               len (5 * ceil32(return_data.size)) + 132
        emit 0xa9105d69 
        mem[_2839 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
        mem[_2839 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 4
        mem[_2839 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'Done'
        mem[_2839 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 0
        mem[_2839 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 28] = 0
        staticcall 'console.log'.log(string arg1) with:
                gas gas_remaining wei
               args mem[_2839 + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len (5 * ceil32(return_data.size)) + 96]
}



}
