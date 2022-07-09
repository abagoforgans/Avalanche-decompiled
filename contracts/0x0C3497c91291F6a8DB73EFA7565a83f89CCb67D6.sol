contract main {




// =====================  Runtime code  =====================


const VERSION = '', 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint256 stor1;
address controllerAddress;

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function governor() payable {
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.governor() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not-governor'
    if not arg1:
        revert with 0, 'new-controller-address-is-zero'
    controllerAddress = arg1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0, 'controller-address-is-zero'
    if uint8(stor0.field_8):
        stor1 = 1
        controllerAddress = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor1 = 1
            controllerAddress = arg1
        else:
            uint16(stor0.field_0) = 257
            stor1 = 1
            uint8(stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                controllerAddress = arg1
            else:
                uint16(stor0.field_0) = 257
                uint8(stor0.field_8) = 0
                controllerAddress = arg1
                uint8(stor0.field_8) = 0
}

function pull(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = msg.sender
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x3af5be47 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'not-deposit-token'
    if arg2 <= 0:
        revert with 0, 'amount-is-zero'
    require ext_code.size(msg.sender)
    staticcall msg.sender.underlying() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 132] = arg1
    mem[(2 * ceil32(return_data.size)) + 164] = arg2
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor1 = 1
}

function migrateTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if controllerAddress != msg.sender:
        revert with 0, 'not-controller'
    mem[96] = 0xfb01600d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xfb01600d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96] + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require (32 * _7) + _6 + 32 <= return_data.size
    s = ceil32(return_data.size) + 128
    idx = _6 + 128
    while idx < (32 * _7) + _6 + 128:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    idx = 0
    while idx < _7:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _1530 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_1530))
        staticcall address(_1530).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1535 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1538 = mem[_1535]
        require ext_code.size(address(_1530))
        staticcall address(_1530).underlying() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1541 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1544 = mem[_1541]
        require mem[_1541] == mem[_1541 + 12 len 20]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_1544))
        staticcall address(_1544).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1552 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1554 = mem[_1552]
        if not _1538:
            if mem[_1552]:
                require ext_code.size(address(_1530))
                staticcall address(_1530).underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1565 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1570 = mem[_1565]
                require mem[_1565] == mem[_1565 + 12 len 20]
                _1580 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = _1554
                _1581 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1581 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1581 + 36 len 28]
                mem[64] = _1580 + 164
                mem[_1580 + 100] = 32
                mem[_1580 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_1570)):
                    revert with 0, 'Address: call to non-contract'
                _1599 = mem[_1581]
                s = 0
                while s < _1599:
                    mem[s + _1580 + 164] = mem[s + _1581 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1599) > _1599:
                    mem[_1580 + _1599 + 164] = 0
                call address(_1570).mem[_1580 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1580 + 168 len _1599 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1580 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1580 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1580 + 232] = mem[idx + _1580 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1580 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _1580 + ceil32(return_data.size) + 165
                    mem[_1580 + 164] = return_data.size
                    mem[_1580 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1580 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1580 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1580 + ceil32(return_data.size) + 233] = mem[idx + _1580 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1580 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_1580 + 196] == bool(mem[_1580 + 196])
                        if not mem[_1580 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1561 = mem[64]
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = _1538
        _1562 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_1562 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_1562 + 36 len 28]
        mem[64] = _1561 + 164
        mem[_1561 + 100] = 32
        mem[_1561 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_1530)):
            revert with 0, 'Address: call to non-contract'
        _1577 = mem[_1562]
        s = 0
        while s < _1577:
            mem[s + _1561 + 164] = mem[s + _1562 + 32]
            s = s + 32
            continue 
        if ceil32(_1577) > _1577:
            mem[_1561 + _1577 + 164] = 0
        call address(_1530).mem[_1561 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_1561 + 168 len _1577 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_1561 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1561 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _1561 + 232] = mem[idx + _1561 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_1561 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if _1554:
                require ext_code.size(address(_1530))
                staticcall address(_1530).underlying() with:
                        gas gas_remaining wei
                mem[_1561 + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_1561 + ceil32(return_data.size) + 200] = arg1
                mem[_1561 + ceil32(return_data.size) + 232] = _1554
                mem[_1561 + ceil32(return_data.size) + 164] = 68
                mem[_1561 + ceil32(return_data.size) + 196] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(arg1) << 64
                mem[64] = _1561 + ceil32(return_data.size) + 328
                mem[_1561 + ceil32(return_data.size) + 264] = 32
                mem[_1561 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                s = 0
                while s < 68:
                    mem[s + _1561 + ceil32(return_data.size) + 328] = mem[s + _1561 + ceil32(return_data.size) + 196]
                    s = s + 32
                    continue 
                mem[_1561 + ceil32(return_data.size) + 396] = 0
                call address(ext_call.return_data[0]).mem[_1561 + ceil32(return_data.size) + 328 len 4] with:
                     gas gas_remaining wei
                    args mem[_1561 + ceil32(return_data.size) + 332 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1561 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1561 + ceil32(return_data.size) + 332] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1561 + ceil32(return_data.size) + 396] = mem[idx + _1561 + ceil32(return_data.size) + 296]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1561 + ceil32(return_data.size) + 396]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _1561 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                    mem[_1561 + ceil32(return_data.size) + 328] = return_data.size
                    mem[_1561 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1561 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _1561 + ceil32(return_data.size) + 296]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_1561 + ceil32(return_data.size) + 360] == bool(mem[_1561 + ceil32(return_data.size) + 360])
                        if not mem[_1561 + ceil32(return_data.size) + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[64] = _1561 + ceil32(return_data.size) + 165
        mem[_1561 + 164] = return_data.size
        mem[_1561 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1561 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1561 + ceil32(return_data.size) + 169] = 32
            idx = 0
            while idx < 32:
                mem[idx + _1561 + ceil32(return_data.size) + 233] = mem[idx + _1561 + 132]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_1561 + ceil32(return_data.size) + 233]
        if return_data.size:
            require return_data.size >= 32
            require mem[_1561 + 196] == bool(mem[_1561 + 196])
            if not mem[_1561 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if not _1554:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ext_code.size(address(_1530))
        staticcall address(_1530).underlying() with:
                gas gas_remaining wei
        mem[_1561 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = arg1
        mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = _1554
        mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
        mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(arg1) << 64
        mem[64] = _1561 + ceil32(return_data.size) + ceil32(return_data.size) + 329
        mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
        mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        s = 0
        while s < 68:
            mem[s + _1561 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _1561 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
            s = s + 32
            continue 
        mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
        call address(ext_call.return_data[0]).mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
             gas gas_remaining wei
            args mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _1561 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _1561 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[64] = _1561 + (4 * ceil32(return_data.size)) + 330
        mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
        mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1561 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1561 + (4 * ceil32(return_data.size)) + 334] = 32
            idx = 0
            while idx < 32:
                mem[idx + _1561 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _1561 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_1561 + (4 * ceil32(return_data.size)) + 398]
        if not return_data.size:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require return_data.size >= 32
        require mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
        if mem[_1561 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_1561 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_1561 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_1561 + (4 * ceil32(return_data.size)) + 366] = 42
        mem[_1561 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
        mem[_1561 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from _1561 + (4 * ceil32(return_data.size)) + 330
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[mem[64]] = 0x681390e600000000000000000000000000000000000000000000000000000000
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x681390e6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1532 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1534 = mem[_1532]
    require mem[_1532] <= test266151307()
    require _1532 + mem[_1532] + 31 < _1532 + return_data.size
    _1536 = mem[_1532 + mem[_1532]]
    if mem[_1532 + mem[_1532]] > test266151307():
        revert with 0, 65
    if _1532 + ceil32(return_data.size) + ceil32(32 * mem[_1532 + mem[_1532]]) + 1 > test266151307() or ceil32(32 * mem[_1532 + mem[_1532]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _1532 + ceil32(return_data.size) + ceil32(32 * mem[_1532 + mem[_1532]]) + 1
    mem[_1532 + ceil32(return_data.size)] = _1536
    require (32 * _1536) + _1534 + 32 <= return_data.size
    s = _1532 + ceil32(return_data.size) + 32
    idx = _1532 + _1534 + 32
    while idx < (32 * _1536) + _1532 + _1534 + 32:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    idx = 0
    while idx < _1536:
        if idx >= mem[_1532 + ceil32(return_data.size)]:
            revert with 0, 50
        _3014 = mem[(32 * idx) + _1532 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_3014))
        staticcall address(_3014).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3057 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3066 = mem[_3057]
        if mem[_3057]:
            _3179 = mem[64]
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = _3066
            _3180 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_3180 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3180 + 36 len 28]
            mem[64] = _3179 + 164
            mem[_3179 + 100] = 32
            mem[_3179 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_3014)):
                revert with 0, 'Address: call to non-contract'
            _3331 = mem[_3180]
            s = 0
            while s < _3331:
                mem[s + _3179 + 164] = mem[s + _3180 + 32]
                s = s + 32
                continue 
            if ceil32(_3331) > _3331:
                mem[_3179 + _3331 + 164] = 0
            call address(_3014).mem[_3179 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_3179 + 168 len _3331 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_3179 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3179 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _3179 + 232] = mem[idx + _3179 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_3179 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _3179 + ceil32(return_data.size) + 165
                mem[_3179 + 164] = return_data.size
                mem[_3179 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3179 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3179 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _3179 + ceil32(return_data.size) + 233] = mem[idx + _3179 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_3179 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_3179 + 196] == bool(mem[_3179 + 196])
                    if not mem[_3179 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
