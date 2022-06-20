contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function transferOut(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > eth.balance(this.address):
        revert with 0, 'balance is not enough'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f4196bfe(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_20308645(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    idx = 0
    s = 0
    while uint8(idx) < uint8(arg4):
        if not uint8(idx):
            staticcall stor1.getLendingPool() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _57 = mem[_56]
            require mem[_56] == mem[_56 + 12 len 20]
            staticcall mem[_56 + 12 len 20].getUserAccountData(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            require mem[_64] == mem[_64]
            require mem[_64 + 32] == mem[_64 + 32]
            _71 = mem[_64 + 64]
            require mem[_64 + 64] == mem[_64 + 64]
            require mem[_64 + 96] == mem[_64 + 96]
            require mem[_64 + 128] == mem[_64 + 128]
            require mem[_64 + 160] == mem[_64 + 160]
            staticcall stor1.getPriceOracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _82 = mem[_81]
            require mem[_81] == mem[_81 + 12 len 20]
            mem[mem[64] + 4] = address(arg1)
            staticcall address(_82).getAssetPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _91 = mem[_90]
            require mem[_90] == mem[_90]
            if not mem[_90]:
                revert with 'NH{q', 18
            if _71 / mem[_90] and 99 > -1 / _71 / mem[_90]:
                revert with 'NH{q', 17
            if 99 * _71 / mem[_90] and 10^16 > -1 / 99 * _71 / mem[_90]:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = address(arg1)
            if 275 * 10^12 * 3600 * _71 / mem[_90] < arg2:
                mem[mem[64] + 36] = 275 * 10^12 * 3600 * _71 / _91
                mem[mem[64] + 68] = 2
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = msg.sender
                require ext_code.size(address(_57))
                call address(_57).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                     gas gas_remaining wei
                    args address(arg1), 275 * 10^12 * 3600 * _71 / _91, 2, 0, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall stor1.getLendingPool() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                _106 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _108 = mem[_106]
                require mem[_106] == mem[_106 + 12 len 20]
                mem[mem[64] + 4] = this.address
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _124 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _126 = mem[_124]
                require mem[_124] == mem[_124]
                if mem[_124] > 0:
                    mem[mem[64] + 4] = address(_108)
                    mem[mem[64] + 36] = _126
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_108), _126
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _140 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_140] == bool(mem[_140])
                    mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _126
                    mem[mem[64] + 68] = msg.sender
                    mem[mem[64] + 100] = 0
                    require ext_code.size(address(_108))
                    call address(_108).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args address(arg1), _126, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64] + 36] = arg2
                mem[mem[64] + 68] = 2
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = msg.sender
                require ext_code.size(address(_57))
                call address(_57).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                     gas gas_remaining wei
                    args address(arg1), arg2, 2, 0, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall stor1.getLendingPool() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                _107 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _109 = mem[_107]
                require mem[_107] == mem[_107 + 12 len 20]
                mem[mem[64] + 4] = this.address
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _127 = mem[_125]
                require mem[_125] == mem[_125]
                if mem[_125] > 0:
                    mem[mem[64] + 4] = address(_109)
                    mem[mem[64] + 36] = _127
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_109), _127
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _141 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_141] == bool(mem[_141])
                    mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _127
                    mem[mem[64] + 68] = msg.sender
                    mem[mem[64] + 100] = 0
                    require ext_code.size(address(_109))
                    call address(_109).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args address(arg1), _127, msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = arg2
            continue 
        if s and uint8(arg3) > -1 / s:
            revert with 'NH{q', 17
        staticcall stor1.getLendingPool() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _62 = mem[_61]
        require mem[_61] == mem[_61 + 12 len 20]
        staticcall mem[_61 + 12 len 20].getUserAccountData(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        require mem[_69] == mem[_69]
        require mem[_69 + 32] == mem[_69 + 32]
        _74 = mem[_69 + 64]
        require mem[_69 + 64] == mem[_69 + 64]
        require mem[_69 + 96] == mem[_69 + 96]
        require mem[_69 + 128] == mem[_69 + 128]
        require mem[_69 + 160] == mem[_69 + 160]
        staticcall stor1.getPriceOracle() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _88 = mem[_87]
        require mem[_87] == mem[_87 + 12 len 20]
        mem[mem[64] + 4] = address(arg1)
        staticcall address(_88).getAssetPrice(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _94 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _95 = mem[_94]
        require mem[_94] == mem[_94]
        if not mem[_94]:
            revert with 'NH{q', 18
        if _74 / mem[_94] and 99 > -1 / _74 / mem[_94]:
            revert with 'NH{q', 17
        if 99 * _74 / mem[_94] and 10^16 > -1 / 99 * _74 / mem[_94]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = address(arg1)
        if 275 * 10^12 * 3600 * _74 / mem[_94] < s * uint8(arg3) / 100:
            mem[mem[64] + 36] = 275 * 10^12 * 3600 * _74 / _95
            mem[mem[64] + 68] = 2
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = msg.sender
            require ext_code.size(address(_62))
            call address(_62).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                 gas gas_remaining wei
                args address(arg1), 275 * 10^12 * 3600 * _74 / _95, 2, 0, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall stor1.getLendingPool() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            _118 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _120 = mem[_118]
            require mem[_118] == mem[_118 + 12 len 20]
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _134 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _136 = mem[_134]
            require mem[_134] == mem[_134]
            if mem[_134] > 0:
                mem[mem[64] + 4] = address(_120)
                mem[mem[64] + 36] = _136
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_120), _136
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _150 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_150] == bool(mem[_150])
                mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = _136
                mem[mem[64] + 68] = msg.sender
                mem[mem[64] + 100] = 0
                require ext_code.size(address(_120))
                call address(_120).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                     gas gas_remaining wei
                    args address(arg1), _136, msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[mem[64] + 36] = s * uint8(arg3) / 100
            mem[mem[64] + 68] = 2
            mem[mem[64] + 100] = 0
            mem[mem[64] + 132] = msg.sender
            require ext_code.size(address(_62))
            call address(_62).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                 gas gas_remaining wei
                args address(arg1), s * uint8(arg3) / 100, 2, 0, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall stor1.getLendingPool() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            _119 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _121 = mem[_119]
            require mem[_119] == mem[_119 + 12 len 20]
            mem[mem[64] + 4] = this.address
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _135 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _137 = mem[_135]
            require mem[_135] == mem[_135]
            if mem[_135] > 0:
                mem[mem[64] + 4] = address(_121)
                mem[mem[64] + 36] = _137
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(_121), _137
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _151 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_151] == bool(mem[_151])
                mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = _137
                mem[mem[64] + 68] = msg.sender
                mem[mem[64] + 100] = 0
                require ext_code.size(address(_121))
                call address(_121).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                     gas gas_remaining wei
                    args address(arg1), _137, msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        s = s * uint8(arg3) / 100
        continue 
}

