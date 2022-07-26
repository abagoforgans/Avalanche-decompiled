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
            staticcall stor1.getPool() with:
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
                staticcall stor1.getPool() with:
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
                staticcall stor1.getPool() with:
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
            if not uint8(idx) - 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = arg2
            continue 
        if s and uint8(arg3) > -1 / s:
            revert with 'NH{q', 17
        staticcall stor1.getPool() with:
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
            staticcall stor1.getPool() with:
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
            staticcall stor1.getPool() with:
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
        if not uint8(idx) - 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        s = s * uint8(arg3) / 100
        continue 
}



}
