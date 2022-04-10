contract main {




// =====================  Runtime code  =====================


#
#  - drain()
#
address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor11;
uint256 stor12;
address stor13;
address stor14;
address stor15;
address stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint128 stor21;
address stor21; offset 112
uint256 stor21;
uint128 stor22;
address stor22; offset 112
uint256 stor22;
uint128 stor23;
address stor23; offset 112
uint256 stor23;
uint128 stor24;
address stor24; offset 112
uint256 stor24;

function _fallback() payable {
  stop
}

function sub_574dda5d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor17 = arg1
}

function sub_72092885(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor18 = arg1
}

function checkBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
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

function sub_9ce68b76(?) {
    require msg.sender == stor0
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args stor11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 777
    return 0
}

function sub_57b786e2(?) payable {
    require msg.sender == stor0
    require ext_code.size(stor15)
    staticcall stor15.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    Mask(112, 0, stor22.field_0) = ext_call.return_data[50 len 14]
    Mask(144, 0, stor22.field_112) = 0
    Mask(112, 0, stor21.field_0) = ext_call.return_data[18 len 14]
    Mask(144, 0, stor21.field_112) = 0
    require stor18
    stor19 = (uint256(stor21.field_0) / stor18) - 1
    require ext_code.size(stor15)
    call stor15.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args stor19, 0, address(this.address), 128, 2, Mask(16, 32, 119, 0) >> 32, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function init(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1 = arg1
    require ext_code.size(stor2)
    call stor2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor11, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor13, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor5)
    call stor5.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor13, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor6)
    call stor6.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor13, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor2)
    call stor2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor13, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    call stor3.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor13, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor8)
    call stor8.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor13, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor14, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor6)
    call stor6.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor14, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor7)
    call stor7.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor14, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor2)
    call stor2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor14, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    call stor3.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor14, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function run(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == stor0:
        if arg1 < 2:
            if arg1 < 0:
            mem[100] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[ceil32(return_data.size) + 100] = stor11
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args stor11
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 160] = 0
            emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
            mem[(2 * ceil32(return_data.size)) + 100] = stor11
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args stor11
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if var168001 / 1000 <= var168003:
                mem[(4 * ceil32(return_data.size)) + 96] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                mem[var178003] = stor12
                mem[var186003] = var186001
                require ext_code.size(stor11)
                call stor11.mem[var192004 len 4] with:
                     gas gas_remaining wei
                    args mem[var192004 + 4 len var192005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
            else:
                mem[(4 * ceil32(return_data.size)) + 100] = stor11
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor11
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 160] = 0
                emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                mem[(7 * ceil32(return_data.size)) + 100] = stor11
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor11
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                idx = mem[(7 * ceil32(return_data.size)) + 96]
                s = var168011
                while idx > 100:
                    require ext_code.size(stor11)
                    call stor11.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor12, 100 * idx / 6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 100 * idx / 6
                    require ext_code.size(stor11)
                    call stor11.0x441a3e70 with:
                         gas gas_remaining wei
                        args stor12, 100 * idx / 6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1657 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1657] == mem[_1657]
                    idx = mem[_1657]
                    s = 100 * idx / 6
                    continue 
                if not idx:
                    mem[mem[64] + 4] = stor11
                    mem[mem[64] + 36] = 2
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor11, 2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1581 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1581] == bool(mem[_1581])
        else:
            require ext_code.size(stor4)
            call stor4.deposit() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96] = 2
            mem[128] = stor4
            mem[160] = stor2
            mem[196] = this.address
            require ext_code.size(stor4)
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                if arg1 < 0:
                mem[ceil32(return_data.size) + 196] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 196] = stor11
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor11
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 256] = 0
                emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                mem[(4 * ceil32(return_data.size)) + 196] = stor11
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor11
                mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if var206001 / 1000 <= var206003:
                    mem[(6 * ceil32(return_data.size)) + 192] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                    mem[var216003] = stor12
                    mem[var224003] = var224001
                    require ext_code.size(stor11)
                    call stor11.mem[var230004 len 4] with:
                         gas gas_remaining wei
                        args mem[var230004 + 4 len var230005 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
                else:
                    mem[(6 * ceil32(return_data.size)) + 196] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 196] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 256] = 0
                    emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                    mem[(8 * ceil32(return_data.size)) + 196] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (10 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    idx = mem[(8 * ceil32(return_data.size)) + 192]
                    s = var206011
                    while idx > 100:
                        require ext_code.size(stor11)
                        call stor11.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args stor12, 100 * idx / 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = 100 * idx / 6
                        require ext_code.size(stor11)
                        call stor11.0x441a3e70 with:
                             gas gas_remaining wei
                            args stor12, 100 * idx / 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2270 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2270] == mem[_2270]
                        idx = mem[_2270]
                        s = 100 * idx / 6
                        continue 
                    if not idx:
                        mem[mem[64] + 4] = stor11
                        mem[mem[64] + 36] = 2
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor11, 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2201 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2201] == bool(mem[_2201])
            else:
                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 228] = 64
                mem[ceil32(return_data.size) + 260] = 2
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor13)
                staticcall stor13.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _522 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
                _532 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0
                mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                mem[(2 * ceil32(return_data.size)) + 192] = _532
                require _522 + (32 * _532) + 32 <= return_data.size
                idx = 0
                s = ceil32(return_data.size) + _522 + 224
                t = (2 * ceil32(return_data.size)) + 224
                while idx < _532:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 1 > _532:
                    revert with 0, 'SafeMath: subtraction overflow'
                require _532 - 1 < _532
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = 2
                idx = 0
                s = 128
                t = mem[64] + 196
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 600
                require ext_code.size(stor13)
                call stor13.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, 2, mem[mem[64] + 196 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1569 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1577 = mem[_1569]
                require mem[_1569] <= test266151307()
                require _1569 + mem[_1569] + 31 < _1569 + return_data.size
                _1585 = mem[_1569 + mem[_1569]]
                require mem[_1569 + mem[_1569]] <= test266151307()
                require _1569 + ceil32(return_data.size) + (32 * mem[_1569 + mem[_1569]]) + 32 <= test266151307() and (32 * mem[_1569 + mem[_1569]]) + 32 >= 0
                mem[64] = _1569 + ceil32(return_data.size) + (32 * mem[_1569 + mem[_1569]]) + 32
                mem[_1569 + ceil32(return_data.size)] = _1585
                require _1577 + (32 * _1585) + 32 <= return_data.size
                idx = 0
                s = _1569 + _1577 + 32
                t = _1569 + ceil32(return_data.size) + 32
                while idx < _1585:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if arg1 < 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2222 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2237 = mem[_2222]
                require mem[_2222] == mem[_2222]
                mem[mem[64] + 4] = stor11
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor11
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2290 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2290] == mem[_2290]
                mem[mem[64]] = mem[_2290]
                mem[mem[64] + 32] = _2237
                mem[mem[64] + 64] = 0
                emit 0xf6455783: mem[mem[64]], _2237, 0
                mem[mem[64] + 4] = stor11
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor11
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2378 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2378] == mem[_2378]
                if var305001 / 1000 <= var305003:
                    mem[mem[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                    mem[var315003] = stor12
                    mem[var323003] = var323001
                    require ext_code.size(stor11)
                    call stor11.mem[var329004 len 4] with:
                         gas gas_remaining wei
                        args mem[var329004 + 4 len var329005 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
                else:
                    mem[mem[64] + 4] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3193 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3205 = mem[_3193]
                    require mem[_3193] == mem[_3193]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3277 = mem[_3265]
                    require mem[_3265] == mem[_3265]
                    mem[mem[64] + 32] = mem[_3265]
                    mem[mem[64] + 64] = 0
                    emit 0xf6455783: _3205, _3277, 0
                    mem[mem[64] + 4] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3369 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3369] == mem[_3369]
                    idx = mem[_3369]
                    s = var305011
                    while idx > 100:
                        require ext_code.size(stor11)
                        call stor11.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args stor12, 100 * idx / 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = 100 * idx / 6
                        require ext_code.size(stor11)
                        call stor11.0x441a3e70 with:
                             gas gas_remaining wei
                            args stor12, 100 * idx / 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3849 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3849] == mem[_3849]
                        idx = mem[_3849]
                        s = 100 * idx / 6
                        continue 
                    if not idx:
                        mem[mem[64] + 4] = stor11
                        mem[mem[64] + 36] = 2
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor11, 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3774 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3774] == bool(mem[_3774])
    else:
        if msg.sender == stor2:
            if arg1 < 2:
                if arg1 < 0:
                mem[100] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(return_data.size) + 100] = stor11
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor11
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 160] = 0
                emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 100] = stor11
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor11
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if var169001 / 1000 <= var169003:
                    mem[(4 * ceil32(return_data.size)) + 96] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                    mem[var179003] = stor12
                    mem[var187003] = var187001
                    require ext_code.size(stor11)
                    call stor11.mem[var193004 len 4] with:
                         gas gas_remaining wei
                        args mem[var193004 + 4 len var193005 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 160] = 0
                    emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                    mem[(7 * ceil32(return_data.size)) + 100] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (8 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    idx = mem[(7 * ceil32(return_data.size)) + 96]
                    s = var169011
                    while idx > 100:
                        require ext_code.size(stor11)
                        call stor11.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args stor12, 100 * idx / 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = 100 * idx / 6
                        require ext_code.size(stor11)
                        call stor11.0x441a3e70 with:
                             gas gas_remaining wei
                            args stor12, 100 * idx / 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1658 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1658] == mem[_1658]
                        idx = mem[_1658]
                        s = 100 * idx / 6
                        continue 
                    if not idx:
                        mem[mem[64] + 4] = stor11
                        mem[mem[64] + 36] = 2
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor11, 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1582 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1582] == bool(mem[_1582])
            else:
                require ext_code.size(stor4)
                call stor4.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96] = 2
                mem[128] = stor4
                mem[160] = stor2
                mem[196] = this.address
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if arg1 < 0:
                    mem[ceil32(return_data.size) + 196] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 196] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 256] = 0
                    emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                    mem[(4 * ceil32(return_data.size)) + 196] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if var207001 / 1000 <= var207003:
                        mem[(6 * ceil32(return_data.size)) + 192] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                        mem[var217003] = stor12
                        mem[var225003] = var225001
                        require ext_code.size(stor11)
                        call stor11.mem[var231004 len 4] with:
                             gas gas_remaining wei
                            args mem[var231004 + 4 len var231005 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        # nil
                    else:
                        mem[(6 * ceil32(return_data.size)) + 196] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 196] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 256] = 0
                        emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                        mem[(8 * ceil32(return_data.size)) + 196] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (10 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        idx = mem[(8 * ceil32(return_data.size)) + 192]
                        s = var207011
                        while idx > 100:
                            require ext_code.size(stor11)
                            call stor11.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args stor12, 100 * idx / 6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 100 * idx / 6
                            require ext_code.size(stor11)
                            call stor11.0x441a3e70 with:
                                 gas gas_remaining wei
                                args stor12, 100 * idx / 6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = stor11
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor11
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2272 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2272] == mem[_2272]
                            idx = mem[_2272]
                            s = 100 * idx / 6
                            continue 
                        if not idx:
                            mem[mem[64] + 4] = stor11
                            mem[mem[64] + 36] = 2
                            require ext_code.size(stor2)
                            call stor2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor11, 2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2202 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2202] == bool(mem[_2202])
                else:
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor13)
                    staticcall stor13.getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _523 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
                    _534 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0
                    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                    mem[(2 * ceil32(return_data.size)) + 192] = _534
                    require _523 + (32 * _534) + 32 <= return_data.size
                    idx = 0
                    s = ceil32(return_data.size) + _523 + 224
                    t = (2 * ceil32(return_data.size)) + 224
                    while idx < _534:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if 1 > _534:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require _534 - 1 < _534
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = 2
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 600
                    require ext_code.size(stor13)
                    call stor13.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, 2, mem[mem[64] + 196 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1570 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1578 = mem[_1570]
                    require mem[_1570] <= test266151307()
                    require _1570 + mem[_1570] + 31 < _1570 + return_data.size
                    _1586 = mem[_1570 + mem[_1570]]
                    require mem[_1570 + mem[_1570]] <= test266151307()
                    require _1570 + ceil32(return_data.size) + (32 * mem[_1570 + mem[_1570]]) + 32 <= test266151307() and (32 * mem[_1570 + mem[_1570]]) + 32 >= 0
                    mem[64] = _1570 + ceil32(return_data.size) + (32 * mem[_1570 + mem[_1570]]) + 32
                    mem[_1570 + ceil32(return_data.size)] = _1586
                    require _1578 + (32 * _1586) + 32 <= return_data.size
                    idx = 0
                    s = _1570 + _1578 + 32
                    t = _1570 + ceil32(return_data.size) + 32
                    while idx < _1586:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if arg1 < 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2224 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2239 = mem[_2224]
                    require mem[_2224] == mem[_2224]
                    mem[mem[64] + 4] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2292 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2292] == mem[_2292]
                    mem[mem[64]] = mem[_2292]
                    mem[mem[64] + 32] = _2239
                    mem[mem[64] + 64] = 0
                    emit 0xf6455783: mem[mem[64]], _2239, 0
                    mem[mem[64] + 4] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2380 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2380] == mem[_2380]
                    if var306001 / 1000 <= var306003:
                        mem[mem[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                        mem[var316003] = stor12
                        mem[var324003] = var324001
                        require ext_code.size(stor11)
                        call stor11.mem[var330004 len 4] with:
                             gas gas_remaining wei
                            args mem[var330004 + 4 len var330005 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        # nil
                    else:
                        mem[mem[64] + 4] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3195 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3206 = mem[_3195]
                        require mem[_3195] == mem[_3195]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3268 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3279 = mem[_3268]
                        require mem[_3268] == mem[_3268]
                        mem[mem[64] + 32] = mem[_3268]
                        mem[mem[64] + 64] = 0
                        emit 0xf6455783: _3206, _3279, 0
                        mem[mem[64] + 4] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3370 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3370] == mem[_3370]
                        idx = mem[_3370]
                        s = var306011
                        while idx > 100:
                            require ext_code.size(stor11)
                            call stor11.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args stor12, 100 * idx / 6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 100 * idx / 6
                            require ext_code.size(stor11)
                            call stor11.0x441a3e70 with:
                                 gas gas_remaining wei
                                args stor12, 100 * idx / 6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = stor11
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor11
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3850 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3850] == mem[_3850]
                            idx = mem[_3850]
                            s = 100 * idx / 6
                            continue 
                        if not idx:
                            mem[mem[64] + 4] = stor11
                            mem[mem[64] + 36] = 2
                            require ext_code.size(stor2)
                            call stor2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor11, 2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3776 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3776] == bool(mem[_3776])
        else:
            if msg.sender == stor15:
                if arg1 < 2:
                    if arg1 < 0:
                    mem[100] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 100] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 160] = 0
                    emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 100] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if var170001 / 1000 <= var170003:
                        mem[(4 * ceil32(return_data.size)) + 96] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                        mem[var180003] = stor12
                        mem[var188003] = var188001
                        require ext_code.size(stor11)
                        call stor11.mem[var194004 len 4] with:
                             gas gas_remaining wei
                            args mem[var194004 + 4 len var194005 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        # nil
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 100] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 160] = 0
                        emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 100] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        idx = mem[(7 * ceil32(return_data.size)) + 96]
                        s = var170011
                        while idx > 100:
                            require ext_code.size(stor11)
                            call stor11.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args stor12, 100 * idx / 6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 100 * idx / 6
                            require ext_code.size(stor11)
                            call stor11.0x441a3e70 with:
                                 gas gas_remaining wei
                                args stor12, 100 * idx / 6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = stor11
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor11
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1659 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1659] == mem[_1659]
                            idx = mem[_1659]
                            s = 100 * idx / 6
                            continue 
                        if not idx:
                            mem[mem[64] + 4] = stor11
                            mem[mem[64] + 36] = 2
                            require ext_code.size(stor2)
                            call stor2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor11, 2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1583 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1583] == bool(mem[_1583])
                else:
                    require ext_code.size(stor4)
                    call stor4.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96] = 2
                    mem[128] = stor4
                    mem[160] = stor2
                    mem[196] = this.address
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        if arg1 < 0:
                        mem[ceil32(return_data.size) + 196] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 196] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 256] = 0
                        emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                        mem[(4 * ceil32(return_data.size)) + 196] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if var208001 / 1000 <= var208003:
                            mem[(6 * ceil32(return_data.size)) + 192] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                            mem[var218003] = stor12
                            mem[var226003] = var226001
                            require ext_code.size(stor11)
                            call stor11.mem[var232004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var232004 + 4 len var232005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
                        else:
                            mem[(6 * ceil32(return_data.size)) + 196] = stor11
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor11
                            mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[(7 * ceil32(return_data.size)) + 196] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 256] = 0
                            emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                            mem[(8 * ceil32(return_data.size)) + 196] = stor11
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor11
                            mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            idx = mem[(8 * ceil32(return_data.size)) + 192]
                            s = var208011
                            while idx > 100:
                                require ext_code.size(stor11)
                                call stor11.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args stor12, 100 * idx / 6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = 100 * idx / 6
                                require ext_code.size(stor11)
                                call stor11.0x441a3e70 with:
                                     gas gas_remaining wei
                                    args stor12, 100 * idx / 6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = stor11
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor11
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2274 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2274] == mem[_2274]
                                idx = mem[_2274]
                                s = 100 * idx / 6
                                continue 
                            if not idx:
                                mem[mem[64] + 4] = stor11
                                mem[mem[64] + 36] = 2
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11, 2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2203 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2203] == bool(mem[_2203])
                    else:
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor13)
                        staticcall stor13.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _525 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
                        _536 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                        mem[(2 * ceil32(return_data.size)) + 192] = _536
                        require _525 + (32 * _536) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _525 + 224
                        t = (2 * ceil32(return_data.size)) + 224
                        while idx < _536:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 > _536:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require _536 - 1 < _536
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(stor13)
                        call stor13.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, 2, mem[mem[64] + 196 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1571 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1579 = mem[_1571]
                        require mem[_1571] <= test266151307()
                        require _1571 + mem[_1571] + 31 < _1571 + return_data.size
                        _1587 = mem[_1571 + mem[_1571]]
                        require mem[_1571 + mem[_1571]] <= test266151307()
                        require _1571 + ceil32(return_data.size) + (32 * mem[_1571 + mem[_1571]]) + 32 <= test266151307() and (32 * mem[_1571 + mem[_1571]]) + 32 >= 0
                        mem[64] = _1571 + ceil32(return_data.size) + (32 * mem[_1571 + mem[_1571]]) + 32
                        mem[_1571 + ceil32(return_data.size)] = _1587
                        require _1579 + (32 * _1587) + 32 <= return_data.size
                        idx = 0
                        s = _1571 + _1579 + 32
                        t = _1571 + ceil32(return_data.size) + 32
                        while idx < _1587:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if arg1 < 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2226 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2241 = mem[_2226]
                        require mem[_2226] == mem[_2226]
                        mem[mem[64] + 4] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2294 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2294] == mem[_2294]
                        mem[mem[64]] = mem[_2294]
                        mem[mem[64] + 32] = _2241
                        mem[mem[64] + 64] = 0
                        emit 0xf6455783: mem[mem[64]], _2241, 0
                        mem[mem[64] + 4] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2382 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2382] == mem[_2382]
                        if var307001 / 1000 <= var307003:
                            mem[mem[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                            mem[var317003] = stor12
                            mem[var325003] = var325001
                            require ext_code.size(stor11)
                            call stor11.mem[var331004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var331004 + 4 len var331005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
                        else:
                            mem[mem[64] + 4] = stor11
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor11
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3197 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3207 = mem[_3197]
                            require mem[_3197] == mem[_3197]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3271 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3281 = mem[_3271]
                            require mem[_3271] == mem[_3271]
                            mem[mem[64] + 32] = mem[_3271]
                            mem[mem[64] + 64] = 0
                            emit 0xf6455783: _3207, _3281, 0
                            mem[mem[64] + 4] = stor11
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor11
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3371 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3371] == mem[_3371]
                            idx = mem[_3371]
                            s = var307011
                            while idx > 100:
                                require ext_code.size(stor11)
                                call stor11.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args stor12, 100 * idx / 6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = 100 * idx / 6
                                require ext_code.size(stor11)
                                call stor11.0x441a3e70 with:
                                     gas gas_remaining wei
                                    args stor12, 100 * idx / 6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = stor11
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor11
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3851 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3851] == mem[_3851]
                                idx = mem[_3851]
                                s = 100 * idx / 6
                                continue 
                            if not idx:
                                mem[mem[64] + 4] = stor11
                                mem[mem[64] + 36] = 2
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11, 2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3778 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3778] == bool(mem[_3778])
            else:
                require msg.sender == stor16
                if arg1 < 2:
                    if arg1 < 0:
                    mem[100] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 100] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 160] = 0
                    emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 100] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if var171001 / 1000 <= var171003:
                        mem[(4 * ceil32(return_data.size)) + 96] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                        mem[var181003] = stor12
                        mem[var189003] = var189001
                        require ext_code.size(stor11)
                        call stor11.mem[var195004 len 4] with:
                             gas gas_remaining wei
                            args mem[var195004 + 4 len var195005 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        # nil
                    else:
                        mem[(4 * ceil32(return_data.size)) + 100] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(6 * ceil32(return_data.size)) + 100] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 160] = 0
                        emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 100] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        idx = mem[(7 * ceil32(return_data.size)) + 96]
                        s = var171011
                        while idx > 100:
                            require ext_code.size(stor11)
                            call stor11.deposit(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args stor12, 100 * idx / 6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 36] = 100 * idx / 6
                            require ext_code.size(stor11)
                            call stor11.0x441a3e70 with:
                                 gas gas_remaining wei
                                args stor12, 100 * idx / 6
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = stor11
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor11
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1660 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1660] == mem[_1660]
                            idx = mem[_1660]
                            s = 100 * idx / 6
                            continue 
                        if not idx:
                            mem[mem[64] + 4] = stor11
                            mem[mem[64] + 36] = 2
                            require ext_code.size(stor2)
                            call stor2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor11, 2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1584 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1584] == bool(mem[_1584])
                else:
                    require ext_code.size(stor4)
                    call stor4.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96] = 2
                    mem[128] = stor4
                    mem[160] = stor2
                    mem[196] = this.address
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        if arg1 < 0:
                        mem[ceil32(return_data.size) + 196] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 196] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 256] = 0
                        emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                        mem[(4 * ceil32(return_data.size)) + 196] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if var209001 / 1000 <= var209003:
                            mem[(6 * ceil32(return_data.size)) + 192] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                            mem[var219003] = stor12
                            mem[var227003] = var227001
                            require ext_code.size(stor11)
                            call stor11.mem[var233004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var233004 + 4 len var233005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
                        else:
                            mem[(6 * ceil32(return_data.size)) + 196] = stor11
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor11
                            mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[(7 * ceil32(return_data.size)) + 196] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 256] = 0
                            emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                            mem[(8 * ceil32(return_data.size)) + 196] = stor11
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor11
                            mem[(8 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (10 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            idx = mem[(8 * ceil32(return_data.size)) + 192]
                            s = var209011
                            while idx > 100:
                                require ext_code.size(stor11)
                                call stor11.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args stor12, 100 * idx / 6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = 100 * idx / 6
                                require ext_code.size(stor11)
                                call stor11.0x441a3e70 with:
                                     gas gas_remaining wei
                                    args stor12, 100 * idx / 6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = stor11
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor11
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2276 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2276] == mem[_2276]
                                idx = mem[_2276]
                                s = 100 * idx / 6
                                continue 
                            if not idx:
                                mem[mem[64] + 4] = stor11
                                mem[mem[64] + 36] = 2
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11, 2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2204 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2204] == bool(mem[_2204])
                    else:
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor13)
                        staticcall stor13.getAmountsOut(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _526 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
                        _539 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] <= test266151307()
                        require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 >= 0
                        mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
                        mem[(2 * ceil32(return_data.size)) + 192] = _539
                        require _526 + (32 * _539) + 32 <= return_data.size
                        idx = 0
                        s = ceil32(return_data.size) + _526 + 224
                        t = (2 * ceil32(return_data.size)) + 224
                        while idx < _539:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 1 > _539:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require _539 - 1 < _539
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = 2
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 600
                        require ext_code.size(stor13)
                        call stor13.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, 2, mem[mem[64] + 196 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1572 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1580 = mem[_1572]
                        require mem[_1572] <= test266151307()
                        require _1572 + mem[_1572] + 31 < _1572 + return_data.size
                        _1588 = mem[_1572 + mem[_1572]]
                        require mem[_1572 + mem[_1572]] <= test266151307()
                        require _1572 + ceil32(return_data.size) + (32 * mem[_1572 + mem[_1572]]) + 32 <= test266151307() and (32 * mem[_1572 + mem[_1572]]) + 32 >= 0
                        mem[64] = _1572 + ceil32(return_data.size) + (32 * mem[_1572 + mem[_1572]]) + 32
                        mem[_1572 + ceil32(return_data.size)] = _1588
                        require _1580 + (32 * _1588) + 32 <= return_data.size
                        idx = 0
                        s = _1572 + _1580 + 32
                        t = _1572 + ceil32(return_data.size) + 32
                        while idx < _1588:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if arg1 < 0:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2228 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2243 = mem[_2228]
                        require mem[_2228] == mem[_2228]
                        mem[mem[64] + 4] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2296 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2296] == mem[_2296]
                        mem[mem[64]] = mem[_2296]
                        mem[mem[64] + 32] = _2243
                        mem[mem[64] + 64] = 0
                        emit 0xf6455783: mem[mem[64]], _2243, 0
                        mem[mem[64] + 4] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2384 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2384] == mem[_2384]
                        if var308001 / 1000 <= var308003:
                            mem[mem[64]] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                            mem[var318003] = stor12
                            mem[var326003] = var326001
                            require ext_code.size(stor11)
                            call stor11.mem[var332004 len 4] with:
                                 gas gas_remaining wei
                                args mem[var332004 + 4 len var332005 - 4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            # nil
                        else:
                            mem[mem[64] + 4] = stor11
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor11
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3199 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3208 = mem[_3199]
                            require mem[_3199] == mem[_3199]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3274 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3283 = mem[_3274]
                            require mem[_3274] == mem[_3274]
                            mem[mem[64] + 32] = mem[_3274]
                            mem[mem[64] + 64] = 0
                            emit 0xf6455783: _3208, _3283, 0
                            mem[mem[64] + 4] = stor11
                            require ext_code.size(stor2)
                            staticcall stor2.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor11
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3372 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3372] == mem[_3372]
                            idx = mem[_3372]
                            s = var308011
                            while idx > 100:
                                require ext_code.size(stor11)
                                call stor11.deposit(uint256 rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args stor12, 100 * idx / 6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 36] = 100 * idx / 6
                                require ext_code.size(stor11)
                                call stor11.0x441a3e70 with:
                                     gas gas_remaining wei
                                    args stor12, 100 * idx / 6
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = stor11
                                require ext_code.size(stor2)
                                staticcall stor2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor11
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3852 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3852] == mem[_3852]
                                idx = mem[_3852]
                                s = 100 * idx / 6
                                continue 
                            if not idx:
                                mem[mem[64] + 4] = stor11
                                mem[mem[64] + 36] = 2
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor11, 2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3780 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3780] == bool(mem[_3780])
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if msg.sender == stor15:
        require ext_code.size(stor16)
        staticcall stor16.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        Mask(112, 0, stor24.field_0) = ext_call.return_data[50 len 14]
        Mask(144, 0, stor24.field_112) = 0
        Mask(112, 0, stor23.field_0) = ext_call.return_data[18 len 14]
        Mask(144, 0, stor23.field_112) = 0
        require stor18
        stor20 = (uint256(stor24.field_0) / stor18) - 1
        require ext_code.size(stor16)
        call stor16.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, stor20, address(this.address), 128, 2, Mask(16, 240, 120, 0, 0) >> 240, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == stor16
    if msg.sender == stor15:
        require ext_code.size(stor16)
        staticcall stor16.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        Mask(112, 0, stor24.field_0) = ext_call.return_data[50 len 14]
        Mask(144, 0, stor24.field_112) = 0
        Mask(112, 0, stor23.field_0) = ext_call.return_data[18 len 14]
        Mask(144, 0, stor23.field_112) = 0
        require stor18
        stor20 = (uint256(stor24.field_0) / stor18) - 1
        require ext_code.size(stor16)
        call stor16.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, stor20, address(this.address), 128, 2, Mask(16, 240, 120, 0, 0) >> 240, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if stor16 != msg.sender:
    mem[100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if msg.sender == stor0:
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
        mem[(2 * ceil32(return_data.size)) + 100] = stor11
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args stor11
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 160] = 0
        emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
        mem[(4 * ceil32(return_data.size)) + 100] = stor11
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args stor11
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if var221001 / 1000 <= var221003:
            mem[(6 * ceil32(return_data.size)) + 96] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
            mem[var231003] = stor12
            mem[var239003] = var239001
            require ext_code.size(stor11)
            call stor11.mem[var245004 len 4] with:
                 gas gas_remaining wei
                args mem[var245004 + 4 len var245005 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
        else:
            mem[(6 * ceil32(return_data.size)) + 100] = stor11
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args stor11
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 160] = 0
            emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
            mem[(8 * ceil32(return_data.size)) + 100] = stor11
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args stor11
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = mem[(8 * ceil32(return_data.size)) + 96]
            s = var221011
            while idx > 100:
                require ext_code.size(stor11)
                call stor11.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor12, 100 * idx / 6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 36] = 100 * idx / 6
                require ext_code.size(stor11)
                call stor11.0x441a3e70 with:
                     gas gas_remaining wei
                    args stor12, 100 * idx / 6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = stor11
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor11
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1351 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1351] == mem[_1351]
                idx = mem[_1351]
                s = 100 * idx / 6
                continue 
            if idx:
                require ext_code.size(stor4)
                call stor4.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1295 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1307 = mem[_1295]
                require mem[_1295] == mem[_1295]
                require stor19 + stor20
                mem[mem[64] + 4] = stor15
                mem[mem[64] + 36] = _1307 * stor19 / stor19 + stor20
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor15, _1307 * stor19 / stor19 + stor20
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1371 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1371] == bool(mem[_1371])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1431 = mem[_1423]
                require mem[_1423] == mem[_1423]
                mem[mem[64] + 4] = stor16
                mem[mem[64] + 36] = _1431
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor16, _1431
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1471 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1471] == bool(mem[_1471])
                mem[mem[64] + 4] = stor16
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1519 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1523 = mem[_1519]
                require mem[_1519] == mem[_1519]
                require mem[_1519]
                _1539 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1539]
                mem[_1539 + 32] = stor4
                require 1 < mem[_1539]
                mem[_1539 + 64] = stor8
                mem[_1539 + 100] = this.address
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_1539 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[_1539 + ceil32(return_data.size) + 100] = stor16
                require ext_code.size(stor8)
                staticcall stor8.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16
                mem[_1539 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1539 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1539 + (2 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[_1539 + (2 * ceil32(return_data.size)) + 100] = (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1523) + -ext_call.return_data[0] + 1
                mem[_1539 + (2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                mem[_1539 + (2 * ceil32(return_data.size)) + 164] = 160
                mem[_1539 + (2 * ceil32(return_data.size)) + 260] = mem[_1539]
                idx = 0
                s = _1539 + 32
                t = _1539 + (2 * ceil32(return_data.size)) + 292
                while idx < mem[_1539]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1539 + (2 * ceil32(return_data.size)) + 196] = stor16
                mem[_1539 + (2 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                require ext_code.size(stor13)
                call stor13.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1523) + -ext_call.return_data[0] + 1, ext_call.return_data[0], 160, stor16, block.timestamp + 600, mem[_1539 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_1539]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1539 + (2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _1539 + (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _2271 = mem[_1539 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1523) + -ext_call.return_data[0] + 1) >> 32
                require mem[_1539 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1523) + -ext_call.return_data[0] + 1) >> 32 <= test266151307()
                require _1539 + (2 * ceil32(return_data.size)) + mem[_1539 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1523) + -ext_call.return_data[0] + 1) >> 32 + 127 < _1539 + (2 * ceil32(return_data.size)) + return_data.size + 96
                _2279 = mem[_1539 + (2 * ceil32(return_data.size)) + mem[_1539 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1523) + -ext_call.return_data[0] + 1) >> 32 + 96]
                require mem[_1539 + (2 * ceil32(return_data.size)) + mem[_1539 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1523) + -ext_call.return_data[0] + 1) >> 32 + 96] <= test266151307()
                require _1539 + (4 * ceil32(return_data.size)) + (32 * mem[_1539 + (2 * ceil32(return_data.size)) + mem[_1539 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1523) + -ext_call.return_data[0] + 1) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[_1539 + (2 * ceil32(return_data.size)) + mem[_1539 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1523) + -ext_call.return_data[0] + 1) >> 32 + 96]) + 32 >= 0
                mem[64] = _1539 + (4 * ceil32(return_data.size)) + (32 * mem[_1539 + (2 * ceil32(return_data.size)) + mem[_1539 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1523) + -ext_call.return_data[0] + 1) >> 32 + 96]) + 128
                mem[_1539 + (4 * ceil32(return_data.size)) + 96] = mem[_1539 + (2 * ceil32(return_data.size)) + mem[_1539 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1523) + -ext_call.return_data[0] + 1) >> 32 + 96]
                require _2271 + (32 * _2279) + 32 <= return_data.size
                idx = 0
                s = _1539 + (2 * ceil32(return_data.size)) + _2271 + 128
                t = _1539 + (4 * ceil32(return_data.size)) + 128
                while idx < _2279:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2703 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2703] == mem[_2703]
                mem[mem[64] + 4] = stor15
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor15
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2755 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2763 = mem[_2755]
                require mem[_2755] == mem[_2755]
                require mem[_2755]
                mem[mem[64] + 4] = stor15
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args stor15
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2803 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2811 = mem[_2803]
                require mem[_2803] == mem[_2803]
                mem[mem[64] + 4] = stor15
                mem[mem[64] + 36] = (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2763) + -_2811 + 1
                require ext_code.size(stor4)
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor15, (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2763) + -_2811 + 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2855 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2855] == bool(mem[_2855])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2903 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2903] == mem[_2903]
            else:
                mem[mem[64] + 4] = stor11
                mem[mem[64] + 36] = 2
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor11, 2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1288 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1288] == bool(mem[_1288])
                require ext_code.size(stor4)
                call stor4.deposit() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1379 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1387 = mem[_1379]
                require mem[_1379] == mem[_1379]
                require stor19 + stor20
                mem[mem[64] + 4] = stor15
                mem[mem[64] + 36] = _1387 * stor19 / stor19 + stor20
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor15, _1387 * stor19 / stor19 + stor20
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1432 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1432] == bool(mem[_1432])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1480 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1487 = mem[_1480]
                require mem[_1480] == mem[_1480]
                mem[mem[64] + 4] = stor16
                mem[mem[64] + 36] = _1487
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor16, _1487
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1531 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1531] == bool(mem[_1531])
                mem[mem[64] + 4] = stor16
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1579 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1591 = mem[_1579]
                require mem[_1579] == mem[_1579]
                require mem[_1579]
                _1619 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1619]
                mem[_1619 + 32] = stor4
                require 1 < mem[_1619]
                mem[_1619 + 64] = stor8
                mem[_1619 + 100] = this.address
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[_1619 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[_1619 + ceil32(return_data.size) + 100] = stor16
                require ext_code.size(stor8)
                staticcall stor8.0x70a08231 with:
                        gas gas_remaining wei
                       args stor16
                mem[_1619 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1619 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if block.timestamp + 600 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[_1619 + (2 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[_1619 + (2 * ceil32(return_data.size)) + 100] = (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1591) + -ext_call.return_data[0] + 1
                mem[_1619 + (2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                mem[_1619 + (2 * ceil32(return_data.size)) + 164] = 160
                mem[_1619 + (2 * ceil32(return_data.size)) + 260] = mem[_1619]
                idx = 0
                s = _1619 + 32
                t = _1619 + (2 * ceil32(return_data.size)) + 292
                while idx < mem[_1619]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1619 + (2 * ceil32(return_data.size)) + 196] = stor16
                mem[_1619 + (2 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                require ext_code.size(stor13)
                call stor13.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1619 + (2 * ceil32(return_data.size)) + (32 * mem[_1619]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2264 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2272 = mem[_2264]
                require mem[_2264] <= test266151307()
                require _2264 + mem[_2264] + 31 < _2264 + return_data.size
                _2280 = mem[_2264 + mem[_2264]]
                require mem[_2264 + mem[_2264]] <= test266151307()
                require _2264 + ceil32(return_data.size) + (32 * mem[_2264 + mem[_2264]]) + 32 <= test266151307() and (32 * mem[_2264 + mem[_2264]]) + 32 >= 0
                mem[64] = _2264 + ceil32(return_data.size) + (32 * mem[_2264 + mem[_2264]]) + 32
                mem[_2264 + ceil32(return_data.size)] = _2280
                require _2272 + (32 * _2280) + 32 <= return_data.size
                idx = 0
                s = _2264 + _2272 + 32
                t = _2264 + ceil32(return_data.size) + 32
                while idx < _2280:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2704 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2704] == mem[_2704]
                mem[mem[64] + 4] = stor15
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor15
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2756 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2764 = mem[_2756]
                require mem[_2756] == mem[_2756]
                require mem[_2756]
                mem[mem[64] + 4] = stor15
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args stor15
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2804 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2812 = mem[_2804]
                require mem[_2804] == mem[_2804]
                mem[mem[64] + 4] = stor15
                mem[mem[64] + 36] = (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2764) + -_2812 + 1
                require ext_code.size(stor4)
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor15, (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2764) + -_2812 + 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2856 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2856] == bool(mem[_2856])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2904 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2904] == mem[_2904]
    else:
        if msg.sender == stor2:
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
            mem[(2 * ceil32(return_data.size)) + 100] = stor11
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args stor11
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 160] = 0
            emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
            mem[(4 * ceil32(return_data.size)) + 100] = stor11
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args stor11
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if var222001 / 1000 <= var222003:
                mem[(6 * ceil32(return_data.size)) + 96] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                mem[var232003] = stor12
                mem[var240003] = var240001
                require ext_code.size(stor11)
                call stor11.mem[var246004 len 4] with:
                     gas gas_remaining wei
                    args mem[var246004 + 4 len var246005 - 4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                # nil
            else:
                mem[(6 * ceil32(return_data.size)) + 100] = stor11
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor11
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                mem[(8 * ceil32(return_data.size)) + 160] = 0
                emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                mem[(8 * ceil32(return_data.size)) + 100] = stor11
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor11
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                idx = mem[(8 * ceil32(return_data.size)) + 96]
                s = var222011
                while idx > 100:
                    require ext_code.size(stor11)
                    call stor11.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor12, 100 * idx / 6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 100 * idx / 6
                    require ext_code.size(stor11)
                    call stor11.0x441a3e70 with:
                         gas gas_remaining wei
                        args stor12, 100 * idx / 6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1352 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1352] == mem[_1352]
                    idx = mem[_1352]
                    s = 100 * idx / 6
                    continue 
                if idx:
                    require ext_code.size(stor4)
                    call stor4.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1296 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1308 = mem[_1296]
                    require mem[_1296] == mem[_1296]
                    require stor19 + stor20
                    mem[mem[64] + 4] = stor15
                    mem[mem[64] + 36] = _1308 * stor19 / stor19 + stor20
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor15, _1308 * stor19 / stor19 + stor20
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1373 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1373] == bool(mem[_1373])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1424 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1433 = mem[_1424]
                    require mem[_1424] == mem[_1424]
                    mem[mem[64] + 4] = stor16
                    mem[mem[64] + 36] = _1433
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor16, _1433
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1472 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1472] == bool(mem[_1472])
                    mem[mem[64] + 4] = stor16
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor16
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1520 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1524 = mem[_1520]
                    require mem[_1520] == mem[_1520]
                    require mem[_1520]
                    _1540 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1540]
                    mem[_1540 + 32] = stor4
                    require 1 < mem[_1540]
                    mem[_1540 + 64] = stor8
                    mem[_1540 + 100] = this.address
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_1540 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_1540 + ceil32(return_data.size) + 100] = stor16
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args stor16
                    mem[_1540 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1540 + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_1540 + (2 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[_1540 + (2 * ceil32(return_data.size)) + 100] = (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1524) + -ext_call.return_data[0] + 1
                    mem[_1540 + (2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                    mem[_1540 + (2 * ceil32(return_data.size)) + 164] = 160
                    mem[_1540 + (2 * ceil32(return_data.size)) + 260] = mem[_1540]
                    idx = 0
                    s = _1540 + 32
                    t = _1540 + (2 * ceil32(return_data.size)) + 292
                    while idx < mem[_1540]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1540 + (2 * ceil32(return_data.size)) + 196] = stor16
                    mem[_1540 + (2 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                    require ext_code.size(stor13)
                    call stor13.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1524) + -ext_call.return_data[0] + 1, ext_call.return_data[0], 160, stor16, block.timestamp + 600, mem[_1540 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_1540]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1540 + (2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1540 + (4 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _2273 = mem[_1540 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1524) + -ext_call.return_data[0] + 1) >> 32
                    require mem[_1540 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1524) + -ext_call.return_data[0] + 1) >> 32 <= test266151307()
                    require _1540 + (2 * ceil32(return_data.size)) + mem[_1540 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1524) + -ext_call.return_data[0] + 1) >> 32 + 127 < _1540 + (2 * ceil32(return_data.size)) + return_data.size + 96
                    _2282 = mem[_1540 + (2 * ceil32(return_data.size)) + mem[_1540 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1524) + -ext_call.return_data[0] + 1) >> 32 + 96]
                    require mem[_1540 + (2 * ceil32(return_data.size)) + mem[_1540 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1524) + -ext_call.return_data[0] + 1) >> 32 + 96] <= test266151307()
                    require _1540 + (4 * ceil32(return_data.size)) + (32 * mem[_1540 + (2 * ceil32(return_data.size)) + mem[_1540 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1524) + -ext_call.return_data[0] + 1) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[_1540 + (2 * ceil32(return_data.size)) + mem[_1540 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1524) + -ext_call.return_data[0] + 1) >> 32 + 96]) + 32 >= 0
                    mem[64] = _1540 + (4 * ceil32(return_data.size)) + (32 * mem[_1540 + (2 * ceil32(return_data.size)) + mem[_1540 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1524) + -ext_call.return_data[0] + 1) >> 32 + 96]) + 128
                    mem[_1540 + (4 * ceil32(return_data.size)) + 96] = _2282
                    require _2273 + (32 * _2282) + 32 <= return_data.size
                    idx = 0
                    s = _1540 + (2 * ceil32(return_data.size)) + _2273 + 128
                    t = _1540 + (4 * ceil32(return_data.size)) + 128
                    while idx < _2282:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2705 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2705] == mem[_2705]
                    mem[mem[64] + 4] = stor15
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor15
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2757 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2766 = mem[_2757]
                    require mem[_2757] == mem[_2757]
                    require mem[_2757]
                    mem[mem[64] + 4] = stor15
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args stor15
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2805 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2813 = mem[_2805]
                    require mem[_2805] == mem[_2805]
                    mem[mem[64] + 4] = stor15
                    mem[mem[64] + 36] = (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2766) + -_2813 + 1
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor15, (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2766) + -_2813 + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2858 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2858] == bool(mem[_2858])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2906 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2906] == mem[_2906]
                else:
                    mem[mem[64] + 4] = stor11
                    mem[mem[64] + 36] = 2
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor11, 2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1290 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1290] == bool(mem[_1290])
                    require ext_code.size(stor4)
                    call stor4.deposit() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1380 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1388 = mem[_1380]
                    require mem[_1380] == mem[_1380]
                    require stor19 + stor20
                    mem[mem[64] + 4] = stor15
                    mem[mem[64] + 36] = _1388 * stor19 / stor19 + stor20
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor15, _1388 * stor19 / stor19 + stor20
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1434 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1434] == bool(mem[_1434])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1482 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1489 = mem[_1482]
                    require mem[_1482] == mem[_1482]
                    mem[mem[64] + 4] = stor16
                    mem[mem[64] + 36] = _1489
                    require ext_code.size(stor2)
                    call stor2.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor16, _1489
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1532 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1532] == bool(mem[_1532])
                    mem[mem[64] + 4] = stor16
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor16
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1581 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1592 = mem[_1581]
                    require mem[_1581] == mem[_1581]
                    require mem[_1581]
                    _1620 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_1620]
                    mem[_1620 + 32] = stor4
                    require 1 < mem[_1620]
                    mem[_1620 + 64] = stor8
                    mem[_1620 + 100] = this.address
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[_1620 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[_1620 + ceil32(return_data.size) + 100] = stor16
                    require ext_code.size(stor8)
                    staticcall stor8.0x70a08231 with:
                            gas gas_remaining wei
                           args stor16
                    mem[_1620 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1620 + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[_1620 + (2 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[_1620 + (2 * ceil32(return_data.size)) + 100] = (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1592) + -ext_call.return_data[0] + 1
                    mem[_1620 + (2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                    mem[_1620 + (2 * ceil32(return_data.size)) + 164] = 160
                    mem[_1620 + (2 * ceil32(return_data.size)) + 260] = mem[_1620]
                    idx = 0
                    s = _1620 + 32
                    t = _1620 + (2 * ceil32(return_data.size)) + 292
                    while idx < mem[_1620]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1620 + (2 * ceil32(return_data.size)) + 196] = stor16
                    mem[_1620 + (2 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                    require ext_code.size(stor13)
                    call stor13.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1620 + (2 * ceil32(return_data.size)) + (32 * mem[_1620]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2266 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2274 = mem[_2266]
                    require mem[_2266] <= test266151307()
                    require _2266 + mem[_2266] + 31 < _2266 + return_data.size
                    _2283 = mem[_2266 + mem[_2266]]
                    require mem[_2266 + mem[_2266]] <= test266151307()
                    require _2266 + ceil32(return_data.size) + (32 * mem[_2266 + mem[_2266]]) + 32 <= test266151307() and (32 * mem[_2266 + mem[_2266]]) + 32 >= 0
                    mem[64] = _2266 + ceil32(return_data.size) + (32 * mem[_2266 + mem[_2266]]) + 32
                    mem[_2266 + ceil32(return_data.size)] = _2283
                    require _2274 + (32 * _2283) + 32 <= return_data.size
                    idx = 0
                    s = _2266 + _2274 + 32
                    t = _2266 + ceil32(return_data.size) + 32
                    while idx < _2283:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2706 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2706] == mem[_2706]
                    mem[mem[64] + 4] = stor15
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor15
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2758 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2767 = mem[_2758]
                    require mem[_2758] == mem[_2758]
                    require mem[_2758]
                    mem[mem[64] + 4] = stor15
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args stor15
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2806 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2814 = mem[_2806]
                    require mem[_2806] == mem[_2806]
                    mem[mem[64] + 4] = stor15
                    mem[mem[64] + 36] = (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2767) + -_2814 + 1
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor15, (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2767) + -_2814 + 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2859 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2859] == bool(mem[_2859])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2907 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2907] == mem[_2907]
        else:
            if msg.sender == stor15:
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
                mem[(2 * ceil32(return_data.size)) + 100] = stor11
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor11
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 160] = 0
                emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                mem[(4 * ceil32(return_data.size)) + 100] = stor11
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor11
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if var223001 / 1000 <= var223003:
                    mem[(6 * ceil32(return_data.size)) + 96] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                    mem[var233003] = stor12
                    mem[var241003] = var241001
                    require ext_code.size(stor11)
                    call stor11.mem[var247004 len 4] with:
                         gas gas_remaining wei
                        args mem[var247004 + 4 len var247005 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
                else:
                    mem[(6 * ceil32(return_data.size)) + 100] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 160] = 0
                    emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                    mem[(8 * ceil32(return_data.size)) + 100] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (10 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    idx = mem[(8 * ceil32(return_data.size)) + 96]
                    s = var223011
                    while idx > 100:
                        require ext_code.size(stor11)
                        call stor11.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args stor12, 100 * idx / 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = 100 * idx / 6
                        require ext_code.size(stor11)
                        call stor11.0x441a3e70 with:
                             gas gas_remaining wei
                            args stor12, 100 * idx / 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1353 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1353] == mem[_1353]
                        idx = mem[_1353]
                        s = 100 * idx / 6
                        continue 
                    if idx:
                        require ext_code.size(stor4)
                        call stor4.deposit() with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1309 = mem[_1297]
                        require mem[_1297] == mem[_1297]
                        require stor19 + stor20
                        mem[mem[64] + 4] = stor15
                        mem[mem[64] + 36] = _1309 * stor19 / stor19 + stor20
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor15, _1309 * stor19 / stor19 + stor20
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1375 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1375] == bool(mem[_1375])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1425 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1435 = mem[_1425]
                        require mem[_1425] == mem[_1425]
                        mem[mem[64] + 4] = stor16
                        mem[mem[64] + 36] = _1435
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor16, _1435
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1473 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1473] == bool(mem[_1473])
                        mem[mem[64] + 4] = stor16
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1521 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1525 = mem[_1521]
                        require mem[_1521] == mem[_1521]
                        require mem[_1521]
                        _1541 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1541]
                        mem[_1541 + 32] = stor4
                        require 1 < mem[_1541]
                        mem[_1541 + 64] = stor8
                        mem[_1541 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_1541 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1541 + ceil32(return_data.size) + 100] = stor16
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16
                        mem[_1541 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1541 + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_1541 + (2 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[_1541 + (2 * ceil32(return_data.size)) + 100] = (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1525) + -ext_call.return_data[0] + 1
                        mem[_1541 + (2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                        mem[_1541 + (2 * ceil32(return_data.size)) + 164] = 160
                        mem[_1541 + (2 * ceil32(return_data.size)) + 260] = mem[_1541]
                        idx = 0
                        s = _1541 + 32
                        t = _1541 + (2 * ceil32(return_data.size)) + 292
                        while idx < mem[_1541]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1541 + (2 * ceil32(return_data.size)) + 196] = stor16
                        mem[_1541 + (2 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                        require ext_code.size(stor13)
                        call stor13.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1541 + (2 * ceil32(return_data.size)) + (32 * mem[_1541]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2267 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2275 = mem[_2267]
                        require mem[_2267] <= test266151307()
                        require _2267 + mem[_2267] + 31 < _2267 + return_data.size
                        _2285 = mem[_2267 + mem[_2267]]
                        require mem[_2267 + mem[_2267]] <= test266151307()
                        require _2267 + ceil32(return_data.size) + (32 * mem[_2267 + mem[_2267]]) + 32 <= test266151307() and (32 * mem[_2267 + mem[_2267]]) + 32 >= 0
                        mem[64] = _2267 + ceil32(return_data.size) + (32 * mem[_2267 + mem[_2267]]) + 32
                        mem[_2267 + ceil32(return_data.size)] = _2285
                        require _2275 + (32 * _2285) + 32 <= return_data.size
                        idx = 0
                        s = _2267 + _2275 + 32
                        t = _2267 + ceil32(return_data.size) + 32
                        while idx < _2285:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2707 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2707] == mem[_2707]
                        mem[mem[64] + 4] = stor15
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor15
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2759 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2769 = mem[_2759]
                        require mem[_2759] == mem[_2759]
                        require mem[_2759]
                        mem[mem[64] + 4] = stor15
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args stor15
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2807 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2815 = mem[_2807]
                        require mem[_2807] == mem[_2807]
                        mem[mem[64] + 4] = stor15
                        mem[mem[64] + 36] = (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2769) + -_2815 + 1
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor15, (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2769) + -_2815 + 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2861 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2861] == bool(mem[_2861])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2909 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2909] == mem[_2909]
                    else:
                        mem[mem[64] + 4] = stor11
                        mem[mem[64] + 36] = 2
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor11, 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1292 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1292] == bool(mem[_1292])
                        require ext_code.size(stor4)
                        call stor4.deposit() with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1381 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1389 = mem[_1381]
                        require mem[_1381] == mem[_1381]
                        require stor19 + stor20
                        mem[mem[64] + 4] = stor15
                        mem[mem[64] + 36] = _1389 * stor19 / stor19 + stor20
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor15, _1389 * stor19 / stor19 + stor20
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1436 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1436] == bool(mem[_1436])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1484 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1491 = mem[_1484]
                        require mem[_1484] == mem[_1484]
                        mem[mem[64] + 4] = stor16
                        mem[mem[64] + 36] = _1491
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor16, _1491
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1533 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1533] == bool(mem[_1533])
                        mem[mem[64] + 4] = stor16
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1583 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1593 = mem[_1583]
                        require mem[_1583] == mem[_1583]
                        require mem[_1583]
                        _1621 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1621]
                        mem[_1621 + 32] = stor4
                        require 1 < mem[_1621]
                        mem[_1621 + 64] = stor8
                        mem[_1621 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_1621 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1621 + ceil32(return_data.size) + 100] = stor16
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16
                        mem[_1621 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1621 + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_1621 + (2 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[_1621 + (2 * ceil32(return_data.size)) + 100] = (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1593) + -ext_call.return_data[0] + 1
                        mem[_1621 + (2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                        mem[_1621 + (2 * ceil32(return_data.size)) + 164] = 160
                        mem[_1621 + (2 * ceil32(return_data.size)) + 260] = mem[_1621]
                        idx = 0
                        s = _1621 + 32
                        t = _1621 + (2 * ceil32(return_data.size)) + 292
                        while idx < mem[_1621]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1621 + (2 * ceil32(return_data.size)) + 196] = stor16
                        mem[_1621 + (2 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                        require ext_code.size(stor13)
                        call stor13.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1593) + -ext_call.return_data[0] + 1, ext_call.return_data[0], 160, stor16, block.timestamp + 600, mem[_1621 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_1621]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1621 + (2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1621 + (4 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _2276 = mem[_1621 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1593) + -ext_call.return_data[0] + 1) >> 32
                        require mem[_1621 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1593) + -ext_call.return_data[0] + 1) >> 32 <= test266151307()
                        require _1621 + (2 * ceil32(return_data.size)) + mem[_1621 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1593) + -ext_call.return_data[0] + 1) >> 32 + 127 < _1621 + (2 * ceil32(return_data.size)) + return_data.size + 96
                        _2286 = mem[_1621 + (2 * ceil32(return_data.size)) + mem[_1621 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1593) + -ext_call.return_data[0] + 1) >> 32 + 96]
                        require mem[_1621 + (2 * ceil32(return_data.size)) + mem[_1621 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1593) + -ext_call.return_data[0] + 1) >> 32 + 96] <= test266151307()
                        require _1621 + (4 * ceil32(return_data.size)) + (32 * mem[_1621 + (2 * ceil32(return_data.size)) + mem[_1621 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1593) + -ext_call.return_data[0] + 1) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[_1621 + (2 * ceil32(return_data.size)) + mem[_1621 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1593) + -ext_call.return_data[0] + 1) >> 32 + 96]) + 32 >= 0
                        mem[64] = _1621 + (4 * ceil32(return_data.size)) + (32 * mem[_1621 + (2 * ceil32(return_data.size)) + mem[_1621 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1593) + -ext_call.return_data[0] + 1) >> 32 + 96]) + 128
                        mem[_1621 + (4 * ceil32(return_data.size)) + 96] = _2286
                        require _2276 + (32 * _2286) + 32 <= return_data.size
                        idx = 0
                        s = _1621 + (2 * ceil32(return_data.size)) + _2276 + 128
                        t = _1621 + (4 * ceil32(return_data.size)) + 128
                        while idx < _2286:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2708 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2708] == mem[_2708]
                        mem[mem[64] + 4] = stor15
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor15
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2760 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2770 = mem[_2760]
                        require mem[_2760] == mem[_2760]
                        require mem[_2760]
                        mem[mem[64] + 4] = stor15
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args stor15
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2808 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2816 = mem[_2808]
                        require mem[_2808] == mem[_2808]
                        mem[mem[64] + 4] = stor15
                        mem[mem[64] + 36] = (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2770) + -_2816 + 1
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor15, (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2770) + -_2816 + 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2862 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2862] == bool(mem[_2862])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2910 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2910] == mem[_2910]
            else:
                require msg.sender == stor16
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
                mem[(2 * ceil32(return_data.size)) + 100] = stor11
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor11
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 160] = 0
                emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                mem[(4 * ceil32(return_data.size)) + 100] = stor11
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args stor11
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if var224001 / 1000 <= var224003:
                    mem[(6 * ceil32(return_data.size)) + 96] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                    mem[var234003] = stor12
                    mem[var242003] = var242001
                    require ext_code.size(stor11)
                    call stor11.mem[var248004 len 4] with:
                         gas gas_remaining wei
                        args mem[var248004 + 4 len var248005 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
                else:
                    mem[(6 * ceil32(return_data.size)) + 100] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 160] = 0
                    emit 0xf6455783: ext_call.return_data[0], ext_call.return_data[0], 0
                    mem[(8 * ceil32(return_data.size)) + 100] = stor11
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args stor11
                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (10 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    idx = mem[(8 * ceil32(return_data.size)) + 96]
                    s = var224011
                    while idx > 100:
                        require ext_code.size(stor11)
                        call stor11.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args stor12, 100 * idx / 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 36] = 100 * idx / 6
                        require ext_code.size(stor11)
                        call stor11.0x441a3e70 with:
                             gas gas_remaining wei
                            args stor12, 100 * idx / 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = stor11
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor11
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1354 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1354] == mem[_1354]
                        idx = mem[_1354]
                        s = 100 * idx / 6
                        continue 
                    if idx:
                        require ext_code.size(stor4)
                        call stor4.deposit() with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1298 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1310 = mem[_1298]
                        require mem[_1298] == mem[_1298]
                        require stor19 + stor20
                        mem[mem[64] + 4] = stor15
                        mem[mem[64] + 36] = _1310 * stor19 / stor19 + stor20
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor15, _1310 * stor19 / stor19 + stor20
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1377 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1377] == bool(mem[_1377])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1426 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1437 = mem[_1426]
                        require mem[_1426] == mem[_1426]
                        mem[mem[64] + 4] = stor16
                        mem[mem[64] + 36] = _1437
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor16, _1437
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1474 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1474] == bool(mem[_1474])
                        mem[mem[64] + 4] = stor16
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1522 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1526 = mem[_1522]
                        require mem[_1522] == mem[_1522]
                        require mem[_1522]
                        _1542 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1542]
                        mem[_1542 + 32] = stor4
                        require 1 < mem[_1542]
                        mem[_1542 + 64] = stor8
                        mem[_1542 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_1542 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1542 + ceil32(return_data.size) + 100] = stor16
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16
                        mem[_1542 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1542 + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_1542 + (2 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[_1542 + (2 * ceil32(return_data.size)) + 100] = (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1526) + -ext_call.return_data[0] + 1
                        mem[_1542 + (2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                        mem[_1542 + (2 * ceil32(return_data.size)) + 164] = 160
                        mem[_1542 + (2 * ceil32(return_data.size)) + 260] = mem[_1542]
                        idx = 0
                        s = _1542 + 32
                        t = _1542 + (2 * ceil32(return_data.size)) + 292
                        while idx < mem[_1542]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1542 + (2 * ceil32(return_data.size)) + 196] = stor16
                        mem[_1542 + (2 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                        require ext_code.size(stor13)
                        call stor13.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1526) + -ext_call.return_data[0] + 1, ext_call.return_data[0], 160, stor16, block.timestamp + 600, mem[_1542 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_1542]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1542 + (2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1542 + (4 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _2277 = mem[_1542 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1526) + -ext_call.return_data[0] + 1) >> 32
                        require mem[_1542 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1526) + -ext_call.return_data[0] + 1) >> 32 <= test266151307()
                        require _1542 + (2 * ceil32(return_data.size)) + mem[_1542 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1526) + -ext_call.return_data[0] + 1) >> 32 + 127 < _1542 + (2 * ceil32(return_data.size)) + return_data.size + 96
                        _2288 = mem[_1542 + (2 * ceil32(return_data.size)) + mem[_1542 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1526) + -ext_call.return_data[0] + 1) >> 32 + 96]
                        require mem[_1542 + (2 * ceil32(return_data.size)) + mem[_1542 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1526) + -ext_call.return_data[0] + 1) >> 32 + 96] <= test266151307()
                        require _1542 + (4 * ceil32(return_data.size)) + (32 * mem[_1542 + (2 * ceil32(return_data.size)) + mem[_1542 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1526) + -ext_call.return_data[0] + 1) >> 32 + 96]) + 128 <= test266151307() and (32 * mem[_1542 + (2 * ceil32(return_data.size)) + mem[_1542 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1526) + -ext_call.return_data[0] + 1) >> 32 + 96]) + 32 >= 0
                        mem[64] = _1542 + (4 * ceil32(return_data.size)) + (32 * mem[_1542 + (2 * ceil32(return_data.size)) + mem[_1542 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1526) + -ext_call.return_data[0] + 1) >> 32 + 96]) + 128
                        mem[_1542 + (4 * ceil32(return_data.size)) + 96] = _2288
                        require _2277 + (32 * _2288) + 32 <= return_data.size
                        idx = 0
                        s = _1542 + (2 * ceil32(return_data.size)) + _2277 + 128
                        t = _1542 + (4 * ceil32(return_data.size)) + 128
                        while idx < _2288:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2709 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2709] == mem[_2709]
                        mem[mem[64] + 4] = stor15
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor15
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2761 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2772 = mem[_2761]
                        require mem[_2761] == mem[_2761]
                        require mem[_2761]
                        mem[mem[64] + 4] = stor15
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args stor15
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2809 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2817 = mem[_2809]
                        require mem[_2809] == mem[_2809]
                        mem[mem[64] + 4] = stor15
                        mem[mem[64] + 36] = (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2772) + -_2817 + 1
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor15, (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2772) + -_2817 + 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2864 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2864] == bool(mem[_2864])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2912 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2912] == mem[_2912]
                    else:
                        mem[mem[64] + 4] = stor11
                        mem[mem[64] + 36] = 2
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor11, 2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1294 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1294] == bool(mem[_1294])
                        require ext_code.size(stor4)
                        call stor4.deposit() with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1382 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1390 = mem[_1382]
                        require mem[_1382] == mem[_1382]
                        require stor19 + stor20
                        mem[mem[64] + 4] = stor15
                        mem[mem[64] + 36] = _1390 * stor19 / stor19 + stor20
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor15, _1390 * stor19 / stor19 + stor20
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1438 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1438] == bool(mem[_1438])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1486 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1493 = mem[_1486]
                        require mem[_1486] == mem[_1486]
                        mem[mem[64] + 4] = stor16
                        mem[mem[64] + 36] = _1493
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor16, _1493
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1534 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1534] == bool(mem[_1534])
                        mem[mem[64] + 4] = stor16
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1585 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1594 = mem[_1585]
                        require mem[_1585] == mem[_1585]
                        require mem[_1585]
                        _1622 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        require 0 < mem[_1622]
                        mem[_1622 + 32] = stor4
                        require 1 < mem[_1622]
                        mem[_1622 + 64] = stor8
                        mem[_1622 + 100] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[_1622 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        mem[_1622 + ceil32(return_data.size) + 100] = stor16
                        require ext_code.size(stor8)
                        staticcall stor8.0x70a08231 with:
                                gas gas_remaining wei
                               args stor16
                        mem[_1622 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _1622 + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_1622 + (2 * ceil32(return_data.size)) + 96] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[_1622 + (2 * ceil32(return_data.size)) + 100] = (uint256(stor23.field_0) * uint256(stor24.field_0) * stor17 / 10000 / _1594) + -ext_call.return_data[0] + 1
                        mem[_1622 + (2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                        mem[_1622 + (2 * ceil32(return_data.size)) + 164] = 160
                        mem[_1622 + (2 * ceil32(return_data.size)) + 260] = mem[_1622]
                        idx = 0
                        s = _1622 + 32
                        t = _1622 + (2 * ceil32(return_data.size)) + 292
                        while idx < mem[_1622]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1622 + (2 * ceil32(return_data.size)) + 196] = stor16
                        mem[_1622 + (2 * ceil32(return_data.size)) + 228] = block.timestamp + 600
                        require ext_code.size(stor13)
                        call stor13.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1622 + (2 * ceil32(return_data.size)) + (32 * mem[_1622]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2270 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2278 = mem[_2270]
                        require mem[_2270] <= test266151307()
                        require _2270 + mem[_2270] + 31 < _2270 + return_data.size
                        _2289 = mem[_2270 + mem[_2270]]
                        require mem[_2270 + mem[_2270]] <= test266151307()
                        require _2270 + ceil32(return_data.size) + (32 * mem[_2270 + mem[_2270]]) + 32 <= test266151307() and (32 * mem[_2270 + mem[_2270]]) + 32 >= 0
                        mem[64] = _2270 + ceil32(return_data.size) + (32 * mem[_2270 + mem[_2270]]) + 32
                        mem[_2270 + ceil32(return_data.size)] = _2289
                        require _2278 + (32 * _2289) + 32 <= return_data.size
                        idx = 0
                        s = _2270 + _2278 + 32
                        t = _2270 + ceil32(return_data.size) + 32
                        while idx < _2289:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2710 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2710] == mem[_2710]
                        mem[mem[64] + 4] = stor15
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args stor15
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2762 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2773 = mem[_2762]
                        require mem[_2762] == mem[_2762]
                        require mem[_2762]
                        mem[mem[64] + 4] = stor15
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args stor15
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2810 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2818 = mem[_2810]
                        require mem[_2810] == mem[_2810]
                        mem[mem[64] + 4] = stor15
                        mem[mem[64] + 36] = (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2773) + -_2818 + 1
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor15, (uint256(stor21.field_0) * uint256(stor22.field_0) * stor17 / 10000 / _2773) + -_2818 + 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2865 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2865] == bool(mem[_2865])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2913 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2913] == mem[_2913]
}



}