function sub_61d993cb(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    idx = 0
    s = 0
    while uint8(idx) < uint8(arg4):
        if not uint8(idx):
            staticcall stor1.getLendingPool() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _49 = mem[_47]
            require mem[_47] == mem[_47 + 12 len 20]
            staticcall mem[_47 + 12 len 20].getUserAccountData(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _61 = mem[_58]
            require mem[_58] == mem[_58]
            _63 = mem[_58 + 32]
            require mem[_58 + 32] == mem[_58 + 32]
            require mem[_58 + 64] == mem[_58 + 64]
            _71 = mem[_58 + 96]
            require mem[_58 + 96] == mem[_58 + 96]
            require mem[_58 + 128] == mem[_58 + 128]
            require mem[_58 + 160] == mem[_58 + 160]
            if mem[_58 + 32]:
                if mem[_58] / 10000 and mem[_58 + 96] > -1 / mem[_58] / 10000:
                    revert with 'NH{q', 17
                if mem[_58] / 10000 * mem[_58 + 96] < mem[_58 + 32]:
                    revert with 'NH{q', 17
                staticcall stor1.getPriceOracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _84 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _85 = mem[_84]
                require mem[_84] == mem[_84 + 12 len 20]
                mem[mem[64] + 4] = address(arg1)
                staticcall address(_85).getAssetPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _91 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _93 = mem[_91]
                require mem[_91] == mem[_91]
                if not mem[_91]:
                    revert with 'NH{q', 18
                if (_61 / 10000 * _71) - _63 / mem[_91] and 99 > -1 / (_61 / 10000 * _71) - _63 / mem[_91]:
                    revert with 'NH{q', 17
                if 99 * (_61 / 10000 * _71) - _63 / mem[_91] and 10^16 > -1 / 99 * (_61 / 10000 * _71) - _63 / mem[_91]:
                    revert with 'NH{q', 17
                staticcall address(_49).getReserveData(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64] len 384] = ext_call.return_data[0 len 384]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 275 * 10^12 * 3600 * (_61 / 10000 * _71) - _63 / mem[_91] < arg2:
                    _102 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 384
                    _104 = mem[64]
                    if mem[64] + 384 > test266151307() or mem[64] + 384 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 384
                    require return_data.size >= 32
                    _108 = mem[64]
                    if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 32
                    require mem[_102] == mem[_102]
                    mem[_108] = mem[_102]
                    mem[_104] = _108
                    require mem[_102 + 32] == mem[_102 + 48 len 16]
                    mem[_104 + 32] = mem[_102 + 32]
                    require mem[_102 + 64] == mem[_102 + 80 len 16]
                    mem[_104 + 64] = mem[_102 + 64]
                    require mem[_102 + 96] == mem[_102 + 112 len 16]
                    mem[_104 + 96] = mem[_102 + 96]
                    require mem[_102 + 128] == mem[_102 + 144 len 16]
                    mem[_104 + 128] = mem[_102 + 128]
                    require mem[_102 + 160] == mem[_102 + 176 len 16]
                    mem[_104 + 160] = mem[_102 + 160]
                    require mem[_102 + 192] == mem[_102 + 219 len 5]
                    mem[_104 + 192] = mem[_102 + 192]
                    require mem[_102 + 224] == mem[_102 + 236 len 20]
                    mem[_104 + 224] = mem[_102 + 224]
                    require mem[_102 + 256] == mem[_102 + 268 len 20]
                    mem[_104 + 256] = mem[_102 + 256]
                    require mem[_102 + 288] == mem[_102 + 300 len 20]
                    mem[_104 + 288] = mem[_102 + 288]
                    require mem[_102 + 320] == mem[_102 + 332 len 20]
                    mem[_104 + 320] = mem[_102 + 320]
                    require mem[_102 + 352] == mem[_102 + 383 len 1]
                    mem[_104 + 352] = mem[_102 + 352]
                    _162 = mem[_104 + 224]
                    mem[mem[64] + 4] = msg.sender
                    staticcall address(_162).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _170 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _172 = mem[_170]
                    require mem[_170] == mem[_170]
                    if mem[_170] >= 275 * 10^12 * 3600 * (_61 / 10000 * _71) - _63 / _93:
                        _176 = mem[_104 + 224]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = 275 * 10^12 * 3600 * (_61 / 10000 * _71) - _63 / _93
                        call address(_176).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), 275 * 10^12 * 3600 * (_61 / 10000 * _71) - _63 / _93
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _196 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_196] == bool(mem[_196])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = 275 * 10^12 * 3600 * (_61 / 10000 * _71) - _63 / _93
                        mem[mem[64] + 68] = this.address
                        call address(_49).withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args address(arg1), 275 * 10^12 * 3600 * (_61 / 10000 * _71) - _63 / _93, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _232 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_232] == mem[_232]
                        mem[mem[64] + 4] = address(_49)
                        mem[mem[64] + 36] = 275 * 10^12 * 3600 * (_61 / 10000 * _71) - _63 / _93
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(_49), 275 * 10^12 * 3600 * (_61 / 10000 * _71) - _63 / _93
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _260 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_260] == bool(mem[_260])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = 275 * 10^12 * 3600 * (_61 / 10000 * _71) - _63 / _93
                        mem[mem[64] + 68] = 2
                        mem[mem[64] + 100] = msg.sender
                        call address(_49).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(arg1), 275 * 10^12 * 3600 * (_61 / 10000 * _71) - _63 / _93, 2, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _300 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_300] == mem[_300]
                    else:
                        _184 = mem[_104 + 224]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _172
                        call address(_184).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _172
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _200 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_200] == bool(mem[_200])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _172
                        mem[mem[64] + 68] = this.address
                        call address(_49).withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args address(arg1), _172, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _236 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_236] == mem[_236]
                        mem[mem[64] + 4] = address(_49)
                        mem[mem[64] + 36] = _172
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(_49), _172
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _266 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_266] == bool(mem[_266])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _172
                        mem[mem[64] + 68] = 2
                        mem[mem[64] + 100] = msg.sender
                        call address(_49).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(arg1), _172, 2, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _304 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_304] == mem[_304]
                else:
                    _103 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 384
                    _105 = mem[64]
                    if mem[64] + 384 > test266151307() or mem[64] + 384 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 384
                    require return_data.size >= 32
                    _109 = mem[64]
                    if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                        revert with 'NH{q', 65
                    mem[64] = mem[64] + 32
                    require mem[_103] == mem[_103]
                    mem[_109] = mem[_103]
                    mem[_105] = _109
                    require mem[_103 + 32] == mem[_103 + 48 len 16]
                    mem[_105 + 32] = mem[_103 + 32]
                    require mem[_103 + 64] == mem[_103 + 80 len 16]
                    mem[_105 + 64] = mem[_103 + 64]
                    require mem[_103 + 96] == mem[_103 + 112 len 16]
                    mem[_105 + 96] = mem[_103 + 96]
                    require mem[_103 + 128] == mem[_103 + 144 len 16]
                    mem[_105 + 128] = mem[_103 + 128]
                    require mem[_103 + 160] == mem[_103 + 176 len 16]
                    mem[_105 + 160] = mem[_103 + 160]
                    require mem[_103 + 192] == mem[_103 + 219 len 5]
                    mem[_105 + 192] = mem[_103 + 192]
                    require mem[_103 + 224] == mem[_103 + 236 len 20]
                    mem[_105 + 224] = mem[_103 + 224]
                    require mem[_103 + 256] == mem[_103 + 268 len 20]
                    mem[_105 + 256] = mem[_103 + 256]
                    require mem[_103 + 288] == mem[_103 + 300 len 20]
                    mem[_105 + 288] = mem[_103 + 288]
                    require mem[_103 + 320] == mem[_103 + 332 len 20]
                    mem[_105 + 320] = mem[_103 + 320]
                    require mem[_103 + 352] == mem[_103 + 383 len 1]
                    mem[_105 + 352] = mem[_103 + 352]
                    _164 = mem[_105 + 224]
                    mem[mem[64] + 4] = msg.sender
                    staticcall address(_164).0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _171 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _173 = mem[_171]
                    require mem[_171] == mem[_171]
                    if mem[_171] >= arg2:
                        _178 = mem[_105 + 224]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = arg2
                        call address(_178).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _198 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_198] == bool(mem[_198])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = this.address
                        call address(_49).withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args address(arg1), arg2, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _234 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_234] == mem[_234]
                        mem[mem[64] + 4] = address(_49)
                        mem[mem[64] + 36] = arg2
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(_49), arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _262 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_262] == bool(mem[_262])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = 2
                        mem[mem[64] + 100] = msg.sender
                        call address(_49).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(arg1), arg2, 2, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _302 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_302] == mem[_302]
                    else:
                        _186 = mem[_105 + 224]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = _173
                        call address(_186).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), _173
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _201 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_201] == bool(mem[_201])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _173
                        mem[mem[64] + 68] = this.address
                        call address(_49).withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args address(arg1), _173, this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _237 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_237] == mem[_237]
                        mem[mem[64] + 4] = address(_49)
                        mem[mem[64] + 36] = _173
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(_49), _173
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _267 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_267] == bool(mem[_267])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _173
                        mem[mem[64] + 68] = 2
                        mem[mem[64] + 100] = msg.sender
                        call address(_49).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                             gas gas_remaining wei
                            args address(arg1), _173, 2, msg.sender
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _305 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_305] == mem[_305]
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = arg2
            continue 
        if 200 < uint8(arg3):
            revert with 'NH{q', 17
        if s and uint8(-uint8(arg3) + 200) > -1 / s:
            revert with 'NH{q', 17
        staticcall stor1.getLendingPool() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _56 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _60 = mem[_56]
        require mem[_56] == mem[_56 + 12 len 20]
        staticcall mem[_56 + 12 len 20].getUserAccountData(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _68 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _70 = mem[_68]
        require mem[_68] == mem[_68]
        _73 = mem[_68 + 32]
        require mem[_68 + 32] == mem[_68 + 32]
        require mem[_68 + 64] == mem[_68 + 64]
        _78 = mem[_68 + 96]
        require mem[_68 + 96] == mem[_68 + 96]
        require mem[_68 + 128] == mem[_68 + 128]
        require mem[_68 + 160] == mem[_68 + 160]
        if mem[_68 + 32]:
            if mem[_68] / 10000 and mem[_68 + 96] > -1 / mem[_68] / 10000:
                revert with 'NH{q', 17
            if mem[_68] / 10000 * mem[_68 + 96] < mem[_68 + 32]:
                revert with 'NH{q', 17
            staticcall stor1.getPriceOracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _89 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _92 = mem[_89]
            require mem[_89] == mem[_89 + 12 len 20]
            mem[mem[64] + 4] = address(arg1)
            staticcall address(_92).getAssetPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _97 = mem[_96]
            require mem[_96] == mem[_96]
            if not mem[_96]:
                revert with 'NH{q', 18
            if (_70 / 10000 * _78) - _73 / mem[_96] and 99 > -1 / (_70 / 10000 * _78) - _73 / mem[_96]:
                revert with 'NH{q', 17
            if 99 * (_70 / 10000 * _78) - _73 / mem[_96] and 10^16 > -1 / 99 * (_70 / 10000 * _78) - _73 / mem[_96]:
                revert with 'NH{q', 17
            staticcall address(_60).getReserveData(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64] len 384] = ext_call.return_data[0 len 384]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 275 * 10^12 * 3600 * (_70 / 10000 * _78) - _73 / mem[_96] < s * uint8(-uint8(arg3) + 200) / 100:
                _112 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _116 = mem[64]
                if mem[64] + 384 > test266151307() or mem[64] + 384 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _120 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                require mem[_112] == mem[_112]
                mem[_120] = mem[_112]
                mem[_116] = _120
                require mem[_112 + 32] == mem[_112 + 48 len 16]
                mem[_116 + 32] = mem[_112 + 32]
                require mem[_112 + 64] == mem[_112 + 80 len 16]
                mem[_116 + 64] = mem[_112 + 64]
                require mem[_112 + 96] == mem[_112 + 112 len 16]
                mem[_116 + 96] = mem[_112 + 96]
                require mem[_112 + 128] == mem[_112 + 144 len 16]
                mem[_116 + 128] = mem[_112 + 128]
                require mem[_112 + 160] == mem[_112 + 176 len 16]
                mem[_116 + 160] = mem[_112 + 160]
                require mem[_112 + 192] == mem[_112 + 219 len 5]
                mem[_116 + 192] = mem[_112 + 192]
                require mem[_112 + 224] == mem[_112 + 236 len 20]
                mem[_116 + 224] = mem[_112 + 224]
                require mem[_112 + 256] == mem[_112 + 268 len 20]
                mem[_116 + 256] = mem[_112 + 256]
                require mem[_112 + 288] == mem[_112 + 300 len 20]
                mem[_116 + 288] = mem[_112 + 288]
                require mem[_112 + 320] == mem[_112 + 332 len 20]
                mem[_116 + 320] = mem[_112 + 320]
                require mem[_112 + 352] == mem[_112 + 383 len 1]
                mem[_116 + 352] = mem[_112 + 352]
                _180 = mem[_116 + 224]
                mem[mem[64] + 4] = msg.sender
                staticcall address(_180).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _190 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _192 = mem[_190]
                require mem[_190] == mem[_190]
                if mem[_190] >= 275 * 10^12 * 3600 * (_70 / 10000 * _78) - _73 / _97:
                    _202 = mem[_116 + 224]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = 275 * 10^12 * 3600 * (_70 / 10000 * _78) - _73 / _97
                    call address(_202).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), 275 * 10^12 * 3600 * (_70 / 10000 * _78) - _73 / _97
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _220 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_220] == bool(mem[_220])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 275 * 10^12 * 3600 * (_70 / 10000 * _78) - _73 / _97
                    mem[mem[64] + 68] = this.address
                    call address(_60).withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(arg1), 275 * 10^12 * 3600 * (_70 / 10000 * _78) - _73 / _97, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _252 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_252] == mem[_252]
                    mem[mem[64] + 4] = address(_60)
                    mem[mem[64] + 36] = 275 * 10^12 * 3600 * (_70 / 10000 * _78) - _73 / _97
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_60), 275 * 10^12 * 3600 * (_70 / 10000 * _78) - _73 / _97
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _284 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_284] == bool(mem[_284])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 275 * 10^12 * 3600 * (_70 / 10000 * _78) - _73 / _97
                    mem[mem[64] + 68] = 2
                    mem[mem[64] + 100] = msg.sender
                    call address(_60).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args address(arg1), 275 * 10^12 * 3600 * (_70 / 10000 * _78) - _73 / _97, 2, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _312 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_312] == mem[_312]
                else:
                    _206 = mem[_116 + 224]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _192
                    call address(_206).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _192
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _224 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_224] == bool(mem[_224])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _192
                    mem[mem[64] + 68] = this.address
                    call address(_60).withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(arg1), _192, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _256 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_256] == mem[_256]
                    mem[mem[64] + 4] = address(_60)
                    mem[mem[64] + 36] = _192
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_60), _192
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _288 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_288] == bool(mem[_288])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _192
                    mem[mem[64] + 68] = 2
                    mem[mem[64] + 100] = msg.sender
                    call address(_60).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args address(arg1), _192, 2, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _316 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_316] == mem[_316]
            else:
                _113 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 384
                _117 = mem[64]
                if mem[64] + 384 > test266151307() or mem[64] + 384 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 384
                require return_data.size >= 32
                _121 = mem[64]
                if mem[64] + 32 > test266151307() or mem[64] + 32 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 32
                require mem[_113] == mem[_113]
                mem[_121] = mem[_113]
                mem[_117] = _121
                require mem[_113 + 32] == mem[_113 + 48 len 16]
                mem[_117 + 32] = mem[_113 + 32]
                require mem[_113 + 64] == mem[_113 + 80 len 16]
                mem[_117 + 64] = mem[_113 + 64]
                require mem[_113 + 96] == mem[_113 + 112 len 16]
                mem[_117 + 96] = mem[_113 + 96]
                require mem[_113 + 128] == mem[_113 + 144 len 16]
                mem[_117 + 128] = mem[_113 + 128]
                require mem[_113 + 160] == mem[_113 + 176 len 16]
                mem[_117 + 160] = mem[_113 + 160]
                require mem[_113 + 192] == mem[_113 + 219 len 5]
                mem[_117 + 192] = mem[_113 + 192]
                require mem[_113 + 224] == mem[_113 + 236 len 20]
                mem[_117 + 224] = mem[_113 + 224]
                require mem[_113 + 256] == mem[_113 + 268 len 20]
                mem[_117 + 256] = mem[_113 + 256]
                require mem[_113 + 288] == mem[_113 + 300 len 20]
                mem[_117 + 288] = mem[_113 + 288]
                require mem[_113 + 320] == mem[_113 + 332 len 20]
                mem[_117 + 320] = mem[_113 + 320]
                require mem[_113 + 352] == mem[_113 + 383 len 1]
                mem[_117 + 352] = mem[_113 + 352]
                _182 = mem[_117 + 224]
                mem[mem[64] + 4] = msg.sender
                staticcall address(_182).0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _191 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _193 = mem[_191]
                require mem[_191] == mem[_191]
                if mem[_191] >= s * uint8(-uint8(arg3) + 200) / 100:
                    _204 = mem[_117 + 224]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = s * uint8(-uint8(arg3) + 200) / 100
                    call address(_204).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), s * uint8(-uint8(arg3) + 200) / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _222 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_222] == bool(mem[_222])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = s * uint8(-uint8(arg3) + 200) / 100
                    mem[mem[64] + 68] = this.address
                    call address(_60).withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(arg1), s * uint8(-uint8(arg3) + 200) / 100, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _254 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_254] == mem[_254]
                    mem[mem[64] + 4] = address(_60)
                    mem[mem[64] + 36] = s * uint8(-uint8(arg3) + 200) / 100
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_60), s * uint8(-uint8(arg3) + 200) / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _286 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_286] == bool(mem[_286])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = s * uint8(-uint8(arg3) + 200) / 100
                    mem[mem[64] + 68] = 2
                    mem[mem[64] + 100] = msg.sender
                    call address(_60).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args address(arg1), s * uint8(-uint8(arg3) + 200) / 100, 2, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _314 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_314] == mem[_314]
                else:
                    _208 = mem[_117 + 224]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = _193
                    call address(_208).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), _193
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _225 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_225] == bool(mem[_225])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _193
                    mem[mem[64] + 68] = this.address
                    call address(_60).withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args address(arg1), _193, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _257 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_257] == mem[_257]
                    mem[mem[64] + 4] = address(_60)
                    mem[mem[64] + 36] = _193
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(_60), _193
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _289 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_289] == bool(mem[_289])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _193
                    mem[mem[64] + 68] = 2
                    mem[mem[64] + 100] = msg.sender
                    call address(_60).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                         gas gas_remaining wei
                        args address(arg1), _193, 2, msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_317] == mem[_317]
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        s = s * uint8(-uint8(arg3) + 200) / 100
        continue 
    staticcall stor1.getLendingPool() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _44 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _48 = mem[_44]
    require mem[_44] == mem[_44 + 12 len 20]
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _53 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _59 = mem[_53]
    require mem[_53] == mem[_53]
    if mem[_53] > 0:
        mem[mem[64] + 4] = address(_48)
        mem[mem[64] + 36] = _59
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_48), _59
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_69] == bool(mem[_69])
        require ext_code.size(address(_48))
        call address(_48).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args address(arg1), _59, msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
