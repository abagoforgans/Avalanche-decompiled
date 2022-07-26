contract main {




// =====================  Runtime code  =====================


#
#  - sub_153e2422(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
mapping of address sub_809f3bc4;
mapping of uint8 stor102;
address sub_7fd80b10Address;
address timeLockAddress;

function sub_7fd80b10(?) payable {
    return sub_7fd80b10Address
}

function sub_809f3bc4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_809f3bc4[arg1]
}

function owner() payable {
    return owner
}

function timeLock() payable {
    return timeLockAddress
}

function sub_ec656ad9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor102[arg1])
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

function sub_df606ee7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if timeLockAddress != msg.sender:
        revert with 0, 'Caller is not timelock.'
    stor102[address(arg1)] = uint8(bool(arg2))
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

function sub_e84dc3d3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if address(arg1) != msg.sender:
        revert with 0, 'Owner check failed.'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(arg1):
        revert with 0, 'Owner check failed.'
    sub_809f3bc4[address(arg2)] = address(arg3)
}

function sub_f897d698(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not sub_809f3bc4[address(arg2)]:
        require ext_code.size(sub_7fd80b10Address)
        staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                gas gas_remaining wei
               args address(arg2), address(arg1), arg3
    else:
        require ext_code.size(sub_809f3bc4[address(arg2)])
        staticcall sub_809f3bc4[address(arg2)].0xf32cb1e7 with:
                gas gas_remaining wei
               args address(arg2), address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_3a314039(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not sub_809f3bc4[address(arg2)]:
        require ext_code.size(sub_7fd80b10Address)
        staticcall sub_7fd80b10Address.0xa58666d3 with:
                gas gas_remaining wei
               args address(arg2), address(arg1), address(arg3)
    else:
        require ext_code.size(sub_809f3bc4[address(arg2)])
        staticcall sub_809f3bc4[address(arg2)].0xa58666d3 with:
                gas gas_remaining wei
               args address(arg2), address(arg1), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        sub_7fd80b10Address = arg1
        timeLockAddress = arg2
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    sub_7fd80b10Address = arg1
    timeLockAddress = arg2
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
}

function sub_c0476efd(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not sub_809f3bc4[address(arg1)]:
        require ext_code.size(sub_7fd80b10Address)
        staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                gas gas_remaining wei
               args address(arg1), msg.sender, 0
    else:
        require ext_code.size(sub_809f3bc4[address(arg1)])
        staticcall sub_809f3bc4[address(arg1)].0xf32cb1e7 with:
                gas gas_remaining wei
               args address(arg1), msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'denied'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xeaf61ab1: address(arg2), address(arg3), arg4
}

function sub_01859ec5(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if not sub_809f3bc4[address(arg2)]:
        require ext_code.size(sub_7fd80b10Address)
        staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                gas gas_remaining wei
               args address(arg2), msg.sender, 1
    else:
        require ext_code.size(sub_809f3bc4[address(arg2)])
        staticcall sub_809f3bc4[address(arg2)].0xf32cb1e7 with:
                gas gas_remaining wei
               args address(arg2), msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'denied'
    if not stor102[address(arg1)]:
        revert with 0, 'flashloan provider not allowed'
    require ext_code.size(address(arg1))
    call address(arg1).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4, Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e2927848(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg1.length >= 64
    _3 = mem[128]
    require mem[128] == mem[140 len 20]
    _4 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < arg1.length + 128
    _5 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(mem[mem[160] + 128])) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(mem[mem[160] + 128])) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(ceil32(mem[mem[160] + 128])) + 98
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[mem[160] + 128]
    require _4 + _5 + 64 <= arg1.length + 32
    mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5)] = mem[_4 + 160 len ceil32(_5)]
    if ceil32(_5) <= _5:
        require _5 >= 128
        _683 = mem[ceil32(ceil32(arg1.length)) + 129]
        require mem[ceil32(ceil32(arg1.length)) + 129] == mem[ceil32(ceil32(arg1.length)) + 141 len 20]
        require mem[ceil32(ceil32(arg1.length)) + 161] == Mask(32, 224, mem[ceil32(ceil32(arg1.length)) + 161])
        _687 = mem[ceil32(ceil32(arg1.length)) + 225]
        require mem[ceil32(ceil32(arg1.length)) + 225] <= test266151307()
        require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 160 < ceil32(ceil32(arg1.length)) + _5 + 129
        _691 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129]
        if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129] > test266151307():
            revert with 'NH{q', 65
        _693 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1
        mem[_693] = _691
        require _687 + _691 + 64 <= _5 + 32
        mem[_693 + 32 len ceil32(_691)] = mem[ceil32(ceil32(arg1.length)) + _687 + 161 len ceil32(_691)]
        if ceil32(_691) <= _691:
            mem[0] = address(_3)
            mem[32] = 101
            if not sub_809f3bc4[address(_3)]:
                mem[mem[64] + 4] = address(_3)
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_683)
                require ext_code.size(sub_7fd80b10Address)
                staticcall sub_7fd80b10Address.0xa58666d3 with:
                        gas gas_remaining wei
                       args address(_3), msg.sender, address(_683)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1379 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1379] == bool(mem[_1379])
                if not mem[_1379]:
                    revert with 0, 'denied'
                mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _1415 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 68 len ceil32(_1415)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_1415)]
                if ceil32(_1415) <= _1415:
                    require ext_code.size(address(_3))
                    call address(_3).0xd1b3b979 with:
                         gas gas_remaining wei
                        args 32, mem[mem[64] + 36 len ceil32(_1415) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2035 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2051 = mem[_2035]
                    require mem[_2035] <= test266151307()
                    require _2035 + mem[_2035] + 31 < _2035 + return_data.size
                    _2067 = mem[_2035 + mem[_2035]]
                    if mem[_2035 + mem[_2035]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_2035 + mem[_2035]])) + 1 < 0 or _2035 + ceil32(return_data.size) + ceil32(ceil32(mem[_2035 + mem[_2035]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _2035 + ceil32(return_data.size) + ceil32(ceil32(mem[_2035 + mem[_2035]])) + 1
                    mem[_2035 + ceil32(return_data.size)] = _2067
                    require _2051 + _2067 + 32 <= return_data.size
                    mem[_2035 + ceil32(return_data.size) + 32 len ceil32(_2067)] = mem[_2035 + _2051 + 32 len ceil32(_2067)]
                    if ceil32(_2067) <= _2067:
                        mem[mem[64]] = address(_3)
                        mem[mem[64] + 32] = 64
                        _2643 = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 96 len ceil32(_2643)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2643)]
                        if ceil32(_2643) > _2643:
                            mem[mem[64] + _2643 + 96] = 0
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2643) + 32]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _2067
                        mem[mem[64] + 64 len ceil32(_2067)] = mem[_2035 + ceil32(return_data.size) + 32 len ceil32(_2067)]
                        if ceil32(_2067) > _2067:
                            mem[mem[64] + _2067 + 64] = 0
                    else:
                        mem[_2035 + ceil32(return_data.size) + _2067 + 32] = 0
                        mem[mem[64]] = address(_3)
                        mem[mem[64] + 32] = 64
                        _2659 = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 96 len ceil32(_2659)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2659)]
                        if ceil32(_2659) > _2659:
                            mem[mem[64] + _2659 + 96] = 0
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2659) + 32]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _2067
                        mem[mem[64] + 64 len ceil32(_2067)] = mem[_2035 + ceil32(return_data.size) + 32 len ceil32(_2067)]
                        if ceil32(_2067) > _2067:
                            mem[mem[64] + _2067 + 64] = 0
                    return Array(len=_2067, data=mem[mem[64] + 64 len ceil32(_2067)])
                mem[mem[64] + _1415 + 68] = 0
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len ceil32(_1415) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2043 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2059 = mem[_2043]
                require mem[_2043] <= test266151307()
                require _2043 + mem[_2043] + 31 < _2043 + return_data.size
                _2075 = mem[_2043 + mem[_2043]]
                if mem[_2043 + mem[_2043]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_2043 + mem[_2043]])) + 1 < 0 or _2043 + ceil32(return_data.size) + ceil32(ceil32(mem[_2043 + mem[_2043]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _2043 + ceil32(return_data.size) + ceil32(ceil32(mem[_2043 + mem[_2043]])) + 1
                mem[_2043 + ceil32(return_data.size)] = _2075
                require _2059 + _2075 + 32 <= return_data.size
                mem[_2043 + ceil32(return_data.size) + 32 len ceil32(_2075)] = mem[_2043 + _2059 + 32 len ceil32(_2075)]
                if ceil32(_2075) <= _2075:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _2644 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_2644)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2644)]
                    if ceil32(_2644) > _2644:
                        mem[mem[64] + _2644 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2644) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _2075
                    mem[mem[64] + 64 len ceil32(_2075)] = mem[_2043 + ceil32(return_data.size) + 32 len ceil32(_2075)]
                    if ceil32(_2075) > _2075:
                        mem[mem[64] + _2075 + 64] = 0
                else:
                    mem[_2043 + ceil32(return_data.size) + _2075 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _2660 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_2660)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2660)]
                    if ceil32(_2660) > _2660:
                        mem[mem[64] + _2660 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2660) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _2075
                    mem[mem[64] + 64 len ceil32(_2075)] = mem[_2043 + ceil32(return_data.size) + 32 len ceil32(_2075)]
                    if ceil32(_2075) > _2075:
                        mem[mem[64] + _2075 + 64] = 0
                return Array(len=_2075, data=mem[mem[64] + 64 len ceil32(_2075)])
            mem[0] = address(_3)
            mem[32] = 101
            mem[mem[64] + 4] = address(_3)
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_683)
            require ext_code.size(sub_809f3bc4[address(_3)])
            staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                    gas gas_remaining wei
                   args address(_3), msg.sender, address(_683)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1380 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1380] == bool(mem[_1380])
            if not mem[_1380]:
                revert with 0, 'denied'
            mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1416 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 68 len ceil32(_1416)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_1416)]
            if ceil32(_1416) <= _1416:
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len ceil32(_1416) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2036 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2052 = mem[_2036]
                require mem[_2036] <= test266151307()
                require _2036 + mem[_2036] + 31 < _2036 + return_data.size
                _2068 = mem[_2036 + mem[_2036]]
                if mem[_2036 + mem[_2036]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_2036 + mem[_2036]])) + 1 < 0 or _2036 + ceil32(return_data.size) + ceil32(ceil32(mem[_2036 + mem[_2036]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _2036 + ceil32(return_data.size) + ceil32(ceil32(mem[_2036 + mem[_2036]])) + 1
                mem[_2036 + ceil32(return_data.size)] = _2068
                require _2052 + _2068 + 32 <= return_data.size
                mem[_2036 + ceil32(return_data.size) + 32 len ceil32(_2068)] = mem[_2036 + _2052 + 32 len ceil32(_2068)]
                if ceil32(_2068) <= _2068:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _2645 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_2645)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2645)]
                    if ceil32(_2645) <= _2645:
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2645) + 32]
                        _3163 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _2068
                        mem[mem[64] + 64 len ceil32(_2068)] = mem[_2036 + ceil32(return_data.size) + 32 len ceil32(_2068)]
                        if ceil32(_2068) <= _2068:
                            return Array(len=_2068, data=mem[mem[64] + 64 len ceil32(_2068)])
                        mem[mem[64] + _2068 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_2068) + _3163 + -mem[64] + 64
                    mem[mem[64] + _2645 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2645) + 32]
                    _3223 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _2068
                    mem[mem[64] + 64 len ceil32(_2068)] = mem[_2036 + ceil32(return_data.size) + 32 len ceil32(_2068)]
                    if ceil32(_2068) <= _2068:
                        return Array(len=_2068, data=mem[mem[64] + 64 len ceil32(_2068)])
                    mem[mem[64] + _2068 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_2068) + _3223 + -mem[64] + 64
                mem[_2036 + ceil32(return_data.size) + _2068 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _2661 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_2661)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2661)]
                if ceil32(_2661) <= _2661:
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2661) + 32]
                    _3165 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _2068
                    mem[mem[64] + 64 len ceil32(_2068)] = mem[_2036 + ceil32(return_data.size) + 32 len ceil32(_2068)]
                    if ceil32(_2068) <= _2068:
                        return Array(len=_2068, data=mem[mem[64] + 64 len ceil32(_2068)])
                    mem[mem[64] + _2068 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_2068) + _3165 + -mem[64] + 64
                mem[mem[64] + _2661 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2661) + 32]
                _3224 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _2068
                mem[mem[64] + 64 len ceil32(_2068)] = mem[_2036 + ceil32(return_data.size) + 32 len ceil32(_2068)]
                if ceil32(_2068) <= _2068:
                    return Array(len=_2068, data=mem[mem[64] + 64 len ceil32(_2068)])
                mem[mem[64] + _2068 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_2068) + _3224 + -mem[64] + 64
            mem[mem[64] + _1416 + 68] = 0
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len ceil32(_1416) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2044 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2060 = mem[_2044]
            require mem[_2044] <= test266151307()
            require _2044 + mem[_2044] + 31 < _2044 + return_data.size
            _2076 = mem[_2044 + mem[_2044]]
            if mem[_2044 + mem[_2044]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_2044 + mem[_2044]])) + 1 < 0 or _2044 + ceil32(return_data.size) + ceil32(ceil32(mem[_2044 + mem[_2044]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _2044 + ceil32(return_data.size) + ceil32(ceil32(mem[_2044 + mem[_2044]])) + 1
            mem[_2044 + ceil32(return_data.size)] = _2076
            require _2060 + _2076 + 32 <= return_data.size
            mem[_2044 + ceil32(return_data.size) + 32 len ceil32(_2076)] = mem[_2044 + _2060 + 32 len ceil32(_2076)]
            if ceil32(_2076) <= _2076:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _2646 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_2646)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2646)]
                if ceil32(_2646) <= _2646:
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2646) + 32]
                    _3167 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _2076
                    mem[mem[64] + 64 len ceil32(_2076)] = mem[_2044 + ceil32(return_data.size) + 32 len ceil32(_2076)]
                    if ceil32(_2076) <= _2076:
                        return Array(len=_2076, data=mem[mem[64] + 64 len ceil32(_2076)])
                    mem[mem[64] + _2076 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_2076) + _3167 + -mem[64] + 64
                mem[mem[64] + _2646 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2646) + 32]
                _3225 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _2076
                mem[mem[64] + 64 len ceil32(_2076)] = mem[_2044 + ceil32(return_data.size) + 32 len ceil32(_2076)]
                if ceil32(_2076) <= _2076:
                    return Array(len=_2076, data=mem[mem[64] + 64 len ceil32(_2076)])
                mem[mem[64] + _2076 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_2076) + _3225 + -mem[64] + 64
            mem[_2044 + ceil32(return_data.size) + _2076 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _2662 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_2662)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2662)]
            if ceil32(_2662) <= _2662:
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2662) + 32]
                _3169 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _2076
                mem[mem[64] + 64 len ceil32(_2076)] = mem[_2044 + ceil32(return_data.size) + 32 len ceil32(_2076)]
                if ceil32(_2076) <= _2076:
                    return Array(len=_2076, data=mem[mem[64] + 64 len ceil32(_2076)])
                mem[mem[64] + _2076 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_2076) + _3169 + -mem[64] + 64
            mem[mem[64] + _2662 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2662) + 32]
            _3226 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _2076
            mem[mem[64] + 64 len ceil32(_2076)] = mem[_2044 + ceil32(return_data.size) + 32 len ceil32(_2076)]
            if ceil32(_2076) <= _2076:
                return Array(len=_2076, data=mem[mem[64] + 64 len ceil32(_2076)])
            mem[mem[64] + _2076 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_2076) + _3226 + -mem[64] + 64
        mem[_693 + _691 + 32] = 0
        mem[0] = address(_3)
        mem[32] = 101
        if not sub_809f3bc4[address(_3)]:
            mem[mem[64] + 4] = address(_3)
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_683)
            require ext_code.size(sub_7fd80b10Address)
            staticcall sub_7fd80b10Address.0xa58666d3 with:
                    gas gas_remaining wei
                   args address(_3), msg.sender, address(_683)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1383 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1383] == bool(mem[_1383])
            if not mem[_1383]:
                revert with 0, 'denied'
            mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1423 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 68 len ceil32(_1423)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_1423)]
            if ceil32(_1423) <= _1423:
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len ceil32(_1423) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2037 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2053 = mem[_2037]
                require mem[_2037] <= test266151307()
                require _2037 + mem[_2037] + 31 < _2037 + return_data.size
                _2069 = mem[_2037 + mem[_2037]]
                if mem[_2037 + mem[_2037]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_2037 + mem[_2037]])) + 1 < 0 or _2037 + ceil32(return_data.size) + ceil32(ceil32(mem[_2037 + mem[_2037]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _2037 + ceil32(return_data.size) + ceil32(ceil32(mem[_2037 + mem[_2037]])) + 1
                mem[_2037 + ceil32(return_data.size)] = _2069
                require _2053 + _2069 + 32 <= return_data.size
                mem[_2037 + ceil32(return_data.size) + 32 len ceil32(_2069)] = mem[_2037 + _2053 + 32 len ceil32(_2069)]
                if ceil32(_2069) <= _2069:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _2647 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_2647)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2647)]
                    if ceil32(_2647) > _2647:
                        mem[mem[64] + _2647 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2647) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _2069
                    mem[mem[64] + 64 len ceil32(_2069)] = mem[_2037 + ceil32(return_data.size) + 32 len ceil32(_2069)]
                    if ceil32(_2069) > _2069:
                        mem[mem[64] + _2069 + 64] = 0
                else:
                    mem[_2037 + ceil32(return_data.size) + _2069 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _2663 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_2663)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2663)]
                    if ceil32(_2663) > _2663:
                        mem[mem[64] + _2663 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2663) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _2069
                    mem[mem[64] + 64 len ceil32(_2069)] = mem[_2037 + ceil32(return_data.size) + 32 len ceil32(_2069)]
                    if ceil32(_2069) > _2069:
                        mem[mem[64] + _2069 + 64] = 0
                return Array(len=_2069, data=mem[mem[64] + 64 len ceil32(_2069)])
            mem[mem[64] + _1423 + 68] = 0
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len ceil32(_1423) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2045 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2061 = mem[_2045]
            require mem[_2045] <= test266151307()
            require _2045 + mem[_2045] + 31 < _2045 + return_data.size
            _2077 = mem[_2045 + mem[_2045]]
            if mem[_2045 + mem[_2045]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_2045 + mem[_2045]])) + 1 < 0 or _2045 + ceil32(return_data.size) + ceil32(ceil32(mem[_2045 + mem[_2045]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _2045 + ceil32(return_data.size) + ceil32(ceil32(mem[_2045 + mem[_2045]])) + 1
            mem[_2045 + ceil32(return_data.size)] = _2077
            require _2061 + _2077 + 32 <= return_data.size
            mem[_2045 + ceil32(return_data.size) + 32 len ceil32(_2077)] = mem[_2045 + _2061 + 32 len ceil32(_2077)]
            if ceil32(_2077) <= _2077:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _2648 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_2648)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2648)]
                if ceil32(_2648) > _2648:
                    mem[mem[64] + _2648 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2648) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _2077
                mem[mem[64] + 64 len ceil32(_2077)] = mem[_2045 + ceil32(return_data.size) + 32 len ceil32(_2077)]
                if ceil32(_2077) > _2077:
                    mem[mem[64] + _2077 + 64] = 0
            else:
                mem[_2045 + ceil32(return_data.size) + _2077 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _2664 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_2664)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2664)]
                if ceil32(_2664) > _2664:
                    mem[mem[64] + _2664 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2664) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _2077
                mem[mem[64] + 64 len ceil32(_2077)] = mem[_2045 + ceil32(return_data.size) + 32 len ceil32(_2077)]
                if ceil32(_2077) > _2077:
                    mem[mem[64] + _2077 + 64] = 0
            return Array(len=_2077, data=mem[mem[64] + 64 len ceil32(_2077)])
        mem[0] = address(_3)
        mem[32] = 101
        mem[mem[64] + 4] = address(_3)
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_683)
        require ext_code.size(sub_809f3bc4[address(_3)])
        staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                gas gas_remaining wei
               args address(_3), msg.sender, address(_683)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1384 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1384] == bool(mem[_1384])
        if not mem[_1384]:
            revert with 0, 'denied'
        mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1424 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 68 len ceil32(_1424)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_1424)]
        if ceil32(_1424) <= _1424:
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len ceil32(_1424) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2038 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2054 = mem[_2038]
            require mem[_2038] <= test266151307()
            require _2038 + mem[_2038] + 31 < _2038 + return_data.size
            _2070 = mem[_2038 + mem[_2038]]
            if mem[_2038 + mem[_2038]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_2038 + mem[_2038]])) + 1 < 0 or _2038 + ceil32(return_data.size) + ceil32(ceil32(mem[_2038 + mem[_2038]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _2038 + ceil32(return_data.size) + ceil32(ceil32(mem[_2038 + mem[_2038]])) + 1
            mem[_2038 + ceil32(return_data.size)] = _2070
            require _2054 + _2070 + 32 <= return_data.size
            mem[_2038 + ceil32(return_data.size) + 32 len ceil32(_2070)] = mem[_2038 + _2054 + 32 len ceil32(_2070)]
            if ceil32(_2070) <= _2070:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _2649 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_2649)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2649)]
                if ceil32(_2649) > _2649:
                    mem[mem[64] + _2649 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2649) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _2070
                mem[mem[64] + 64 len ceil32(_2070)] = mem[_2038 + ceil32(return_data.size) + 32 len ceil32(_2070)]
                if ceil32(_2070) > _2070:
                    mem[mem[64] + _2070 + 64] = 0
            else:
                mem[_2038 + ceil32(return_data.size) + _2070 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _2665 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_2665)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2665)]
                if ceil32(_2665) > _2665:
                    mem[mem[64] + _2665 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2665) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _2070
                mem[mem[64] + 64 len ceil32(_2070)] = mem[_2038 + ceil32(return_data.size) + 32 len ceil32(_2070)]
                if ceil32(_2070) > _2070:
                    mem[mem[64] + _2070 + 64] = 0
            return Array(len=_2070, data=mem[mem[64] + 64 len ceil32(_2070)])
        mem[mem[64] + _1424 + 68] = 0
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len ceil32(_1424) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2046 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2062 = mem[_2046]
        require mem[_2046] <= test266151307()
        require _2046 + mem[_2046] + 31 < _2046 + return_data.size
        _2078 = mem[_2046 + mem[_2046]]
        if mem[_2046 + mem[_2046]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_2046 + mem[_2046]])) + 1 < 0 or _2046 + ceil32(return_data.size) + ceil32(ceil32(mem[_2046 + mem[_2046]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _2046 + ceil32(return_data.size) + ceil32(ceil32(mem[_2046 + mem[_2046]])) + 1
        mem[_2046 + ceil32(return_data.size)] = _2078
        require _2062 + _2078 + 32 <= return_data.size
        mem[_2046 + ceil32(return_data.size) + 32 len ceil32(_2078)] = mem[_2046 + _2062 + 32 len ceil32(_2078)]
        if ceil32(_2078) <= _2078:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _2650 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_2650)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2650)]
            if ceil32(_2650) > _2650:
                mem[mem[64] + _2650 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2650) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _2078
            mem[mem[64] + 64 len ceil32(_2078)] = mem[_2046 + ceil32(return_data.size) + 32 len ceil32(_2078)]
            if ceil32(_2078) > _2078:
                mem[mem[64] + _2078 + 64] = 0
        else:
            mem[_2046 + ceil32(return_data.size) + _2078 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _2666 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_2666)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2666)]
            if ceil32(_2666) > _2666:
                mem[mem[64] + _2666 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2666) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _2078
            mem[mem[64] + 64 len ceil32(_2078)] = mem[_2046 + ceil32(return_data.size) + 32 len ceil32(_2078)]
            if ceil32(_2078) > _2078:
                mem[mem[64] + _2078 + 64] = 0
        return Array(len=_2078, data=mem[mem[64] + 64 len ceil32(_2078)])
    mem[ceil32(ceil32(arg1.length)) + _5 + 129] = 0
    require _5 >= 128
    _684 = mem[ceil32(ceil32(arg1.length)) + 129]
    require mem[ceil32(ceil32(arg1.length)) + 129] == mem[ceil32(ceil32(arg1.length)) + 141 len 20]
    require mem[ceil32(ceil32(arg1.length)) + 161] == Mask(32, 224, mem[ceil32(ceil32(arg1.length)) + 161])
    _690 = mem[ceil32(ceil32(arg1.length)) + 225]
    require mem[ceil32(ceil32(arg1.length)) + 225] <= test266151307()
    require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 160 < ceil32(ceil32(arg1.length)) + _5 + 129
    _692 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129]
    if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129] > test266151307():
        revert with 'NH{q', 65
    _694 = mem[64]
    if mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1
    mem[_694] = _692
    require _690 + _692 + 64 <= _5 + 32
    mem[_694 + 32 len ceil32(_692)] = mem[ceil32(ceil32(arg1.length)) + _690 + 161 len ceil32(_692)]
    if ceil32(_692) <= _692:
        mem[0] = address(_3)
        mem[32] = 101
        if not sub_809f3bc4[address(_3)]:
            mem[mem[64] + 4] = address(_3)
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_684)
            require ext_code.size(sub_7fd80b10Address)
            staticcall sub_7fd80b10Address.0xa58666d3 with:
                    gas gas_remaining wei
                   args address(_3), msg.sender, address(_684)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1381 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1381] == bool(mem[_1381])
            if not mem[_1381]:
                revert with 0, 'denied'
            mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1419 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 68 len ceil32(_1419)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_1419)]
            if ceil32(_1419) <= _1419:
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len ceil32(_1419) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2039 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2055 = mem[_2039]
                require mem[_2039] <= test266151307()
                require _2039 + mem[_2039] + 31 < _2039 + return_data.size
                _2071 = mem[_2039 + mem[_2039]]
                if mem[_2039 + mem[_2039]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_2039 + mem[_2039]])) + 1 < 0 or _2039 + ceil32(return_data.size) + ceil32(ceil32(mem[_2039 + mem[_2039]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _2039 + ceil32(return_data.size) + ceil32(ceil32(mem[_2039 + mem[_2039]])) + 1
                mem[_2039 + ceil32(return_data.size)] = _2071
                require _2055 + _2071 + 32 <= return_data.size
                mem[_2039 + ceil32(return_data.size) + 32 len ceil32(_2071)] = mem[_2039 + _2055 + 32 len ceil32(_2071)]
                if ceil32(_2071) <= _2071:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _2651 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_2651)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2651)]
                    if ceil32(_2651) > _2651:
                        mem[mem[64] + _2651 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2651) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _2071
                    mem[mem[64] + 64 len ceil32(_2071)] = mem[_2039 + ceil32(return_data.size) + 32 len ceil32(_2071)]
                    if ceil32(_2071) > _2071:
                        mem[mem[64] + _2071 + 64] = 0
                else:
                    mem[_2039 + ceil32(return_data.size) + _2071 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _2667 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_2667)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2667)]
                    if ceil32(_2667) > _2667:
                        mem[mem[64] + _2667 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2667) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _2071
                    mem[mem[64] + 64 len ceil32(_2071)] = mem[_2039 + ceil32(return_data.size) + 32 len ceil32(_2071)]
                    if ceil32(_2071) > _2071:
                        mem[mem[64] + _2071 + 64] = 0
                return Array(len=_2071, data=mem[mem[64] + 64 len ceil32(_2071)])
            mem[mem[64] + _1419 + 68] = 0
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len ceil32(_1419) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2047 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2063 = mem[_2047]
            require mem[_2047] <= test266151307()
            require _2047 + mem[_2047] + 31 < _2047 + return_data.size
            _2079 = mem[_2047 + mem[_2047]]
            if mem[_2047 + mem[_2047]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_2047 + mem[_2047]])) + 1 < 0 or _2047 + ceil32(return_data.size) + ceil32(ceil32(mem[_2047 + mem[_2047]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _2047 + ceil32(return_data.size) + ceil32(ceil32(mem[_2047 + mem[_2047]])) + 1
            mem[_2047 + ceil32(return_data.size)] = _2079
            require _2063 + _2079 + 32 <= return_data.size
            mem[_2047 + ceil32(return_data.size) + 32 len ceil32(_2079)] = mem[_2047 + _2063 + 32 len ceil32(_2079)]
            if ceil32(_2079) <= _2079:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _2652 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_2652)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2652)]
                if ceil32(_2652) <= _2652:
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2652) + 32]
                    _3191 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _2079
                    mem[mem[64] + 64 len ceil32(_2079)] = mem[_2047 + ceil32(return_data.size) + 32 len ceil32(_2079)]
                    if ceil32(_2079) <= _2079:
                        return Array(len=_2079, data=mem[mem[64] + 64 len ceil32(_2079)])
                    mem[mem[64] + _2079 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_2079) + _3191 + -mem[64] + 64
                mem[mem[64] + _2652 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2652) + 32]
                _3237 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _2079
                mem[mem[64] + 64 len ceil32(_2079)] = mem[_2047 + ceil32(return_data.size) + 32 len ceil32(_2079)]
                if ceil32(_2079) <= _2079:
                    return Array(len=_2079, data=mem[mem[64] + 64 len ceil32(_2079)])
                mem[mem[64] + _2079 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_2079) + _3237 + -mem[64] + 64
            mem[_2047 + ceil32(return_data.size) + _2079 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _2668 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_2668)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2668)]
            if ceil32(_2668) <= _2668:
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2668) + 32]
                _3193 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _2079
                mem[mem[64] + 64 len ceil32(_2079)] = mem[_2047 + ceil32(return_data.size) + 32 len ceil32(_2079)]
                if ceil32(_2079) <= _2079:
                    return Array(len=_2079, data=mem[mem[64] + 64 len ceil32(_2079)])
                mem[mem[64] + _2079 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_2079) + _3193 + -mem[64] + 64
            mem[mem[64] + _2668 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2668) + 32]
            _3238 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _2079
            mem[mem[64] + 64 len ceil32(_2079)] = mem[_2047 + ceil32(return_data.size) + 32 len ceil32(_2079)]
            if ceil32(_2079) <= _2079:
                return Array(len=_2079, data=mem[mem[64] + 64 len ceil32(_2079)])
            mem[mem[64] + _2079 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_2079) + _3238 + -mem[64] + 64
        mem[0] = address(_3)
        mem[32] = 101
        mem[mem[64] + 4] = address(_3)
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_684)
        require ext_code.size(sub_809f3bc4[address(_3)])
        staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                gas gas_remaining wei
               args address(_3), msg.sender, address(_684)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1382 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1382] == bool(mem[_1382])
        if not mem[_1382]:
            revert with 0, 'denied'
        mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1420 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 68 len ceil32(_1420)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_1420)]
        if ceil32(_1420) <= _1420:
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len ceil32(_1420) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2040 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2056 = mem[_2040]
            require mem[_2040] <= test266151307()
            require _2040 + mem[_2040] + 31 < _2040 + return_data.size
            _2072 = mem[_2040 + mem[_2040]]
            if mem[_2040 + mem[_2040]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_2040 + mem[_2040]])) + 1 < 0 or _2040 + ceil32(return_data.size) + ceil32(ceil32(mem[_2040 + mem[_2040]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _2040 + ceil32(return_data.size) + ceil32(ceil32(mem[_2040 + mem[_2040]])) + 1
            mem[_2040 + ceil32(return_data.size)] = _2072
            require _2056 + _2072 + 32 <= return_data.size
            mem[_2040 + ceil32(return_data.size) + 32 len ceil32(_2072)] = mem[_2040 + _2056 + 32 len ceil32(_2072)]
            if ceil32(_2072) <= _2072:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _2653 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_2653)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2653)]
                if ceil32(_2653) > _2653:
                    mem[mem[64] + _2653 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2653) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _2072
                mem[mem[64] + 64 len ceil32(_2072)] = mem[_2040 + ceil32(return_data.size) + 32 len ceil32(_2072)]
                if ceil32(_2072) > _2072:
                    mem[mem[64] + _2072 + 64] = 0
            else:
                mem[_2040 + ceil32(return_data.size) + _2072 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _2669 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_2669)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2669)]
                if ceil32(_2669) > _2669:
                    mem[mem[64] + _2669 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2669) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _2072
                mem[mem[64] + 64 len ceil32(_2072)] = mem[_2040 + ceil32(return_data.size) + 32 len ceil32(_2072)]
                if ceil32(_2072) > _2072:
                    mem[mem[64] + _2072 + 64] = 0
            return Array(len=_2072, data=mem[mem[64] + 64 len ceil32(_2072)])
        mem[mem[64] + _1420 + 68] = 0
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len ceil32(_1420) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2048 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2064 = mem[_2048]
        require mem[_2048] <= test266151307()
        require _2048 + mem[_2048] + 31 < _2048 + return_data.size
        _2080 = mem[_2048 + mem[_2048]]
        if mem[_2048 + mem[_2048]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_2048 + mem[_2048]])) + 1 < 0 or _2048 + ceil32(return_data.size) + ceil32(ceil32(mem[_2048 + mem[_2048]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _2048 + ceil32(return_data.size) + ceil32(ceil32(mem[_2048 + mem[_2048]])) + 1
        mem[_2048 + ceil32(return_data.size)] = _2080
        require _2064 + _2080 + 32 <= return_data.size
        mem[_2048 + ceil32(return_data.size) + 32 len ceil32(_2080)] = mem[_2048 + _2064 + 32 len ceil32(_2080)]
        if ceil32(_2080) <= _2080:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _2654 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_2654)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2654)]
            if ceil32(_2654) <= _2654:
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2654) + 32]
                _3199 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _2080
                mem[mem[64] + 64 len ceil32(_2080)] = mem[_2048 + ceil32(return_data.size) + 32 len ceil32(_2080)]
                if ceil32(_2080) <= _2080:
                    return Array(len=_2080, data=mem[mem[64] + 64 len ceil32(_2080)])
                mem[mem[64] + _2080 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_2080) + _3199 + -mem[64] + 64
            mem[mem[64] + _2654 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2654) + 32]
            _3241 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _2080
            mem[mem[64] + 64 len ceil32(_2080)] = mem[_2048 + ceil32(return_data.size) + 32 len ceil32(_2080)]
            if ceil32(_2080) <= _2080:
                return Array(len=_2080, data=mem[mem[64] + 64 len ceil32(_2080)])
            mem[mem[64] + _2080 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_2080) + _3241 + -mem[64] + 64
        mem[_2048 + ceil32(return_data.size) + _2080 + 32] = 0
        mem[mem[64]] = address(_3)
        mem[mem[64] + 32] = 64
        _2670 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96 len ceil32(_2670)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2670)]
        if ceil32(_2670) <= _2670:
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2670) + 32]
            _3201 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _2080
            mem[mem[64] + 64 len ceil32(_2080)] = mem[_2048 + ceil32(return_data.size) + 32 len ceil32(_2080)]
            if ceil32(_2080) <= _2080:
                return Array(len=_2080, data=mem[mem[64] + 64 len ceil32(_2080)])
            mem[mem[64] + _2080 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_2080) + _3201 + -mem[64] + 64
        mem[mem[64] + _2670 + 96] = 0
        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2670) + 32]
        _3242 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _2080
        mem[mem[64] + 64 len ceil32(_2080)] = mem[_2048 + ceil32(return_data.size) + 32 len ceil32(_2080)]
        if ceil32(_2080) <= _2080:
            return Array(len=_2080, data=mem[mem[64] + 64 len ceil32(_2080)])
        mem[mem[64] + _2080 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_2080) + _3242 + -mem[64] + 64
    mem[_694 + _692 + 32] = 0
    mem[0] = address(_3)
    mem[32] = 101
    if not sub_809f3bc4[address(_3)]:
        mem[mem[64] + 4] = address(_3)
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_684)
        require ext_code.size(sub_7fd80b10Address)
        staticcall sub_7fd80b10Address.0xa58666d3 with:
                gas gas_remaining wei
               args address(_3), msg.sender, address(_684)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1385] == bool(mem[_1385])
        if not mem[_1385]:
            revert with 0, 'denied'
        mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1425 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 68 len ceil32(_1425)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_1425)]
        if ceil32(_1425) <= _1425:
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len ceil32(_1425) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2041 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2057 = mem[_2041]
            require mem[_2041] <= test266151307()
            require _2041 + mem[_2041] + 31 < _2041 + return_data.size
            _2073 = mem[_2041 + mem[_2041]]
            if mem[_2041 + mem[_2041]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_2041 + mem[_2041]])) + 1 < 0 or _2041 + ceil32(return_data.size) + ceil32(ceil32(mem[_2041 + mem[_2041]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _2041 + ceil32(return_data.size) + ceil32(ceil32(mem[_2041 + mem[_2041]])) + 1
            mem[_2041 + ceil32(return_data.size)] = _2073
            require _2057 + _2073 + 32 <= return_data.size
            mem[_2041 + ceil32(return_data.size) + 32 len ceil32(_2073)] = mem[_2041 + _2057 + 32 len ceil32(_2073)]
            if ceil32(_2073) <= _2073:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _2655 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_2655)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2655)]
                if ceil32(_2655) > _2655:
                    mem[mem[64] + _2655 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2655) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _2073
                mem[mem[64] + 64 len ceil32(_2073)] = mem[_2041 + ceil32(return_data.size) + 32 len ceil32(_2073)]
                if ceil32(_2073) > _2073:
                    mem[mem[64] + _2073 + 64] = 0
            else:
                mem[_2041 + ceil32(return_data.size) + _2073 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _2671 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_2671)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2671)]
                if ceil32(_2671) > _2671:
                    mem[mem[64] + _2671 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2671) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _2073
                mem[mem[64] + 64 len ceil32(_2073)] = mem[_2041 + ceil32(return_data.size) + 32 len ceil32(_2073)]
                if ceil32(_2073) > _2073:
                    mem[mem[64] + _2073 + 64] = 0
            return Array(len=_2073, data=mem[mem[64] + 64 len ceil32(_2073)])
        mem[mem[64] + _1425 + 68] = 0
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len ceil32(_1425) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2049 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2065 = mem[_2049]
        require mem[_2049] <= test266151307()
        require _2049 + mem[_2049] + 31 < _2049 + return_data.size
        _2081 = mem[_2049 + mem[_2049]]
        if mem[_2049 + mem[_2049]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_2049 + mem[_2049]])) + 1 < 0 or _2049 + ceil32(return_data.size) + ceil32(ceil32(mem[_2049 + mem[_2049]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _2049 + ceil32(return_data.size) + ceil32(ceil32(mem[_2049 + mem[_2049]])) + 1
        mem[_2049 + ceil32(return_data.size)] = _2081
        require _2065 + _2081 + 32 <= return_data.size
        mem[_2049 + ceil32(return_data.size) + 32 len ceil32(_2081)] = mem[_2049 + _2065 + 32 len ceil32(_2081)]
        if ceil32(_2081) <= _2081:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _2656 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_2656)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2656)]
            if ceil32(_2656) > _2656:
                mem[mem[64] + _2656 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2656) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _2081
            mem[mem[64] + 64 len ceil32(_2081)] = mem[_2049 + ceil32(return_data.size) + 32 len ceil32(_2081)]
            if ceil32(_2081) > _2081:
                mem[mem[64] + _2081 + 64] = 0
        else:
            mem[_2049 + ceil32(return_data.size) + _2081 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _2672 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_2672)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2672)]
            if ceil32(_2672) > _2672:
                mem[mem[64] + _2672 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2672) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _2081
            mem[mem[64] + 64 len ceil32(_2081)] = mem[_2049 + ceil32(return_data.size) + 32 len ceil32(_2081)]
            if ceil32(_2081) > _2081:
                mem[mem[64] + _2081 + 64] = 0
        return Array(len=_2081, data=mem[mem[64] + 64 len ceil32(_2081)])
    mem[0] = address(_3)
    mem[32] = 101
    mem[mem[64] + 4] = address(_3)
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = address(_684)
    require ext_code.size(sub_809f3bc4[address(_3)])
    staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
            gas gas_remaining wei
           args address(_3), msg.sender, address(_684)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1386 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1386] == bool(mem[_1386])
    if not mem[_1386]:
        revert with 0, 'denied'
    mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1426 = mem[ceil32(ceil32(arg1.length)) + 97]
    mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
    mem[mem[64] + 68 len ceil32(_1426)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_1426)]
    if ceil32(_1426) <= _1426:
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len ceil32(_1426) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2042 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2058 = mem[_2042]
        require mem[_2042] <= test266151307()
        require _2042 + mem[_2042] + 31 < _2042 + return_data.size
        _2074 = mem[_2042 + mem[_2042]]
        if mem[_2042 + mem[_2042]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_2042 + mem[_2042]])) + 1 < 0 or _2042 + ceil32(return_data.size) + ceil32(ceil32(mem[_2042 + mem[_2042]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _2042 + ceil32(return_data.size) + ceil32(ceil32(mem[_2042 + mem[_2042]])) + 1
        mem[_2042 + ceil32(return_data.size)] = _2074
        require _2058 + _2074 + 32 <= return_data.size
        mem[_2042 + ceil32(return_data.size) + 32 len ceil32(_2074)] = mem[_2042 + _2058 + 32 len ceil32(_2074)]
        if ceil32(_2074) <= _2074:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _2657 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_2657)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2657)]
            if ceil32(_2657) > _2657:
                mem[mem[64] + _2657 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2657) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _2074
            mem[mem[64] + 64 len ceil32(_2074)] = mem[_2042 + ceil32(return_data.size) + 32 len ceil32(_2074)]
            if ceil32(_2074) > _2074:
                mem[mem[64] + _2074 + 64] = 0
        else:
            mem[_2042 + ceil32(return_data.size) + _2074 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _2673 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_2673)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2673)]
            if ceil32(_2673) > _2673:
                mem[mem[64] + _2673 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2673) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _2074
            mem[mem[64] + 64 len ceil32(_2074)] = mem[_2042 + ceil32(return_data.size) + 32 len ceil32(_2074)]
            if ceil32(_2074) > _2074:
                mem[mem[64] + _2074 + 64] = 0
        return Array(len=_2074, data=mem[mem[64] + 64 len ceil32(_2074)])
    mem[mem[64] + _1426 + 68] = 0
    require ext_code.size(address(_3))
    call address(_3).0xd1b3b979 with:
         gas gas_remaining wei
        args 32, mem[mem[64] + 36 len ceil32(_1426) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2050 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2066 = mem[_2050]
    require mem[_2050] <= test266151307()
    require _2050 + mem[_2050] + 31 < _2050 + return_data.size
    _2082 = mem[_2050 + mem[_2050]]
    if mem[_2050 + mem[_2050]] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(mem[_2050 + mem[_2050]])) + 1 < 0 or _2050 + ceil32(return_data.size) + ceil32(ceil32(mem[_2050 + mem[_2050]])) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = _2050 + ceil32(return_data.size) + ceil32(ceil32(mem[_2050 + mem[_2050]])) + 1
    mem[_2050 + ceil32(return_data.size)] = _2082
    require _2066 + _2082 + 32 <= return_data.size
    mem[_2050 + ceil32(return_data.size) + 32 len ceil32(_2082)] = mem[_2050 + _2066 + 32 len ceil32(_2082)]
    if ceil32(_2082) <= _2082:
        mem[mem[64]] = address(_3)
        mem[mem[64] + 32] = 64
        _2658 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96 len ceil32(_2658)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2658)]
        if ceil32(_2658) > _2658:
            mem[mem[64] + _2658 + 96] = 0
        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2658) + 32]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _2082
        mem[mem[64] + 64 len ceil32(_2082)] = mem[_2050 + ceil32(return_data.size) + 32 len ceil32(_2082)]
        if ceil32(_2082) > _2082:
            mem[mem[64] + _2082 + 64] = 0
    else:
        mem[_2050 + ceil32(return_data.size) + _2082 + 32] = 0
        mem[mem[64]] = address(_3)
        mem[mem[64] + 32] = 64
        _2674 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96 len ceil32(_2674)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2674)]
        if ceil32(_2674) > _2674:
            mem[mem[64] + _2674 + 96] = 0
        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2674) + 32]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _2082
        mem[mem[64] + 64 len ceil32(_2082)] = mem[_2050 + ceil32(return_data.size) + 32 len ceil32(_2082)]
        if ceil32(_2082) > _2082:
            mem[mem[64] + _2082 + 64] = 0
    return Array(len=_2082, data=mem[mem[64] + 64 len ceil32(_2082)])
}

function sub_b096d811(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg4 == uint8(arg4)
    require arg1.length >= 64
    _3 = mem[128]
    require mem[128] == mem[140 len 20]
    _4 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 159 < arg1.length + 128
    _5 = mem[mem[160] + 128]
    if mem[mem[160] + 128] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(mem[mem[160] + 128])) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(mem[mem[160] + 128])) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(ceil32(mem[mem[160] + 128])) + 98
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[mem[160] + 128]
    require _4 + _5 + 64 <= arg1.length + 32
    mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5)] = mem[_4 + 160 len ceil32(_5)]
    if ceil32(_5) <= _5:
        mem[0] = address(_3)
        mem[32] = 101
        if not sub_809f3bc4[address(_3)]:
            mem[mem[64]] = 0x3dba5ba800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_3)
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg2
            mem[mem[64] + 100] = arg3
            mem[mem[64] + 132] = uint8(arg4)
            mem[mem[64] + 164] = arg5
            mem[mem[64] + 196] = arg6
            require ext_code.size(sub_7fd80b10Address)
            call sub_7fd80b10Address.permit(address arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                 gas gas_remaining wei
                args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require _5 >= 128
            _1381 = mem[ceil32(ceil32(arg1.length)) + 129]
            require mem[ceil32(ceil32(arg1.length)) + 129] == mem[ceil32(ceil32(arg1.length)) + 141 len 20]
            require mem[ceil32(ceil32(arg1.length)) + 161] == Mask(32, 224, mem[ceil32(ceil32(arg1.length)) + 161])
            _1388 = mem[ceil32(ceil32(arg1.length)) + 225]
            require mem[ceil32(ceil32(arg1.length)) + 225] <= test266151307()
            require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 160 < ceil32(ceil32(arg1.length)) + _5 + 129
            _1397 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129]
            if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129] > test266151307():
                revert with 'NH{q', 65
            _1401 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1
            mem[_1401] = _1397
            require _1388 + _1397 + 64 <= _5 + 32
            mem[_1401 + 32 len ceil32(_1397)] = mem[ceil32(ceil32(arg1.length)) + _1388 + 161 len ceil32(_1397)]
            if ceil32(_1397) > _1397:
                mem[_1401 + _1397 + 32] = 0
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_1381)
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_1381)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2781 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2781] == bool(mem[_2781])
                    if not mem[_2781]:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _2861 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 68 len ceil32(_2861)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2861)]
                    if ceil32(_2861) <= _2861:
                        require ext_code.size(address(_3))
                        call address(_3).0xd1b3b979 with:
                             gas gas_remaining wei
                            args 32, mem[mem[64] + 36 len ceil32(_2861) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4087 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4119 = mem[_4087]
                        require mem[_4087] <= test266151307()
                        require _4087 + mem[_4087] + 31 < _4087 + return_data.size
                        _4151 = mem[_4087 + mem[_4087]]
                        if mem[_4087 + mem[_4087]] > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(ceil32(mem[_4087 + mem[_4087]])) + 1 < 0 or _4087 + ceil32(return_data.size) + ceil32(ceil32(mem[_4087 + mem[_4087]])) + 1 > test266151307():
                            revert with 'NH{q', 65
                        mem[64] = _4087 + ceil32(return_data.size) + ceil32(ceil32(mem[_4087 + mem[_4087]])) + 1
                        mem[_4087 + ceil32(return_data.size)] = _4151
                        require _4119 + _4151 + 32 <= return_data.size
                        mem[_4087 + ceil32(return_data.size) + 32 len ceil32(_4151)] = mem[_4087 + _4119 + 32 len ceil32(_4151)]
                        if ceil32(_4151) <= _4151:
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = 64
                            _5305 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 96 len ceil32(_5305)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5305)]
                            if ceil32(_5305) > _5305:
                                mem[mem[64] + _5305 + 96] = 0
                            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5305) + 32]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = _4151
                            mem[mem[64] + 64 len ceil32(_4151)] = mem[_4087 + ceil32(return_data.size) + 32 len ceil32(_4151)]
                            if ceil32(_4151) > _4151:
                                mem[mem[64] + _4151 + 64] = 0
                        else:
                            mem[_4087 + ceil32(return_data.size) + _4151 + 32] = 0
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = 64
                            _5337 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 96 len ceil32(_5337)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5337)]
                            if ceil32(_5337) > _5337:
                                mem[mem[64] + _5337 + 96] = 0
                            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5337) + 32]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = _4151
                            mem[mem[64] + 64 len ceil32(_4151)] = mem[_4087 + ceil32(return_data.size) + 32 len ceil32(_4151)]
                            if ceil32(_4151) > _4151:
                                mem[mem[64] + _4151 + 64] = 0
                        return Array(len=_4151, data=mem[mem[64] + 64 len ceil32(_4151)])
                    mem[mem[64] + _2861 + 68] = 0
                    require ext_code.size(address(_3))
                    call address(_3).0xd1b3b979 with:
                         gas gas_remaining wei
                        args 32, mem[mem[64] + 36 len ceil32(_2861) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4103 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4135 = mem[_4103]
                    require mem[_4103] <= test266151307()
                    require _4103 + mem[_4103] + 31 < _4103 + return_data.size
                    _4167 = mem[_4103 + mem[_4103]]
                    if mem[_4103 + mem[_4103]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_4103 + mem[_4103]])) + 1 < 0 or _4103 + ceil32(return_data.size) + ceil32(ceil32(mem[_4103 + mem[_4103]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _4103 + ceil32(return_data.size) + ceil32(ceil32(mem[_4103 + mem[_4103]])) + 1
                    mem[_4103 + ceil32(return_data.size)] = _4167
                    require _4135 + _4167 + 32 <= return_data.size
                    mem[_4103 + ceil32(return_data.size) + 32 len ceil32(_4167)] = mem[_4103 + _4135 + 32 len ceil32(_4167)]
                    if ceil32(_4167) <= _4167:
                        mem[mem[64]] = address(_3)
                        mem[mem[64] + 32] = 64
                        _5306 = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 96 len ceil32(_5306)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5306)]
                        if ceil32(_5306) > _5306:
                            mem[mem[64] + _5306 + 96] = 0
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5306) + 32]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _4167
                        mem[mem[64] + 64 len ceil32(_4167)] = mem[_4103 + ceil32(return_data.size) + 32 len ceil32(_4167)]
                        if ceil32(_4167) > _4167:
                            mem[mem[64] + _4167 + 64] = 0
                    else:
                        mem[_4103 + ceil32(return_data.size) + _4167 + 32] = 0
                        mem[mem[64]] = address(_3)
                        mem[mem[64] + 32] = 64
                        _5338 = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 96 len ceil32(_5338)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5338)]
                        if ceil32(_5338) > _5338:
                            mem[mem[64] + _5338 + 96] = 0
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5338) + 32]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _4167
                        mem[mem[64] + 64 len ceil32(_4167)] = mem[_4103 + ceil32(return_data.size) + 32 len ceil32(_4167)]
                        if ceil32(_4167) > _4167:
                            mem[mem[64] + _4167 + 64] = 0
                    return Array(len=_4167, data=mem[mem[64] + 64 len ceil32(_4167)])
                mem[0] = address(_3)
                mem[32] = 101
                mem[mem[64] + 4] = address(_3)
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_1381)
                require ext_code.size(sub_809f3bc4[address(_3)])
                staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                        gas gas_remaining wei
                       args address(_3), msg.sender, address(_1381)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2782 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2782] == bool(mem[_2782])
                if not mem[_2782]:
                    revert with 0, 'denied'
                mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _2862 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 68 len ceil32(_2862)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2862)]
                if ceil32(_2862) <= _2862:
                    require ext_code.size(address(_3))
                    call address(_3).0xd1b3b979 with:
                         gas gas_remaining wei
                        args 32, mem[mem[64] + 36 len ceil32(_2862) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4088 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4120 = mem[_4088]
                    require mem[_4088] <= test266151307()
                    require _4088 + mem[_4088] + 31 < _4088 + return_data.size
                    _4152 = mem[_4088 + mem[_4088]]
                    if mem[_4088 + mem[_4088]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_4088 + mem[_4088]])) + 1 < 0 or _4088 + ceil32(return_data.size) + ceil32(ceil32(mem[_4088 + mem[_4088]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _4088 + ceil32(return_data.size) + ceil32(ceil32(mem[_4088 + mem[_4088]])) + 1
                    mem[_4088 + ceil32(return_data.size)] = _4152
                    require _4120 + _4152 + 32 <= return_data.size
                    mem[_4088 + ceil32(return_data.size) + 32 len ceil32(_4152)] = mem[_4088 + _4120 + 32 len ceil32(_4152)]
                    if ceil32(_4152) <= _4152:
                        mem[mem[64]] = address(_3)
                        mem[mem[64] + 32] = 64
                        _5307 = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 96 len ceil32(_5307)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5307)]
                        if ceil32(_5307) > _5307:
                            mem[mem[64] + _5307 + 96] = 0
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5307) + 32]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _4152
                        mem[mem[64] + 64 len ceil32(_4152)] = mem[_4088 + ceil32(return_data.size) + 32 len ceil32(_4152)]
                        if ceil32(_4152) > _4152:
                            mem[mem[64] + _4152 + 64] = 0
                    else:
                        mem[_4088 + ceil32(return_data.size) + _4152 + 32] = 0
                        mem[mem[64]] = address(_3)
                        mem[mem[64] + 32] = 64
                        _5339 = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 96 len ceil32(_5339)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5339)]
                        if ceil32(_5339) > _5339:
                            mem[mem[64] + _5339 + 96] = 0
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5339) + 32]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _4152
                        mem[mem[64] + 64 len ceil32(_4152)] = mem[_4088 + ceil32(return_data.size) + 32 len ceil32(_4152)]
                        if ceil32(_4152) > _4152:
                            mem[mem[64] + _4152 + 64] = 0
                    return Array(len=_4152, data=mem[mem[64] + 64 len ceil32(_4152)])
                mem[mem[64] + _2862 + 68] = 0
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len ceil32(_2862) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4104 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4136 = mem[_4104]
                require mem[_4104] <= test266151307()
                require _4104 + mem[_4104] + 31 < _4104 + return_data.size
                _4168 = mem[_4104 + mem[_4104]]
                if mem[_4104 + mem[_4104]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_4104 + mem[_4104]])) + 1 < 0 or _4104 + ceil32(return_data.size) + ceil32(ceil32(mem[_4104 + mem[_4104]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _4104 + ceil32(return_data.size) + ceil32(ceil32(mem[_4104 + mem[_4104]])) + 1
                mem[_4104 + ceil32(return_data.size)] = _4168
                require _4136 + _4168 + 32 <= return_data.size
                mem[_4104 + ceil32(return_data.size) + 32 len ceil32(_4168)] = mem[_4104 + _4136 + 32 len ceil32(_4168)]
                if ceil32(_4168) <= _4168:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5308 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5308)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5308)]
                    if ceil32(_5308) > _5308:
                        mem[mem[64] + _5308 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5308) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4168
                    mem[mem[64] + 64 len ceil32(_4168)] = mem[_4104 + ceil32(return_data.size) + 32 len ceil32(_4168)]
                    if ceil32(_4168) > _4168:
                        mem[mem[64] + _4168 + 64] = 0
                else:
                    mem[_4104 + ceil32(return_data.size) + _4168 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5340 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5340)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5340)]
                    if ceil32(_5340) > _5340:
                        mem[mem[64] + _5340 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5340) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4168
                    mem[mem[64] + 64 len ceil32(_4168)] = mem[_4104 + ceil32(return_data.size) + 32 len ceil32(_4168)]
                    if ceil32(_4168) > _4168:
                        mem[mem[64] + _4168 + 64] = 0
                return Array(len=_4168, data=mem[mem[64] + 64 len ceil32(_4168)])
            mem[0] = address(_3)
            mem[32] = 101
            if not sub_809f3bc4[address(_3)]:
                mem[mem[64] + 4] = address(_3)
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_1381)
                require ext_code.size(sub_7fd80b10Address)
                staticcall sub_7fd80b10Address.0xa58666d3 with:
                        gas gas_remaining wei
                       args address(_3), msg.sender, address(_1381)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2773 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2773] == bool(mem[_2773])
                if not mem[_2773]:
                    revert with 0, 'denied'
                mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _2845 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 68 len ceil32(_2845)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2845)]
                if ceil32(_2845) <= _2845:
                    require ext_code.size(address(_3))
                    call address(_3).0xd1b3b979 with:
                         gas gas_remaining wei
                        args 32, mem[mem[64] + 36 len ceil32(_2845) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4085 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4117 = mem[_4085]
                    require mem[_4085] <= test266151307()
                    require _4085 + mem[_4085] + 31 < _4085 + return_data.size
                    _4149 = mem[_4085 + mem[_4085]]
                    if mem[_4085 + mem[_4085]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_4085 + mem[_4085]])) + 1 < 0 or _4085 + ceil32(return_data.size) + ceil32(ceil32(mem[_4085 + mem[_4085]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _4085 + ceil32(return_data.size) + ceil32(ceil32(mem[_4085 + mem[_4085]])) + 1
                    mem[_4085 + ceil32(return_data.size)] = _4149
                    require _4117 + _4149 + 32 <= return_data.size
                    mem[_4085 + ceil32(return_data.size) + 32 len ceil32(_4149)] = mem[_4085 + _4117 + 32 len ceil32(_4149)]
                    if ceil32(_4149) <= _4149:
                        mem[mem[64]] = address(_3)
                        mem[mem[64] + 32] = 64
                        _5301 = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 96 len ceil32(_5301)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5301)]
                        if ceil32(_5301) > _5301:
                            mem[mem[64] + _5301 + 96] = 0
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5301) + 32]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _4149
                        mem[mem[64] + 64 len ceil32(_4149)] = mem[_4085 + ceil32(return_data.size) + 32 len ceil32(_4149)]
                        if ceil32(_4149) > _4149:
                            mem[mem[64] + _4149 + 64] = 0
                    else:
                        mem[_4085 + ceil32(return_data.size) + _4149 + 32] = 0
                        mem[mem[64]] = address(_3)
                        mem[mem[64] + 32] = 64
                        _5333 = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 96 len ceil32(_5333)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5333)]
                        if ceil32(_5333) > _5333:
                            mem[mem[64] + _5333 + 96] = 0
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5333) + 32]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _4149
                        mem[mem[64] + 64 len ceil32(_4149)] = mem[_4085 + ceil32(return_data.size) + 32 len ceil32(_4149)]
                        if ceil32(_4149) > _4149:
                            mem[mem[64] + _4149 + 64] = 0
                    return Array(len=_4149, data=mem[mem[64] + 64 len ceil32(_4149)])
                mem[mem[64] + _2845 + 68] = 0
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len ceil32(_2845) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4101 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4133 = mem[_4101]
                require mem[_4101] <= test266151307()
                require _4101 + mem[_4101] + 31 < _4101 + return_data.size
                _4165 = mem[_4101 + mem[_4101]]
                if mem[_4101 + mem[_4101]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_4101 + mem[_4101]])) + 1 < 0 or _4101 + ceil32(return_data.size) + ceil32(ceil32(mem[_4101 + mem[_4101]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _4101 + ceil32(return_data.size) + ceil32(ceil32(mem[_4101 + mem[_4101]])) + 1
                mem[_4101 + ceil32(return_data.size)] = _4165
                require _4133 + _4165 + 32 <= return_data.size
                mem[_4101 + ceil32(return_data.size) + 32 len ceil32(_4165)] = mem[_4101 + _4133 + 32 len ceil32(_4165)]
                if ceil32(_4165) <= _4165:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5302 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5302)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5302)]
                    if ceil32(_5302) <= _5302:
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5302) + 32]
                        _6329 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _4165
                        mem[mem[64] + 64 len ceil32(_4165)] = mem[_4101 + ceil32(return_data.size) + 32 len ceil32(_4165)]
                        if ceil32(_4165) <= _4165:
                            return Array(len=_4165, data=mem[mem[64] + 64 len ceil32(_4165)])
                        mem[mem[64] + _4165 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_4165) + _6329 + -mem[64] + 64
                    mem[mem[64] + _5302 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5302) + 32]
                    _6455 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4165
                    mem[mem[64] + 64 len ceil32(_4165)] = mem[_4101 + ceil32(return_data.size) + 32 len ceil32(_4165)]
                    if ceil32(_4165) <= _4165:
                        return Array(len=_4165, data=mem[mem[64] + 64 len ceil32(_4165)])
                    mem[mem[64] + _4165 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_4165) + _6455 + -mem[64] + 64
                mem[_4101 + ceil32(return_data.size) + _4165 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5334 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5334)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5334)]
                if ceil32(_5334) <= _5334:
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5334) + 32]
                    _6331 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4165
                    mem[mem[64] + 64 len ceil32(_4165)] = mem[_4101 + ceil32(return_data.size) + 32 len ceil32(_4165)]
                    if ceil32(_4165) <= _4165:
                        return Array(len=_4165, data=mem[mem[64] + 64 len ceil32(_4165)])
                    mem[mem[64] + _4165 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_4165) + _6331 + -mem[64] + 64
                mem[mem[64] + _5334 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5334) + 32]
                _6456 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4165
                mem[mem[64] + 64 len ceil32(_4165)] = mem[_4101 + ceil32(return_data.size) + 32 len ceil32(_4165)]
                if ceil32(_4165) <= _4165:
                    return Array(len=_4165, data=mem[mem[64] + 64 len ceil32(_4165)])
                mem[mem[64] + _4165 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_4165) + _6456 + -mem[64] + 64
            mem[0] = address(_3)
            mem[32] = 101
            mem[mem[64] + 4] = address(_3)
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_1381)
            require ext_code.size(sub_809f3bc4[address(_3)])
            staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                    gas gas_remaining wei
                   args address(_3), msg.sender, address(_1381)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2774 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2774] == bool(mem[_2774])
            if not mem[_2774]:
                revert with 0, 'denied'
            _2807 = mem[64]
            mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _2846 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 68 len ceil32(_2846)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2846)]
            if ceil32(_2846) <= _2846:
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len ceil32(_2846) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4086 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4118 = mem[_4086]
                require mem[_4086] <= test266151307()
                require _4086 + mem[_4086] + 31 < _4086 + return_data.size
                _4150 = mem[_4086 + mem[_4086]]
                if mem[_4086 + mem[_4086]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_4086 + mem[_4086]])) + 1 < 0 or _4086 + ceil32(return_data.size) + ceil32(ceil32(mem[_4086 + mem[_4086]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _4086 + ceil32(return_data.size) + ceil32(ceil32(mem[_4086 + mem[_4086]])) + 1
                mem[_4086 + ceil32(return_data.size)] = _4150
                require _4118 + _4150 + 32 <= return_data.size
                mem[_4086 + ceil32(return_data.size) + 32 len ceil32(_4150)] = mem[_4086 + _4118 + 32 len ceil32(_4150)]
                if ceil32(_4150) <= _4150:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5303 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5303)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5303)]
                    if ceil32(_5303) > _5303:
                        mem[mem[64] + _5303 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5303) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4150
                    mem[mem[64] + 64 len ceil32(_4150)] = mem[_4086 + ceil32(return_data.size) + 32 len ceil32(_4150)]
                    if ceil32(_4150) > _4150:
                        mem[mem[64] + _4150 + 64] = 0
                else:
                    mem[_4086 + ceil32(return_data.size) + _4150 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5335 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5335)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5335)]
                    if ceil32(_5335) > _5335:
                        mem[mem[64] + _5335 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5335) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4150
                    mem[mem[64] + 64 len ceil32(_4150)] = mem[_4086 + ceil32(return_data.size) + 32 len ceil32(_4150)]
                    if ceil32(_4150) > _4150:
                        mem[mem[64] + _4150 + 64] = 0
                return Array(len=_4150, data=mem[mem[64] + 64 len ceil32(_4150)])
            mem[mem[64] + _2846 + 68] = 0
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(_2846) + _2807 + -mem[64] + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4102 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4134 = mem[_4102]
            require mem[_4102] <= test266151307()
            require _4102 + mem[_4102] + 31 < _4102 + return_data.size
            _4166 = mem[_4102 + mem[_4102]]
            if mem[_4102 + mem[_4102]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_4102 + mem[_4102]])) + 1 < 0 or _4102 + ceil32(return_data.size) + ceil32(ceil32(mem[_4102 + mem[_4102]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _4102 + ceil32(return_data.size) + ceil32(ceil32(mem[_4102 + mem[_4102]])) + 1
            mem[_4102 + ceil32(return_data.size)] = _4166
            require _4134 + _4166 + 32 <= return_data.size
            mem[_4102 + ceil32(return_data.size) + 32 len ceil32(_4166)] = mem[_4102 + _4134 + 32 len ceil32(_4166)]
            if ceil32(_4166) <= _4166:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5304 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5304)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5304)]
                if ceil32(_5304) <= _5304:
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5304) + 32]
                    _6337 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4166
                    mem[mem[64] + 64 len ceil32(_4166)] = mem[_4102 + ceil32(return_data.size) + 32 len ceil32(_4166)]
                    if ceil32(_4166) <= _4166:
                        return Array(len=_4166, data=mem[mem[64] + 64 len ceil32(_4166)])
                    mem[mem[64] + _4166 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_4166) + _6337 + -mem[64] + 64
                mem[mem[64] + _5304 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5304) + 32]
                _6459 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4166
                mem[mem[64] + 64 len ceil32(_4166)] = mem[_4102 + ceil32(return_data.size) + 32 len ceil32(_4166)]
                if ceil32(_4166) <= _4166:
                    return Array(len=_4166, data=mem[mem[64] + 64 len ceil32(_4166)])
                mem[mem[64] + _4166 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_4166) + _6459 + -mem[64] + 64
            mem[_4102 + ceil32(return_data.size) + _4166 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _5336 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_5336)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5336)]
            if ceil32(_5336) <= _5336:
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5336) + 32]
                _6339 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4166
                mem[mem[64] + 64 len ceil32(_4166)] = mem[_4102 + ceil32(return_data.size) + 32 len ceil32(_4166)]
                if ceil32(_4166) <= _4166:
                    return Array(len=_4166, data=mem[mem[64] + 64 len ceil32(_4166)])
                mem[mem[64] + _4166 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_4166) + _6339 + -mem[64] + 64
            mem[mem[64] + _5336 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5336) + 32]
            _6460 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _4166
            mem[mem[64] + 64 len ceil32(_4166)] = mem[_4102 + ceil32(return_data.size) + 32 len ceil32(_4166)]
            if ceil32(_4166) <= _4166:
                return Array(len=_4166, data=mem[mem[64] + 64 len ceil32(_4166)])
            mem[mem[64] + _4166 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_4166) + _6460 + -mem[64] + 64
        mem[0] = address(_3)
        mem[32] = 101
        mem[mem[64]] = 0x3dba5ba800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_3)
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = arg2
        mem[mem[64] + 100] = arg3
        mem[mem[64] + 132] = uint8(arg4)
        mem[mem[64] + 164] = arg5
        mem[mem[64] + 196] = arg6
        require ext_code.size(sub_809f3bc4[address(_3)])
        call sub_809f3bc4[address(_3)].permit(address arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
             gas gas_remaining wei
            args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require _5 >= 128
        _1382 = mem[ceil32(ceil32(arg1.length)) + 129]
        require mem[ceil32(ceil32(arg1.length)) + 129] == mem[ceil32(ceil32(arg1.length)) + 141 len 20]
        require mem[ceil32(ceil32(arg1.length)) + 161] == Mask(32, 224, mem[ceil32(ceil32(arg1.length)) + 161])
        _1390 = mem[ceil32(ceil32(arg1.length)) + 225]
        require mem[ceil32(ceil32(arg1.length)) + 225] <= test266151307()
        require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 160 < ceil32(ceil32(arg1.length)) + _5 + 129
        _1398 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129]
        if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129] > test266151307():
            revert with 'NH{q', 65
        _1402 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1
        mem[_1402] = _1398
        require _1390 + _1398 + 64 <= _5 + 32
        mem[_1402 + 32 len ceil32(_1398)] = mem[ceil32(ceil32(arg1.length)) + _1390 + 161 len ceil32(_1398)]
        if ceil32(_1398) <= _1398:
            mem[0] = address(_3)
            mem[32] = 101
            if not sub_809f3bc4[address(_3)]:
                mem[mem[64] + 4] = address(_3)
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_1382)
                require ext_code.size(sub_7fd80b10Address)
                staticcall sub_7fd80b10Address.0xa58666d3 with:
                        gas gas_remaining wei
                       args address(_3), msg.sender, address(_1382)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2775 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2775] == bool(mem[_2775])
                if not mem[_2775]:
                    revert with 0, 'denied'
                mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _2849 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 68 len ceil32(_2849)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2849)]
                if ceil32(_2849) <= _2849:
                    require ext_code.size(address(_3))
                    call address(_3).0xd1b3b979 with:
                         gas gas_remaining wei
                        args 32, mem[mem[64] + 36 len ceil32(_2849) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4089 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4121 = mem[_4089]
                    require mem[_4089] <= test266151307()
                    require _4089 + mem[_4089] + 31 < _4089 + return_data.size
                    _4153 = mem[_4089 + mem[_4089]]
                    if mem[_4089 + mem[_4089]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_4089 + mem[_4089]])) + 1 < 0 or _4089 + ceil32(return_data.size) + ceil32(ceil32(mem[_4089 + mem[_4089]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _4089 + ceil32(return_data.size) + ceil32(ceil32(mem[_4089 + mem[_4089]])) + 1
                    mem[_4089 + ceil32(return_data.size)] = _4153
                    require _4121 + _4153 + 32 <= return_data.size
                    mem[_4089 + ceil32(return_data.size) + 32 len ceil32(_4153)] = mem[_4089 + _4121 + 32 len ceil32(_4153)]
                    if ceil32(_4153) <= _4153:
                        mem[mem[64]] = address(_3)
                        mem[mem[64] + 32] = 64
                        _5309 = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 96 len ceil32(_5309)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5309)]
                        if ceil32(_5309) > _5309:
                            mem[mem[64] + _5309 + 96] = 0
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5309) + 32]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _4153
                        mem[mem[64] + 64 len ceil32(_4153)] = mem[_4089 + ceil32(return_data.size) + 32 len ceil32(_4153)]
                        if ceil32(_4153) > _4153:
                            mem[mem[64] + _4153 + 64] = 0
                    else:
                        mem[_4089 + ceil32(return_data.size) + _4153 + 32] = 0
                        mem[mem[64]] = address(_3)
                        mem[mem[64] + 32] = 64
                        _5341 = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 96 len ceil32(_5341)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5341)]
                        if ceil32(_5341) > _5341:
                            mem[mem[64] + _5341 + 96] = 0
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5341) + 32]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _4153
                        mem[mem[64] + 64 len ceil32(_4153)] = mem[_4089 + ceil32(return_data.size) + 32 len ceil32(_4153)]
                        if ceil32(_4153) > _4153:
                            mem[mem[64] + _4153 + 64] = 0
                    return Array(len=_4153, data=mem[mem[64] + 64 len ceil32(_4153)])
                mem[mem[64] + _2849 + 68] = 0
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len ceil32(_2849) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4105 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4137 = mem[_4105]
                require mem[_4105] <= test266151307()
                require _4105 + mem[_4105] + 31 < _4105 + return_data.size
                _4169 = mem[_4105 + mem[_4105]]
                if mem[_4105 + mem[_4105]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_4105 + mem[_4105]])) + 1 < 0 or _4105 + ceil32(return_data.size) + ceil32(ceil32(mem[_4105 + mem[_4105]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _4105 + ceil32(return_data.size) + ceil32(ceil32(mem[_4105 + mem[_4105]])) + 1
                mem[_4105 + ceil32(return_data.size)] = _4169
                require _4137 + _4169 + 32 <= return_data.size
                mem[_4105 + ceil32(return_data.size) + 32 len ceil32(_4169)] = mem[_4105 + _4137 + 32 len ceil32(_4169)]
                if ceil32(_4169) <= _4169:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5310 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5310)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5310)]
                    if ceil32(_5310) > _5310:
                        mem[mem[64] + _5310 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5310) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4169
                    mem[mem[64] + 64 len ceil32(_4169)] = mem[_4105 + ceil32(return_data.size) + 32 len ceil32(_4169)]
                    if ceil32(_4169) > _4169:
                        mem[mem[64] + _4169 + 64] = 0
                else:
                    mem[_4105 + ceil32(return_data.size) + _4169 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5342 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5342)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5342)]
                    if ceil32(_5342) > _5342:
                        mem[mem[64] + _5342 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5342) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4169
                    mem[mem[64] + 64 len ceil32(_4169)] = mem[_4105 + ceil32(return_data.size) + 32 len ceil32(_4169)]
                    if ceil32(_4169) > _4169:
                        mem[mem[64] + _4169 + 64] = 0
                return Array(len=_4169, data=mem[mem[64] + 64 len ceil32(_4169)])
            mem[0] = address(_3)
            mem[32] = 101
            mem[mem[64] + 4] = address(_3)
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_1382)
            require ext_code.size(sub_809f3bc4[address(_3)])
            staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                    gas gas_remaining wei
                   args address(_3), msg.sender, address(_1382)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2776 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2776] == bool(mem[_2776])
            if not mem[_2776]:
                revert with 0, 'denied'
            mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _2850 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 68 len ceil32(_2850)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2850)]
            if ceil32(_2850) <= _2850:
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len ceil32(_2850) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4090 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4122 = mem[_4090]
                require mem[_4090] <= test266151307()
                require _4090 + mem[_4090] + 31 < _4090 + return_data.size
                _4154 = mem[_4090 + mem[_4090]]
                if mem[_4090 + mem[_4090]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_4090 + mem[_4090]])) + 1 < 0 or _4090 + ceil32(return_data.size) + ceil32(ceil32(mem[_4090 + mem[_4090]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _4090 + ceil32(return_data.size) + ceil32(ceil32(mem[_4090 + mem[_4090]])) + 1
                mem[_4090 + ceil32(return_data.size)] = _4154
                require _4122 + _4154 + 32 <= return_data.size
                mem[_4090 + ceil32(return_data.size) + 32 len ceil32(_4154)] = mem[_4090 + _4122 + 32 len ceil32(_4154)]
                if ceil32(_4154) <= _4154:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5311 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5311)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5311)]
                    if ceil32(_5311) > _5311:
                        mem[mem[64] + _5311 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5311) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4154
                    mem[mem[64] + 64 len ceil32(_4154)] = mem[_4090 + ceil32(return_data.size) + 32 len ceil32(_4154)]
                    if ceil32(_4154) > _4154:
                        mem[mem[64] + _4154 + 64] = 0
                else:
                    mem[_4090 + ceil32(return_data.size) + _4154 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5343 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5343)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5343)]
                    if ceil32(_5343) > _5343:
                        mem[mem[64] + _5343 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5343) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4154
                    mem[mem[64] + 64 len ceil32(_4154)] = mem[_4090 + ceil32(return_data.size) + 32 len ceil32(_4154)]
                    if ceil32(_4154) > _4154:
                        mem[mem[64] + _4154 + 64] = 0
                return Array(len=_4154, data=mem[mem[64] + 64 len ceil32(_4154)])
            mem[mem[64] + _2850 + 68] = 0
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len ceil32(_2850) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4106 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4138 = mem[_4106]
            require mem[_4106] <= test266151307()
            require _4106 + mem[_4106] + 31 < _4106 + return_data.size
            _4170 = mem[_4106 + mem[_4106]]
            if mem[_4106 + mem[_4106]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_4106 + mem[_4106]])) + 1 < 0 or _4106 + ceil32(return_data.size) + ceil32(ceil32(mem[_4106 + mem[_4106]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _4106 + ceil32(return_data.size) + ceil32(ceil32(mem[_4106 + mem[_4106]])) + 1
            mem[_4106 + ceil32(return_data.size)] = _4170
            require _4138 + _4170 + 32 <= return_data.size
            mem[_4106 + ceil32(return_data.size) + 32 len ceil32(_4170)] = mem[_4106 + _4138 + 32 len ceil32(_4170)]
            if ceil32(_4170) <= _4170:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5312 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5312)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5312)]
                if ceil32(_5312) > _5312:
                    mem[mem[64] + _5312 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5312) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4170
                mem[mem[64] + 64 len ceil32(_4170)] = mem[_4106 + ceil32(return_data.size) + 32 len ceil32(_4170)]
                if ceil32(_4170) > _4170:
                    mem[mem[64] + _4170 + 64] = 0
            else:
                mem[_4106 + ceil32(return_data.size) + _4170 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5344 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5344)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5344)]
                if ceil32(_5344) > _5344:
                    mem[mem[64] + _5344 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5344) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4170
                mem[mem[64] + 64 len ceil32(_4170)] = mem[_4106 + ceil32(return_data.size) + 32 len ceil32(_4170)]
                if ceil32(_4170) > _4170:
                    mem[mem[64] + _4170 + 64] = 0
            return Array(len=_4170, data=mem[mem[64] + 64 len ceil32(_4170)])
        mem[_1402 + _1398 + 32] = 0
        mem[0] = address(_3)
        mem[32] = 101
        if not sub_809f3bc4[address(_3)]:
            mem[mem[64] + 4] = address(_3)
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_1382)
            require ext_code.size(sub_7fd80b10Address)
            staticcall sub_7fd80b10Address.0xa58666d3 with:
                    gas gas_remaining wei
                   args address(_3), msg.sender, address(_1382)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2783 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2783] == bool(mem[_2783])
            if not mem[_2783]:
                revert with 0, 'denied'
            mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _2863 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 68 len ceil32(_2863)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2863)]
            if ceil32(_2863) <= _2863:
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len ceil32(_2863) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4091 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4123 = mem[_4091]
                require mem[_4091] <= test266151307()
                require _4091 + mem[_4091] + 31 < _4091 + return_data.size
                _4155 = mem[_4091 + mem[_4091]]
                if mem[_4091 + mem[_4091]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_4091 + mem[_4091]])) + 1 < 0 or _4091 + ceil32(return_data.size) + ceil32(ceil32(mem[_4091 + mem[_4091]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _4091 + ceil32(return_data.size) + ceil32(ceil32(mem[_4091 + mem[_4091]])) + 1
                mem[_4091 + ceil32(return_data.size)] = _4155
                require _4123 + _4155 + 32 <= return_data.size
                mem[_4091 + ceil32(return_data.size) + 32 len ceil32(_4155)] = mem[_4091 + _4123 + 32 len ceil32(_4155)]
                if ceil32(_4155) <= _4155:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5313 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5313)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5313)]
                    if ceil32(_5313) > _5313:
                        mem[mem[64] + _5313 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5313) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4155
                    mem[mem[64] + 64 len ceil32(_4155)] = mem[_4091 + ceil32(return_data.size) + 32 len ceil32(_4155)]
                    if ceil32(_4155) > _4155:
                        mem[mem[64] + _4155 + 64] = 0
                else:
                    mem[_4091 + ceil32(return_data.size) + _4155 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5345 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5345)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5345)]
                    if ceil32(_5345) > _5345:
                        mem[mem[64] + _5345 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5345) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4155
                    mem[mem[64] + 64 len ceil32(_4155)] = mem[_4091 + ceil32(return_data.size) + 32 len ceil32(_4155)]
                    if ceil32(_4155) > _4155:
                        mem[mem[64] + _4155 + 64] = 0
                return Array(len=_4155, data=mem[mem[64] + 64 len ceil32(_4155)])
            mem[mem[64] + _2863 + 68] = 0
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len ceil32(_2863) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4107 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4139 = mem[_4107]
            require mem[_4107] <= test266151307()
            require _4107 + mem[_4107] + 31 < _4107 + return_data.size
            _4171 = mem[_4107 + mem[_4107]]
            if mem[_4107 + mem[_4107]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_4107 + mem[_4107]])) + 1 < 0 or _4107 + ceil32(return_data.size) + ceil32(ceil32(mem[_4107 + mem[_4107]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _4107 + ceil32(return_data.size) + ceil32(ceil32(mem[_4107 + mem[_4107]])) + 1
            mem[_4107 + ceil32(return_data.size)] = _4171
            require _4139 + _4171 + 32 <= return_data.size
            mem[_4107 + ceil32(return_data.size) + 32 len ceil32(_4171)] = mem[_4107 + _4139 + 32 len ceil32(_4171)]
            if ceil32(_4171) <= _4171:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5314 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5314)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5314)]
                if ceil32(_5314) > _5314:
                    mem[mem[64] + _5314 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5314) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4171
                mem[mem[64] + 64 len ceil32(_4171)] = mem[_4107 + ceil32(return_data.size) + 32 len ceil32(_4171)]
                if ceil32(_4171) > _4171:
                    mem[mem[64] + _4171 + 64] = 0
            else:
                mem[_4107 + ceil32(return_data.size) + _4171 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5346 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5346)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5346)]
                if ceil32(_5346) > _5346:
                    mem[mem[64] + _5346 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5346) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4171
                mem[mem[64] + 64 len ceil32(_4171)] = mem[_4107 + ceil32(return_data.size) + 32 len ceil32(_4171)]
                if ceil32(_4171) > _4171:
                    mem[mem[64] + _4171 + 64] = 0
            return Array(len=_4171, data=mem[mem[64] + 64 len ceil32(_4171)])
        mem[0] = address(_3)
        mem[32] = 101
        mem[mem[64] + 4] = address(_3)
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_1382)
        require ext_code.size(sub_809f3bc4[address(_3)])
        staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                gas gas_remaining wei
               args address(_3), msg.sender, address(_1382)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2784 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2784] == bool(mem[_2784])
        if not mem[_2784]:
            revert with 0, 'denied'
        mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2864 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 68 len ceil32(_2864)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2864)]
        if ceil32(_2864) <= _2864:
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len ceil32(_2864) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4092 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4124 = mem[_4092]
            require mem[_4092] <= test266151307()
            require _4092 + mem[_4092] + 31 < _4092 + return_data.size
            _4156 = mem[_4092 + mem[_4092]]
            if mem[_4092 + mem[_4092]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_4092 + mem[_4092]])) + 1 < 0 or _4092 + ceil32(return_data.size) + ceil32(ceil32(mem[_4092 + mem[_4092]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _4092 + ceil32(return_data.size) + ceil32(ceil32(mem[_4092 + mem[_4092]])) + 1
            mem[_4092 + ceil32(return_data.size)] = _4156
            require _4124 + _4156 + 32 <= return_data.size
            mem[_4092 + ceil32(return_data.size) + 32 len ceil32(_4156)] = mem[_4092 + _4124 + 32 len ceil32(_4156)]
            if ceil32(_4156) <= _4156:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5315 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5315)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5315)]
                if ceil32(_5315) > _5315:
                    mem[mem[64] + _5315 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5315) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4156
                mem[mem[64] + 64 len ceil32(_4156)] = mem[_4092 + ceil32(return_data.size) + 32 len ceil32(_4156)]
                if ceil32(_4156) > _4156:
                    mem[mem[64] + _4156 + 64] = 0
            else:
                mem[_4092 + ceil32(return_data.size) + _4156 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5347 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5347)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5347)]
                if ceil32(_5347) > _5347:
                    mem[mem[64] + _5347 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5347) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4156
                mem[mem[64] + 64 len ceil32(_4156)] = mem[_4092 + ceil32(return_data.size) + 32 len ceil32(_4156)]
                if ceil32(_4156) > _4156:
                    mem[mem[64] + _4156 + 64] = 0
            return Array(len=_4156, data=mem[mem[64] + 64 len ceil32(_4156)])
        mem[mem[64] + _2864 + 68] = 0
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len ceil32(_2864) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4108 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4140 = mem[_4108]
        require mem[_4108] <= test266151307()
        require _4108 + mem[_4108] + 31 < _4108 + return_data.size
        _4172 = mem[_4108 + mem[_4108]]
        if mem[_4108 + mem[_4108]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_4108 + mem[_4108]])) + 1 < 0 or _4108 + ceil32(return_data.size) + ceil32(ceil32(mem[_4108 + mem[_4108]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _4108 + ceil32(return_data.size) + ceil32(ceil32(mem[_4108 + mem[_4108]])) + 1
        mem[_4108 + ceil32(return_data.size)] = _4172
        require _4140 + _4172 + 32 <= return_data.size
        mem[_4108 + ceil32(return_data.size) + 32 len ceil32(_4172)] = mem[_4108 + _4140 + 32 len ceil32(_4172)]
        if ceil32(_4172) <= _4172:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _5316 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_5316)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5316)]
            if ceil32(_5316) > _5316:
                mem[mem[64] + _5316 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5316) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _4172
            mem[mem[64] + 64 len ceil32(_4172)] = mem[_4108 + ceil32(return_data.size) + 32 len ceil32(_4172)]
            if ceil32(_4172) > _4172:
                mem[mem[64] + _4172 + 64] = 0
        else:
            mem[_4108 + ceil32(return_data.size) + _4172 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _5348 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_5348)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5348)]
            if ceil32(_5348) > _5348:
                mem[mem[64] + _5348 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5348) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _4172
            mem[mem[64] + 64 len ceil32(_4172)] = mem[_4108 + ceil32(return_data.size) + 32 len ceil32(_4172)]
            if ceil32(_4172) > _4172:
                mem[mem[64] + _4172 + 64] = 0
        return Array(len=_4172, data=mem[mem[64] + 64 len ceil32(_4172)])
    mem[ceil32(ceil32(arg1.length)) + _5 + 129] = 0
    mem[0] = address(_3)
    mem[32] = 101
    if not sub_809f3bc4[address(_3)]:
        mem[mem[64]] = 0x3dba5ba800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_3)
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = arg2
        mem[mem[64] + 100] = arg3
        mem[mem[64] + 132] = uint8(arg4)
        mem[mem[64] + 164] = arg5
        mem[mem[64] + 196] = arg6
        require ext_code.size(sub_7fd80b10Address)
        call sub_7fd80b10Address.permit(address arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
             gas gas_remaining wei
            args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require _5 >= 128
        _1383 = mem[ceil32(ceil32(arg1.length)) + 129]
        require mem[ceil32(ceil32(arg1.length)) + 129] == mem[ceil32(ceil32(arg1.length)) + 141 len 20]
        require mem[ceil32(ceil32(arg1.length)) + 161] == Mask(32, 224, mem[ceil32(ceil32(arg1.length)) + 161])
        _1394 = mem[ceil32(ceil32(arg1.length)) + 225]
        require mem[ceil32(ceil32(arg1.length)) + 225] <= test266151307()
        require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 160 < ceil32(ceil32(arg1.length)) + _5 + 129
        _1399 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129]
        if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129] > test266151307():
            revert with 'NH{q', 65
        _1403 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1
        mem[_1403] = _1399
        require _1394 + _1399 + 64 <= _5 + 32
        mem[_1403 + 32 len ceil32(_1399)] = mem[ceil32(ceil32(arg1.length)) + _1394 + 161 len ceil32(_1399)]
        if ceil32(_1399) <= _1399:
            mem[0] = address(_3)
            mem[32] = 101
            if not sub_809f3bc4[address(_3)]:
                mem[mem[64] + 4] = address(_3)
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = address(_1383)
                require ext_code.size(sub_7fd80b10Address)
                staticcall sub_7fd80b10Address.0xa58666d3 with:
                        gas gas_remaining wei
                       args address(_3), msg.sender, address(_1383)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2777 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2777] == bool(mem[_2777])
                if not mem[_2777]:
                    revert with 0, 'denied'
                mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _2853 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 68 len ceil32(_2853)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2853)]
                if ceil32(_2853) <= _2853:
                    require ext_code.size(address(_3))
                    call address(_3).0xd1b3b979 with:
                         gas gas_remaining wei
                        args 32, mem[mem[64] + 36 len ceil32(_2853) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4093 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4125 = mem[_4093]
                    require mem[_4093] <= test266151307()
                    require _4093 + mem[_4093] + 31 < _4093 + return_data.size
                    _4157 = mem[_4093 + mem[_4093]]
                    if mem[_4093 + mem[_4093]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_4093 + mem[_4093]])) + 1 < 0 or _4093 + ceil32(return_data.size) + ceil32(ceil32(mem[_4093 + mem[_4093]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _4093 + ceil32(return_data.size) + ceil32(ceil32(mem[_4093 + mem[_4093]])) + 1
                    mem[_4093 + ceil32(return_data.size)] = _4157
                    require _4125 + _4157 + 32 <= return_data.size
                    mem[_4093 + ceil32(return_data.size) + 32 len ceil32(_4157)] = mem[_4093 + _4125 + 32 len ceil32(_4157)]
                    if ceil32(_4157) <= _4157:
                        mem[mem[64]] = address(_3)
                        mem[mem[64] + 32] = 64
                        _5317 = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 96 len ceil32(_5317)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5317)]
                        if ceil32(_5317) > _5317:
                            mem[mem[64] + _5317 + 96] = 0
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5317) + 32]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _4157
                        mem[mem[64] + 64 len ceil32(_4157)] = mem[_4093 + ceil32(return_data.size) + 32 len ceil32(_4157)]
                        if ceil32(_4157) > _4157:
                            mem[mem[64] + _4157 + 64] = 0
                    else:
                        mem[_4093 + ceil32(return_data.size) + _4157 + 32] = 0
                        mem[mem[64]] = address(_3)
                        mem[mem[64] + 32] = 64
                        _5349 = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                        mem[mem[64] + 96 len ceil32(_5349)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5349)]
                        if ceil32(_5349) > _5349:
                            mem[mem[64] + _5349 + 96] = 0
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5349) + 32]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _4157
                        mem[mem[64] + 64 len ceil32(_4157)] = mem[_4093 + ceil32(return_data.size) + 32 len ceil32(_4157)]
                        if ceil32(_4157) > _4157:
                            mem[mem[64] + _4157 + 64] = 0
                    return Array(len=_4157, data=mem[mem[64] + 64 len ceil32(_4157)])
                mem[mem[64] + _2853 + 68] = 0
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len ceil32(_2853) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4109 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4141 = mem[_4109]
                require mem[_4109] <= test266151307()
                require _4109 + mem[_4109] + 31 < _4109 + return_data.size
                _4173 = mem[_4109 + mem[_4109]]
                if mem[_4109 + mem[_4109]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_4109 + mem[_4109]])) + 1 < 0 or _4109 + ceil32(return_data.size) + ceil32(ceil32(mem[_4109 + mem[_4109]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _4109 + ceil32(return_data.size) + ceil32(ceil32(mem[_4109 + mem[_4109]])) + 1
                mem[_4109 + ceil32(return_data.size)] = _4173
                require _4141 + _4173 + 32 <= return_data.size
                mem[_4109 + ceil32(return_data.size) + 32 len ceil32(_4173)] = mem[_4109 + _4141 + 32 len ceil32(_4173)]
                if ceil32(_4173) <= _4173:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5318 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5318)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5318)]
                    if ceil32(_5318) > _5318:
                        mem[mem[64] + _5318 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5318) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4173
                    mem[mem[64] + 64 len ceil32(_4173)] = mem[_4109 + ceil32(return_data.size) + 32 len ceil32(_4173)]
                    if ceil32(_4173) > _4173:
                        mem[mem[64] + _4173 + 64] = 0
                else:
                    mem[_4109 + ceil32(return_data.size) + _4173 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5350 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5350)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5350)]
                    if ceil32(_5350) > _5350:
                        mem[mem[64] + _5350 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5350) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4173
                    mem[mem[64] + 64 len ceil32(_4173)] = mem[_4109 + ceil32(return_data.size) + 32 len ceil32(_4173)]
                    if ceil32(_4173) > _4173:
                        mem[mem[64] + _4173 + 64] = 0
                return Array(len=_4173, data=mem[mem[64] + 64 len ceil32(_4173)])
            mem[0] = address(_3)
            mem[32] = 101
            mem[mem[64] + 4] = address(_3)
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_1383)
            require ext_code.size(sub_809f3bc4[address(_3)])
            staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                    gas gas_remaining wei
                   args address(_3), msg.sender, address(_1383)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2778 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2778] == bool(mem[_2778])
            if not mem[_2778]:
                revert with 0, 'denied'
            mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _2854 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 68 len ceil32(_2854)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2854)]
            if ceil32(_2854) <= _2854:
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len ceil32(_2854) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4094 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4126 = mem[_4094]
                require mem[_4094] <= test266151307()
                require _4094 + mem[_4094] + 31 < _4094 + return_data.size
                _4158 = mem[_4094 + mem[_4094]]
                if mem[_4094 + mem[_4094]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_4094 + mem[_4094]])) + 1 < 0 or _4094 + ceil32(return_data.size) + ceil32(ceil32(mem[_4094 + mem[_4094]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _4094 + ceil32(return_data.size) + ceil32(ceil32(mem[_4094 + mem[_4094]])) + 1
                mem[_4094 + ceil32(return_data.size)] = _4158
                require _4126 + _4158 + 32 <= return_data.size
                mem[_4094 + ceil32(return_data.size) + 32 len ceil32(_4158)] = mem[_4094 + _4126 + 32 len ceil32(_4158)]
                if ceil32(_4158) <= _4158:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5319 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5319)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5319)]
                    if ceil32(_5319) > _5319:
                        mem[mem[64] + _5319 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5319) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4158
                    mem[mem[64] + 64 len ceil32(_4158)] = mem[_4094 + ceil32(return_data.size) + 32 len ceil32(_4158)]
                    if ceil32(_4158) > _4158:
                        mem[mem[64] + _4158 + 64] = 0
                else:
                    mem[_4094 + ceil32(return_data.size) + _4158 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5351 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5351)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5351)]
                    if ceil32(_5351) > _5351:
                        mem[mem[64] + _5351 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5351) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4158
                    mem[mem[64] + 64 len ceil32(_4158)] = mem[_4094 + ceil32(return_data.size) + 32 len ceil32(_4158)]
                    if ceil32(_4158) > _4158:
                        mem[mem[64] + _4158 + 64] = 0
                return Array(len=_4158, data=mem[mem[64] + 64 len ceil32(_4158)])
            mem[mem[64] + _2854 + 68] = 0
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len ceil32(_2854) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4110 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4142 = mem[_4110]
            require mem[_4110] <= test266151307()
            require _4110 + mem[_4110] + 31 < _4110 + return_data.size
            _4174 = mem[_4110 + mem[_4110]]
            if mem[_4110 + mem[_4110]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_4110 + mem[_4110]])) + 1 < 0 or _4110 + ceil32(return_data.size) + ceil32(ceil32(mem[_4110 + mem[_4110]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _4110 + ceil32(return_data.size) + ceil32(ceil32(mem[_4110 + mem[_4110]])) + 1
            mem[_4110 + ceil32(return_data.size)] = _4174
            require _4142 + _4174 + 32 <= return_data.size
            mem[_4110 + ceil32(return_data.size) + 32 len ceil32(_4174)] = mem[_4110 + _4142 + 32 len ceil32(_4174)]
            if ceil32(_4174) <= _4174:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5320 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5320)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5320)]
                if ceil32(_5320) > _5320:
                    mem[mem[64] + _5320 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5320) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4174
                mem[mem[64] + 64 len ceil32(_4174)] = mem[_4110 + ceil32(return_data.size) + 32 len ceil32(_4174)]
                if ceil32(_4174) > _4174:
                    mem[mem[64] + _4174 + 64] = 0
            else:
                mem[_4110 + ceil32(return_data.size) + _4174 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5352 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5352)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5352)]
                if ceil32(_5352) > _5352:
                    mem[mem[64] + _5352 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5352) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4174
                mem[mem[64] + 64 len ceil32(_4174)] = mem[_4110 + ceil32(return_data.size) + 32 len ceil32(_4174)]
                if ceil32(_4174) > _4174:
                    mem[mem[64] + _4174 + 64] = 0
            return Array(len=_4174, data=mem[mem[64] + 64 len ceil32(_4174)])
        mem[_1403 + _1399 + 32] = 0
        mem[0] = address(_3)
        mem[32] = 101
        if not sub_809f3bc4[address(_3)]:
            mem[mem[64] + 4] = address(_3)
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_1383)
            require ext_code.size(sub_7fd80b10Address)
            staticcall sub_7fd80b10Address.0xa58666d3 with:
                    gas gas_remaining wei
                   args address(_3), msg.sender, address(_1383)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2785 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2785] == bool(mem[_2785])
            if not mem[_2785]:
                revert with 0, 'denied'
            mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _2865 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 68 len ceil32(_2865)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2865)]
            if ceil32(_2865) <= _2865:
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len ceil32(_2865) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4095 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4127 = mem[_4095]
                require mem[_4095] <= test266151307()
                require _4095 + mem[_4095] + 31 < _4095 + return_data.size
                _4159 = mem[_4095 + mem[_4095]]
                if mem[_4095 + mem[_4095]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_4095 + mem[_4095]])) + 1 < 0 or _4095 + ceil32(return_data.size) + ceil32(ceil32(mem[_4095 + mem[_4095]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _4095 + ceil32(return_data.size) + ceil32(ceil32(mem[_4095 + mem[_4095]])) + 1
                mem[_4095 + ceil32(return_data.size)] = _4159
                require _4127 + _4159 + 32 <= return_data.size
                mem[_4095 + ceil32(return_data.size) + 32 len ceil32(_4159)] = mem[_4095 + _4127 + 32 len ceil32(_4159)]
                if ceil32(_4159) <= _4159:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5321 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5321)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5321)]
                    if ceil32(_5321) > _5321:
                        mem[mem[64] + _5321 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5321) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4159
                    mem[mem[64] + 64 len ceil32(_4159)] = mem[_4095 + ceil32(return_data.size) + 32 len ceil32(_4159)]
                    if ceil32(_4159) > _4159:
                        mem[mem[64] + _4159 + 64] = 0
                else:
                    mem[_4095 + ceil32(return_data.size) + _4159 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5353 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5353)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5353)]
                    if ceil32(_5353) > _5353:
                        mem[mem[64] + _5353 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5353) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4159
                    mem[mem[64] + 64 len ceil32(_4159)] = mem[_4095 + ceil32(return_data.size) + 32 len ceil32(_4159)]
                    if ceil32(_4159) > _4159:
                        mem[mem[64] + _4159 + 64] = 0
                return Array(len=_4159, data=mem[mem[64] + 64 len ceil32(_4159)])
            mem[mem[64] + _2865 + 68] = 0
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len ceil32(_2865) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4111 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4143 = mem[_4111]
            require mem[_4111] <= test266151307()
            require _4111 + mem[_4111] + 31 < _4111 + return_data.size
            _4175 = mem[_4111 + mem[_4111]]
            if mem[_4111 + mem[_4111]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_4111 + mem[_4111]])) + 1 < 0 or _4111 + ceil32(return_data.size) + ceil32(ceil32(mem[_4111 + mem[_4111]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _4111 + ceil32(return_data.size) + ceil32(ceil32(mem[_4111 + mem[_4111]])) + 1
            mem[_4111 + ceil32(return_data.size)] = _4175
            require _4143 + _4175 + 32 <= return_data.size
            mem[_4111 + ceil32(return_data.size) + 32 len ceil32(_4175)] = mem[_4111 + _4143 + 32 len ceil32(_4175)]
            if ceil32(_4175) <= _4175:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5322 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5322)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5322)]
                if ceil32(_5322) > _5322:
                    mem[mem[64] + _5322 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5322) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4175
                mem[mem[64] + 64 len ceil32(_4175)] = mem[_4111 + ceil32(return_data.size) + 32 len ceil32(_4175)]
                if ceil32(_4175) > _4175:
                    mem[mem[64] + _4175 + 64] = 0
            else:
                mem[_4111 + ceil32(return_data.size) + _4175 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5354 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5354)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5354)]
                if ceil32(_5354) > _5354:
                    mem[mem[64] + _5354 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5354) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4175
                mem[mem[64] + 64 len ceil32(_4175)] = mem[_4111 + ceil32(return_data.size) + 32 len ceil32(_4175)]
                if ceil32(_4175) > _4175:
                    mem[mem[64] + _4175 + 64] = 0
            return Array(len=_4175, data=mem[mem[64] + 64 len ceil32(_4175)])
        mem[0] = address(_3)
        mem[32] = 101
        mem[mem[64] + 4] = address(_3)
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_1383)
        require ext_code.size(sub_809f3bc4[address(_3)])
        staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                gas gas_remaining wei
               args address(_3), msg.sender, address(_1383)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2786 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2786] == bool(mem[_2786])
        if not mem[_2786]:
            revert with 0, 'denied'
        mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2866 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 68 len ceil32(_2866)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2866)]
        if ceil32(_2866) <= _2866:
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len ceil32(_2866) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4096 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4128 = mem[_4096]
            require mem[_4096] <= test266151307()
            require _4096 + mem[_4096] + 31 < _4096 + return_data.size
            _4160 = mem[_4096 + mem[_4096]]
            if mem[_4096 + mem[_4096]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_4096 + mem[_4096]])) + 1 < 0 or _4096 + ceil32(return_data.size) + ceil32(ceil32(mem[_4096 + mem[_4096]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _4096 + ceil32(return_data.size) + ceil32(ceil32(mem[_4096 + mem[_4096]])) + 1
            mem[_4096 + ceil32(return_data.size)] = _4160
            require _4128 + _4160 + 32 <= return_data.size
            mem[_4096 + ceil32(return_data.size) + 32 len ceil32(_4160)] = mem[_4096 + _4128 + 32 len ceil32(_4160)]
            if ceil32(_4160) <= _4160:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5323 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5323)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5323)]
                if ceil32(_5323) > _5323:
                    mem[mem[64] + _5323 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5323) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4160
                mem[mem[64] + 64 len ceil32(_4160)] = mem[_4096 + ceil32(return_data.size) + 32 len ceil32(_4160)]
                if ceil32(_4160) > _4160:
                    mem[mem[64] + _4160 + 64] = 0
            else:
                mem[_4096 + ceil32(return_data.size) + _4160 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5355 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5355)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5355)]
                if ceil32(_5355) > _5355:
                    mem[mem[64] + _5355 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5355) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4160
                mem[mem[64] + 64 len ceil32(_4160)] = mem[_4096 + ceil32(return_data.size) + 32 len ceil32(_4160)]
                if ceil32(_4160) > _4160:
                    mem[mem[64] + _4160 + 64] = 0
            return Array(len=_4160, data=mem[mem[64] + 64 len ceil32(_4160)])
        mem[mem[64] + _2866 + 68] = 0
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len ceil32(_2866) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4112 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4144 = mem[_4112]
        require mem[_4112] <= test266151307()
        require _4112 + mem[_4112] + 31 < _4112 + return_data.size
        _4176 = mem[_4112 + mem[_4112]]
        if mem[_4112 + mem[_4112]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_4112 + mem[_4112]])) + 1 < 0 or _4112 + ceil32(return_data.size) + ceil32(ceil32(mem[_4112 + mem[_4112]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _4112 + ceil32(return_data.size) + ceil32(ceil32(mem[_4112 + mem[_4112]])) + 1
        mem[_4112 + ceil32(return_data.size)] = _4176
        require _4144 + _4176 + 32 <= return_data.size
        mem[_4112 + ceil32(return_data.size) + 32 len ceil32(_4176)] = mem[_4112 + _4144 + 32 len ceil32(_4176)]
        if ceil32(_4176) <= _4176:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _5324 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_5324)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5324)]
            if ceil32(_5324) > _5324:
                mem[mem[64] + _5324 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5324) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _4176
            mem[mem[64] + 64 len ceil32(_4176)] = mem[_4112 + ceil32(return_data.size) + 32 len ceil32(_4176)]
            if ceil32(_4176) > _4176:
                mem[mem[64] + _4176 + 64] = 0
        else:
            mem[_4112 + ceil32(return_data.size) + _4176 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _5356 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_5356)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5356)]
            if ceil32(_5356) > _5356:
                mem[mem[64] + _5356 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5356) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _4176
            mem[mem[64] + 64 len ceil32(_4176)] = mem[_4112 + ceil32(return_data.size) + 32 len ceil32(_4176)]
            if ceil32(_4176) > _4176:
                mem[mem[64] + _4176 + 64] = 0
        return Array(len=_4176, data=mem[mem[64] + 64 len ceil32(_4176)])
    mem[0] = address(_3)
    mem[32] = 101
    mem[mem[64]] = 0x3dba5ba800000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(_3)
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = arg2
    mem[mem[64] + 100] = arg3
    mem[mem[64] + 132] = uint8(arg4)
    mem[mem[64] + 164] = arg5
    mem[mem[64] + 196] = arg6
    require ext_code.size(sub_809f3bc4[address(_3)])
    call sub_809f3bc4[address(_3)].permit(address arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
         gas gas_remaining wei
        args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require _5 >= 128
    _1384 = mem[ceil32(ceil32(arg1.length)) + 129]
    require mem[ceil32(ceil32(arg1.length)) + 129] == mem[ceil32(ceil32(arg1.length)) + 141 len 20]
    require mem[ceil32(ceil32(arg1.length)) + 161] == Mask(32, 224, mem[ceil32(ceil32(arg1.length)) + 161])
    _1396 = mem[ceil32(ceil32(arg1.length)) + 225]
    require mem[ceil32(ceil32(arg1.length)) + 225] <= test266151307()
    require ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 160 < ceil32(ceil32(arg1.length)) + _5 + 129
    _1400 = mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129]
    if mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129] > test266151307():
        revert with 'NH{q', 65
    _1404 = mem[64]
    if mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 225] + 129])) + 1
    mem[_1404] = _1400
    require _1396 + _1400 + 64 <= _5 + 32
    mem[_1404 + 32 len ceil32(_1400)] = mem[ceil32(ceil32(arg1.length)) + _1396 + 161 len ceil32(_1400)]
    if ceil32(_1400) <= _1400:
        mem[0] = address(_3)
        mem[32] = 101
        if not sub_809f3bc4[address(_3)]:
            mem[mem[64] + 4] = address(_3)
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = address(_1384)
            require ext_code.size(sub_7fd80b10Address)
            staticcall sub_7fd80b10Address.0xa58666d3 with:
                    gas gas_remaining wei
                   args address(_3), msg.sender, address(_1384)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2779 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2779] == bool(mem[_2779])
            if not mem[_2779]:
                revert with 0, 'denied'
            mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _2857 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 68 len ceil32(_2857)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2857)]
            if ceil32(_2857) <= _2857:
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args 32, mem[mem[64] + 36 len ceil32(_2857) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4097 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4129 = mem[_4097]
                require mem[_4097] <= test266151307()
                require _4097 + mem[_4097] + 31 < _4097 + return_data.size
                _4161 = mem[_4097 + mem[_4097]]
                if mem[_4097 + mem[_4097]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_4097 + mem[_4097]])) + 1 < 0 or _4097 + ceil32(return_data.size) + ceil32(ceil32(mem[_4097 + mem[_4097]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _4097 + ceil32(return_data.size) + ceil32(ceil32(mem[_4097 + mem[_4097]])) + 1
                mem[_4097 + ceil32(return_data.size)] = _4161
                require _4129 + _4161 + 32 <= return_data.size
                mem[_4097 + ceil32(return_data.size) + 32 len ceil32(_4161)] = mem[_4097 + _4129 + 32 len ceil32(_4161)]
                if ceil32(_4161) <= _4161:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5325 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5325)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5325)]
                    if ceil32(_5325) > _5325:
                        mem[mem[64] + _5325 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5325) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4161
                    mem[mem[64] + 64 len ceil32(_4161)] = mem[_4097 + ceil32(return_data.size) + 32 len ceil32(_4161)]
                    if ceil32(_4161) > _4161:
                        mem[mem[64] + _4161 + 64] = 0
                else:
                    mem[_4097 + ceil32(return_data.size) + _4161 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _5357 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 96 len ceil32(_5357)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5357)]
                    if ceil32(_5357) > _5357:
                        mem[mem[64] + _5357 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5357) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4161
                    mem[mem[64] + 64 len ceil32(_4161)] = mem[_4097 + ceil32(return_data.size) + 32 len ceil32(_4161)]
                    if ceil32(_4161) > _4161:
                        mem[mem[64] + _4161 + 64] = 0
                return Array(len=_4161, data=mem[mem[64] + 64 len ceil32(_4161)])
            mem[mem[64] + _2857 + 68] = 0
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len ceil32(_2857) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4113 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4145 = mem[_4113]
            require mem[_4113] <= test266151307()
            require _4113 + mem[_4113] + 31 < _4113 + return_data.size
            _4177 = mem[_4113 + mem[_4113]]
            if mem[_4113 + mem[_4113]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_4113 + mem[_4113]])) + 1 < 0 or _4113 + ceil32(return_data.size) + ceil32(ceil32(mem[_4113 + mem[_4113]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _4113 + ceil32(return_data.size) + ceil32(ceil32(mem[_4113 + mem[_4113]])) + 1
            mem[_4113 + ceil32(return_data.size)] = _4177
            require _4145 + _4177 + 32 <= return_data.size
            mem[_4113 + ceil32(return_data.size) + 32 len ceil32(_4177)] = mem[_4113 + _4145 + 32 len ceil32(_4177)]
            if ceil32(_4177) <= _4177:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5326 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5326)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5326)]
                if ceil32(_5326) <= _5326:
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5326) + 32]
                    _6425 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _4177
                    mem[mem[64] + 64 len ceil32(_4177)] = mem[_4113 + ceil32(return_data.size) + 32 len ceil32(_4177)]
                    if ceil32(_4177) <= _4177:
                        return Array(len=_4177, data=mem[mem[64] + 64 len ceil32(_4177)])
                    mem[mem[64] + _4177 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_4177) + _6425 + -mem[64] + 64
                mem[mem[64] + _5326 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5326) + 32]
                _6503 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4177
                mem[mem[64] + 64 len ceil32(_4177)] = mem[_4113 + ceil32(return_data.size) + 32 len ceil32(_4177)]
                if ceil32(_4177) <= _4177:
                    return Array(len=_4177, data=mem[mem[64] + 64 len ceil32(_4177)])
                mem[mem[64] + _4177 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_4177) + _6503 + -mem[64] + 64
            mem[_4113 + ceil32(return_data.size) + _4177 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _5358 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_5358)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5358)]
            if ceil32(_5358) <= _5358:
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5358) + 32]
                _6427 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4177
                mem[mem[64] + 64 len ceil32(_4177)] = mem[_4113 + ceil32(return_data.size) + 32 len ceil32(_4177)]
                if ceil32(_4177) <= _4177:
                    return Array(len=_4177, data=mem[mem[64] + 64 len ceil32(_4177)])
                mem[mem[64] + _4177 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_4177) + _6427 + -mem[64] + 64
            mem[mem[64] + _5358 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5358) + 32]
            _6504 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _4177
            mem[mem[64] + 64 len ceil32(_4177)] = mem[_4113 + ceil32(return_data.size) + 32 len ceil32(_4177)]
            if ceil32(_4177) <= _4177:
                return Array(len=_4177, data=mem[mem[64] + 64 len ceil32(_4177)])
            mem[mem[64] + _4177 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_4177) + _6504 + -mem[64] + 64
        mem[0] = address(_3)
        mem[32] = 101
        mem[mem[64] + 4] = address(_3)
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_1384)
        require ext_code.size(sub_809f3bc4[address(_3)])
        staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                gas gas_remaining wei
               args address(_3), msg.sender, address(_1384)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2780 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2780] == bool(mem[_2780])
        if not mem[_2780]:
            revert with 0, 'denied'
        mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2858 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 68 len ceil32(_2858)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2858)]
        if ceil32(_2858) <= _2858:
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len ceil32(_2858) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4098 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4130 = mem[_4098]
            require mem[_4098] <= test266151307()
            require _4098 + mem[_4098] + 31 < _4098 + return_data.size
            _4162 = mem[_4098 + mem[_4098]]
            if mem[_4098 + mem[_4098]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_4098 + mem[_4098]])) + 1 < 0 or _4098 + ceil32(return_data.size) + ceil32(ceil32(mem[_4098 + mem[_4098]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _4098 + ceil32(return_data.size) + ceil32(ceil32(mem[_4098 + mem[_4098]])) + 1
            mem[_4098 + ceil32(return_data.size)] = _4162
            require _4130 + _4162 + 32 <= return_data.size
            mem[_4098 + ceil32(return_data.size) + 32 len ceil32(_4162)] = mem[_4098 + _4130 + 32 len ceil32(_4162)]
            if ceil32(_4162) <= _4162:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5327 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5327)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5327)]
                if ceil32(_5327) > _5327:
                    mem[mem[64] + _5327 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5327) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4162
                mem[mem[64] + 64 len ceil32(_4162)] = mem[_4098 + ceil32(return_data.size) + 32 len ceil32(_4162)]
                if ceil32(_4162) > _4162:
                    mem[mem[64] + _4162 + 64] = 0
            else:
                mem[_4098 + ceil32(return_data.size) + _4162 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5359 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5359)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5359)]
                if ceil32(_5359) > _5359:
                    mem[mem[64] + _5359 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5359) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4162
                mem[mem[64] + 64 len ceil32(_4162)] = mem[_4098 + ceil32(return_data.size) + 32 len ceil32(_4162)]
                if ceil32(_4162) > _4162:
                    mem[mem[64] + _4162 + 64] = 0
            return Array(len=_4162, data=mem[mem[64] + 64 len ceil32(_4162)])
        mem[mem[64] + _2858 + 68] = 0
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len ceil32(_2858) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4114 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4146 = mem[_4114]
        require mem[_4114] <= test266151307()
        require _4114 + mem[_4114] + 31 < _4114 + return_data.size
        _4178 = mem[_4114 + mem[_4114]]
        if mem[_4114 + mem[_4114]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_4114 + mem[_4114]])) + 1 < 0 or _4114 + ceil32(return_data.size) + ceil32(ceil32(mem[_4114 + mem[_4114]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _4114 + ceil32(return_data.size) + ceil32(ceil32(mem[_4114 + mem[_4114]])) + 1
        mem[_4114 + ceil32(return_data.size)] = _4178
        require _4146 + _4178 + 32 <= return_data.size
        mem[_4114 + ceil32(return_data.size) + 32 len ceil32(_4178)] = mem[_4114 + _4146 + 32 len ceil32(_4178)]
        if ceil32(_4178) <= _4178:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _5328 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_5328)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5328)]
            if ceil32(_5328) > _5328:
                mem[mem[64] + _5328 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5328) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _4178
            mem[mem[64] + 64 len ceil32(_4178)] = mem[_4114 + ceil32(return_data.size) + 32 len ceil32(_4178)]
            if ceil32(_4178) > _4178:
                mem[mem[64] + _4178 + 64] = 0
        else:
            mem[_4114 + ceil32(return_data.size) + _4178 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _5360 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_5360)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5360)]
            if ceil32(_5360) > _5360:
                mem[mem[64] + _5360 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5360) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _4178
            mem[mem[64] + 64 len ceil32(_4178)] = mem[_4114 + ceil32(return_data.size) + 32 len ceil32(_4178)]
            if ceil32(_4178) > _4178:
                mem[mem[64] + _4178 + 64] = 0
        return Array(len=_4178, data=mem[mem[64] + 64 len ceil32(_4178)])
    mem[_1404 + _1400 + 32] = 0
    mem[0] = address(_3)
    mem[32] = 101
    if not sub_809f3bc4[address(_3)]:
        mem[mem[64] + 4] = address(_3)
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_1384)
        require ext_code.size(sub_7fd80b10Address)
        staticcall sub_7fd80b10Address.0xa58666d3 with:
                gas gas_remaining wei
               args address(_3), msg.sender, address(_1384)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2787 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2787] == bool(mem[_2787])
        if not mem[_2787]:
            revert with 0, 'denied'
        mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2867 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 68 len ceil32(_2867)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2867)]
        if ceil32(_2867) <= _2867:
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len ceil32(_2867) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4099 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4131 = mem[_4099]
            require mem[_4099] <= test266151307()
            require _4099 + mem[_4099] + 31 < _4099 + return_data.size
            _4163 = mem[_4099 + mem[_4099]]
            if mem[_4099 + mem[_4099]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(ceil32(mem[_4099 + mem[_4099]])) + 1 < 0 or _4099 + ceil32(return_data.size) + ceil32(ceil32(mem[_4099 + mem[_4099]])) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _4099 + ceil32(return_data.size) + ceil32(ceil32(mem[_4099 + mem[_4099]])) + 1
            mem[_4099 + ceil32(return_data.size)] = _4163
            require _4131 + _4163 + 32 <= return_data.size
            mem[_4099 + ceil32(return_data.size) + 32 len ceil32(_4163)] = mem[_4099 + _4131 + 32 len ceil32(_4163)]
            if ceil32(_4163) <= _4163:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5329 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5329)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5329)]
                if ceil32(_5329) > _5329:
                    mem[mem[64] + _5329 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5329) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4163
                mem[mem[64] + 64 len ceil32(_4163)] = mem[_4099 + ceil32(return_data.size) + 32 len ceil32(_4163)]
                if ceil32(_4163) > _4163:
                    mem[mem[64] + _4163 + 64] = 0
            else:
                mem[_4099 + ceil32(return_data.size) + _4163 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _5361 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96 len ceil32(_5361)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5361)]
                if ceil32(_5361) > _5361:
                    mem[mem[64] + _5361 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5361) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _4163
                mem[mem[64] + 64 len ceil32(_4163)] = mem[_4099 + ceil32(return_data.size) + 32 len ceil32(_4163)]
                if ceil32(_4163) > _4163:
                    mem[mem[64] + _4163 + 64] = 0
            return Array(len=_4163, data=mem[mem[64] + 64 len ceil32(_4163)])
        mem[mem[64] + _2867 + 68] = 0
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len ceil32(_2867) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4115 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4147 = mem[_4115]
        require mem[_4115] <= test266151307()
        require _4115 + mem[_4115] + 31 < _4115 + return_data.size
        _4179 = mem[_4115 + mem[_4115]]
        if mem[_4115 + mem[_4115]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_4115 + mem[_4115]])) + 1 < 0 or _4115 + ceil32(return_data.size) + ceil32(ceil32(mem[_4115 + mem[_4115]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _4115 + ceil32(return_data.size) + ceil32(ceil32(mem[_4115 + mem[_4115]])) + 1
        mem[_4115 + ceil32(return_data.size)] = _4179
        require _4147 + _4179 + 32 <= return_data.size
        mem[_4115 + ceil32(return_data.size) + 32 len ceil32(_4179)] = mem[_4115 + _4147 + 32 len ceil32(_4179)]
        if ceil32(_4179) <= _4179:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _5330 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_5330)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5330)]
            if ceil32(_5330) > _5330:
                mem[mem[64] + _5330 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5330) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _4179
            mem[mem[64] + 64 len ceil32(_4179)] = mem[_4115 + ceil32(return_data.size) + 32 len ceil32(_4179)]
            if ceil32(_4179) > _4179:
                mem[mem[64] + _4179 + 64] = 0
        else:
            mem[_4115 + ceil32(return_data.size) + _4179 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _5362 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_5362)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5362)]
            if ceil32(_5362) > _5362:
                mem[mem[64] + _5362 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5362) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _4179
            mem[mem[64] + 64 len ceil32(_4179)] = mem[_4115 + ceil32(return_data.size) + 32 len ceil32(_4179)]
            if ceil32(_4179) > _4179:
                mem[mem[64] + _4179 + 64] = 0
        return Array(len=_4179, data=mem[mem[64] + 64 len ceil32(_4179)])
    mem[0] = address(_3)
    mem[32] = 101
    mem[mem[64] + 4] = address(_3)
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = address(_1384)
    require ext_code.size(sub_809f3bc4[address(_3)])
    staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
            gas gas_remaining wei
           args address(_3), msg.sender, address(_1384)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2788 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2788] == bool(mem[_2788])
    if not mem[_2788]:
        revert with 0, 'denied'
    mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _2868 = mem[ceil32(ceil32(arg1.length)) + 97]
    mem[mem[64] + 36] = mem[ceil32(ceil32(arg1.length)) + 97]
    mem[mem[64] + 68 len ceil32(_2868)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2868)]
    if ceil32(_2868) <= _2868:
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args 32, mem[mem[64] + 36 len ceil32(_2868) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4100 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4132 = mem[_4100]
        require mem[_4100] <= test266151307()
        require _4100 + mem[_4100] + 31 < _4100 + return_data.size
        _4164 = mem[_4100 + mem[_4100]]
        if mem[_4100 + mem[_4100]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_4100 + mem[_4100]])) + 1 < 0 or _4100 + ceil32(return_data.size) + ceil32(ceil32(mem[_4100 + mem[_4100]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _4100 + ceil32(return_data.size) + ceil32(ceil32(mem[_4100 + mem[_4100]])) + 1
        mem[_4100 + ceil32(return_data.size)] = _4164
        require _4132 + _4164 + 32 <= return_data.size
        mem[_4100 + ceil32(return_data.size) + 32 len ceil32(_4164)] = mem[_4100 + _4132 + 32 len ceil32(_4164)]
        if ceil32(_4164) <= _4164:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _5331 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_5331)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5331)]
            if ceil32(_5331) > _5331:
                mem[mem[64] + _5331 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5331) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _4164
            mem[mem[64] + 64 len ceil32(_4164)] = mem[_4100 + ceil32(return_data.size) + 32 len ceil32(_4164)]
            if ceil32(_4164) > _4164:
                mem[mem[64] + _4164 + 64] = 0
        else:
            mem[_4100 + ceil32(return_data.size) + _4164 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _5363 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96 len ceil32(_5363)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5363)]
            if ceil32(_5363) > _5363:
                mem[mem[64] + _5363 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5363) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _4164
            mem[mem[64] + 64 len ceil32(_4164)] = mem[_4100 + ceil32(return_data.size) + 32 len ceil32(_4164)]
            if ceil32(_4164) > _4164:
                mem[mem[64] + _4164 + 64] = 0
        return Array(len=_4164, data=mem[mem[64] + 64 len ceil32(_4164)])
    mem[mem[64] + _2868 + 68] = 0
    require ext_code.size(address(_3))
    call address(_3).0xd1b3b979 with:
         gas gas_remaining wei
        args 32, mem[mem[64] + 36 len ceil32(_2868) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4116 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _4148 = mem[_4116]
    require mem[_4116] <= test266151307()
    require _4116 + mem[_4116] + 31 < _4116 + return_data.size
    _4180 = mem[_4116 + mem[_4116]]
    if mem[_4116 + mem[_4116]] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(mem[_4116 + mem[_4116]])) + 1 < 0 or _4116 + ceil32(return_data.size) + ceil32(ceil32(mem[_4116 + mem[_4116]])) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = _4116 + ceil32(return_data.size) + ceil32(ceil32(mem[_4116 + mem[_4116]])) + 1
    mem[_4116 + ceil32(return_data.size)] = _4180
    require _4148 + _4180 + 32 <= return_data.size
    mem[_4116 + ceil32(return_data.size) + 32 len ceil32(_4180)] = mem[_4116 + _4148 + 32 len ceil32(_4180)]
    if ceil32(_4180) <= _4180:
        mem[mem[64]] = address(_3)
        mem[mem[64] + 32] = 64
        _5332 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96 len ceil32(_5332)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5332)]
        if ceil32(_5332) > _5332:
            mem[mem[64] + _5332 + 96] = 0
        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5332) + 32]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _4180
        mem[mem[64] + 64 len ceil32(_4180)] = mem[_4116 + ceil32(return_data.size) + 32 len ceil32(_4180)]
        if ceil32(_4180) > _4180:
            mem[mem[64] + _4180 + 64] = 0
    else:
        mem[_4116 + ceil32(return_data.size) + _4180 + 32] = 0
        mem[mem[64]] = address(_3)
        mem[mem[64] + 32] = 64
        _5364 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 64] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96 len ceil32(_5364)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_5364)]
        if ceil32(_5364) > _5364:
            mem[mem[64] + _5364 + 96] = 0
        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_5364) + 32]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _4180
        mem[mem[64] + 64 len ceil32(_4180)] = mem[_4116 + ceil32(return_data.size) + 32 len ceil32(_4180)]
        if ceil32(_4180) > _4180:
            mem[mem[64] + _4180 + 64] = 0
    return Array(len=_4180, data=mem[mem[64] + 64 len ceil32(_4180)])
}

function sub_a7cc2086(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg4 == uint8(arg4)
    require arg1.length >= 128
    _3 = mem[128]
    require mem[128] == mem[140 len 20]
    _4 = mem[160]
    require mem[160] == mem[172 len 20]
    _5 = mem[192]
    require mem[192] <= test266151307()
    require mem[192] + 159 < arg1.length + 128
    _6 = mem[mem[192] + 128]
    if mem[mem[192] + 128] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(mem[mem[192] + 128])) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(mem[mem[192] + 128])) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(arg1.length)) + ceil32(ceil32(mem[mem[192] + 128])) + 98
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[mem[192] + 128]
    require _5 + _6 + 64 <= arg1.length + 32
    mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_6)] = mem[_5 + 160 len ceil32(_6)]
    if ceil32(_6) <= _6:
        _1034 = mem[224]
        require mem[224] <= test266151307()
        require mem[224] + 159 < arg1.length + 128
        _1036 = mem[mem[224] + 128]
        if mem[mem[224] + 128] > test266151307():
            revert with 'NH{q', 65
        _1038 = mem[64]
        if mem[64] + ceil32(ceil32(mem[mem[224] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[224] + 128])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[mem[224] + 128])) + 1
        mem[_1038] = mem[mem[224] + 128]
        require _1034 + _1036 + 64 <= arg1.length + 32
        mem[_1038 + 32 len ceil32(_1036)] = mem[_1034 + 160 len ceil32(_1036)]
        if ceil32(_1036) <= _1036:
            mem[mem[64] + 100] = arg3
            mem[mem[64] + 132] = uint8(arg4)
            mem[mem[64] + 164] = arg5
            mem[mem[64] + 196] = arg6
            if not sub_809f3bc4[address(_3)]:
                require ext_code.size(sub_7fd80b10Address)
                call sub_7fd80b10Address.permit(address arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2132 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2132] == bool(mem[_2132])
                    if not mem[_2132]:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2204 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2204)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2204)]
                    if ceil32(_2204) <= _2204:
                        mem[mem[64] + 68] = ceil32(_2204) + 128
                        _3092 = mem[_1038]
                        mem[ceil32(_2204) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2204) + mem[64] + 164 len ceil32(_3092)] = mem[_1038 + 32 len ceil32(_3092)]
                        if ceil32(_3092) <= _3092:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2204) + 128, mem[mem[64] + 100 len ceil32(_3092) + ceil32(_2204) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4084 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4084)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4084)]
                            if ceil32(_4084) <= _4084:
                                mem[mem[64] + 96] = ceil32(_4084) + 160
                                _4788 = mem[_1038]
                                mem[ceil32(_4084) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4084) + mem[64] + 192 len ceil32(_4788)] = mem[_1038 + 32 len ceil32(_4788)]
                                if ceil32(_4788) > _4788:
                                    mem[ceil32(_4084) + mem[64] + _4788 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4084) + 160, mem[mem[64] + 128 len ceil32(_4788) + ceil32(_4084) + 64]
                            else:
                                mem[mem[64] + _4084 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4084) + 160
                                _4852 = mem[_1038]
                                mem[ceil32(_4084) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4084) + mem[64] + 192 len ceil32(_4852)] = mem[_1038 + 32 len ceil32(_4852)]
                                if ceil32(_4852) > _4852:
                                    mem[ceil32(_4084) + mem[64] + _4852 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4084) + 160, mem[mem[64] + 128 len _4084 + 32], 0, mem[mem[64] + _4084 + 192 len ceil32(_4852) + ceil32(_4084) - _4084]
                        else:
                            mem[ceil32(_2204) + mem[64] + _3092 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2204) + 128, mem[mem[64] + 100 len ceil32(_3092) + ceil32(_2204) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4116 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4116)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4116)]
                            if ceil32(_4116) <= _4116:
                                mem[mem[64] + 96] = ceil32(_4116) + 160
                                _4789 = mem[_1038]
                                mem[ceil32(_4116) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4116) + mem[64] + 192 len ceil32(_4789)] = mem[_1038 + 32 len ceil32(_4789)]
                                if ceil32(_4789) > _4789:
                                    mem[ceil32(_4116) + mem[64] + _4789 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4116) + 160, mem[mem[64] + 128 len ceil32(_4789) + ceil32(_4116) + 64]
                            else:
                                mem[mem[64] + _4116 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4116) + 160
                                _4853 = mem[_1038]
                                mem[ceil32(_4116) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4116) + mem[64] + 192 len ceil32(_4853)] = mem[_1038 + 32 len ceil32(_4853)]
                                if ceil32(_4853) > _4853:
                                    mem[ceil32(_4116) + mem[64] + _4853 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4116) + 160, mem[mem[64] + 128 len _4116 + 32], 0, mem[mem[64] + _4116 + 192 len ceil32(_4853) + ceil32(_4116) - _4116]
                    else:
                        mem[mem[64] + _2204 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2204) + 128
                        _3108 = mem[_1038]
                        mem[ceil32(_2204) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2204) + mem[64] + 164 len ceil32(_3108)] = mem[_1038 + 32 len ceil32(_3108)]
                        if ceil32(_3108) <= _3108:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2204) + 128, mem[mem[64] + 100 len _2204 + 32], 0, mem[mem[64] + _2204 + 164 len ceil32(_3108) + ceil32(_2204) - _2204]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4085 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4085)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4085)]
                            if ceil32(_4085) <= _4085:
                                mem[mem[64] + 96] = ceil32(_4085) + 160
                                _4790 = mem[_1038]
                                mem[ceil32(_4085) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4085) + mem[64] + 192 len ceil32(_4790)] = mem[_1038 + 32 len ceil32(_4790)]
                                if ceil32(_4790) > _4790:
                                    mem[ceil32(_4085) + mem[64] + _4790 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4085) + 160, mem[mem[64] + 128 len ceil32(_4790) + ceil32(_4085) + 64]
                            else:
                                mem[mem[64] + _4085 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4085) + 160
                                _4854 = mem[_1038]
                                mem[ceil32(_4085) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4085) + mem[64] + 192 len ceil32(_4854)] = mem[_1038 + 32 len ceil32(_4854)]
                                if ceil32(_4854) > _4854:
                                    mem[ceil32(_4085) + mem[64] + _4854 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4085) + 160, mem[mem[64] + 128 len _4085 + 32], 0, mem[mem[64] + _4085 + 192 len ceil32(_4854) + ceil32(_4085) - _4085]
                        else:
                            mem[ceil32(_2204) + mem[64] + _3108 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2204) + 128, mem[mem[64] + 100 len _2204 + 32], 0, mem[mem[64] + _2204 + 164 len ceil32(_3108) + ceil32(_2204) - _2204]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4117 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4117)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4117)]
                            if ceil32(_4117) <= _4117:
                                mem[mem[64] + 96] = ceil32(_4117) + 160
                                _4791 = mem[_1038]
                                mem[ceil32(_4117) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4117) + mem[64] + 192 len ceil32(_4791)] = mem[_1038 + 32 len ceil32(_4791)]
                                if ceil32(_4791) > _4791:
                                    mem[ceil32(_4117) + mem[64] + _4791 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4117) + 160, mem[mem[64] + 128 len ceil32(_4791) + ceil32(_4117) + 64]
                            else:
                                mem[mem[64] + _4117 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4117) + 160
                                _4855 = mem[_1038]
                                mem[ceil32(_4117) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4117) + mem[64] + 192 len ceil32(_4855)] = mem[_1038 + 32 len ceil32(_4855)]
                                if ceil32(_4855) > _4855:
                                    mem[ceil32(_4117) + mem[64] + _4855 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4117) + 160, mem[mem[64] + 128 len _4117 + 32], 0, mem[mem[64] + _4117 + 192 len ceil32(_4855) + ceil32(_4117) - _4117]
                else:
                    mem[0] = address(_3)
                    mem[32] = 101
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2133 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2133] == bool(mem[_2133])
                    if not mem[_2133]:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2205 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2205)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2205)]
                    if ceil32(_2205) <= _2205:
                        mem[mem[64] + 68] = ceil32(_2205) + 128
                        _3093 = mem[_1038]
                        mem[ceil32(_2205) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2205) + mem[64] + 164 len ceil32(_3093)] = mem[_1038 + 32 len ceil32(_3093)]
                        if ceil32(_3093) <= _3093:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2205) + 128, mem[mem[64] + 100 len ceil32(_3093) + ceil32(_2205) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4086 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4086)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4086)]
                            if ceil32(_4086) <= _4086:
                                mem[mem[64] + 96] = ceil32(_4086) + 160
                                _4792 = mem[_1038]
                                mem[ceil32(_4086) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4086) + mem[64] + 192 len ceil32(_4792)] = mem[_1038 + 32 len ceil32(_4792)]
                                if ceil32(_4792) > _4792:
                                    mem[ceil32(_4086) + mem[64] + _4792 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4086) + 160, mem[mem[64] + 128 len ceil32(_4792) + ceil32(_4086) + 64]
                            else:
                                mem[mem[64] + _4086 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4086) + 160
                                _4856 = mem[_1038]
                                mem[ceil32(_4086) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4086) + mem[64] + 192 len ceil32(_4856)] = mem[_1038 + 32 len ceil32(_4856)]
                                if ceil32(_4856) > _4856:
                                    mem[ceil32(_4086) + mem[64] + _4856 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4086) + 160, mem[mem[64] + 128 len _4086 + 32], 0, mem[mem[64] + _4086 + 192 len ceil32(_4856) + ceil32(_4086) - _4086]
                        else:
                            mem[ceil32(_2205) + mem[64] + _3093 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2205) + 128, mem[mem[64] + 100 len ceil32(_3093) + ceil32(_2205) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4118 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4118)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4118)]
                            if ceil32(_4118) <= _4118:
                                mem[mem[64] + 96] = ceil32(_4118) + 160
                                _4793 = mem[_1038]
                                mem[ceil32(_4118) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4118) + mem[64] + 192 len ceil32(_4793)] = mem[_1038 + 32 len ceil32(_4793)]
                                if ceil32(_4793) > _4793:
                                    mem[ceil32(_4118) + mem[64] + _4793 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4118) + 160, mem[mem[64] + 128 len ceil32(_4793) + ceil32(_4118) + 64]
                            else:
                                mem[mem[64] + _4118 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4118) + 160
                                _4857 = mem[_1038]
                                mem[ceil32(_4118) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4118) + mem[64] + 192 len ceil32(_4857)] = mem[_1038 + 32 len ceil32(_4857)]
                                if ceil32(_4857) > _4857:
                                    mem[ceil32(_4118) + mem[64] + _4857 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4118) + 160, mem[mem[64] + 128 len _4118 + 32], 0, mem[mem[64] + _4118 + 192 len ceil32(_4857) + ceil32(_4118) - _4118]
                    else:
                        mem[mem[64] + _2205 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2205) + 128
                        _3109 = mem[_1038]
                        mem[ceil32(_2205) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2205) + mem[64] + 164 len ceil32(_3109)] = mem[_1038 + 32 len ceil32(_3109)]
                        if ceil32(_3109) <= _3109:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2205) + 128, mem[mem[64] + 100 len _2205 + 32], 0, mem[mem[64] + _2205 + 164 len ceil32(_3109) + ceil32(_2205) - _2205]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4087 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4087)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4087)]
                            if ceil32(_4087) <= _4087:
                                mem[mem[64] + 96] = ceil32(_4087) + 160
                                _4794 = mem[_1038]
                                mem[ceil32(_4087) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4087) + mem[64] + 192 len ceil32(_4794)] = mem[_1038 + 32 len ceil32(_4794)]
                                if ceil32(_4794) > _4794:
                                    mem[ceil32(_4087) + mem[64] + _4794 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4087) + 160, mem[mem[64] + 128 len ceil32(_4794) + ceil32(_4087) + 64]
                            else:
                                mem[mem[64] + _4087 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4087) + 160
                                _4858 = mem[_1038]
                                mem[ceil32(_4087) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4087) + mem[64] + 192 len ceil32(_4858)] = mem[_1038 + 32 len ceil32(_4858)]
                                if ceil32(_4858) > _4858:
                                    mem[ceil32(_4087) + mem[64] + _4858 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4087) + 160, mem[mem[64] + 128 len _4087 + 32], 0, mem[mem[64] + _4087 + 192 len ceil32(_4858) + ceil32(_4087) - _4087]
                        else:
                            mem[ceil32(_2205) + mem[64] + _3109 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2205) + 128, mem[mem[64] + 100 len _2205 + 32], 0, mem[mem[64] + _2205 + 164 len ceil32(_3109) + ceil32(_2205) - _2205]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4119 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4119)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4119)]
                            if ceil32(_4119) <= _4119:
                                mem[mem[64] + 96] = ceil32(_4119) + 160
                                _4795 = mem[_1038]
                                mem[ceil32(_4119) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4119) + mem[64] + 192 len ceil32(_4795)] = mem[_1038 + 32 len ceil32(_4795)]
                                if ceil32(_4795) > _4795:
                                    mem[ceil32(_4119) + mem[64] + _4795 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4119) + 160, mem[mem[64] + 128 len ceil32(_4795) + ceil32(_4119) + 64]
                            else:
                                mem[mem[64] + _4119 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4119) + 160
                                _4859 = mem[_1038]
                                mem[ceil32(_4119) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4119) + mem[64] + 192 len ceil32(_4859)] = mem[_1038 + 32 len ceil32(_4859)]
                                if ceil32(_4859) > _4859:
                                    mem[ceil32(_4119) + mem[64] + _4859 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4119) + 160, mem[mem[64] + 128 len _4119 + 32], 0, mem[mem[64] + _4119 + 192 len ceil32(_4859) + ceil32(_4119) - _4119]
            else:
                require ext_code.size(sub_809f3bc4[address(_3)])
                call sub_809f3bc4[address(_3)].permit(address arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2134 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2134] == bool(mem[_2134])
                    if not mem[_2134]:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2206 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2206)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2206)]
                    if ceil32(_2206) <= _2206:
                        mem[mem[64] + 68] = ceil32(_2206) + 128
                        _3094 = mem[_1038]
                        mem[ceil32(_2206) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2206) + mem[64] + 164 len ceil32(_3094)] = mem[_1038 + 32 len ceil32(_3094)]
                        if ceil32(_3094) <= _3094:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2206) + 128, mem[mem[64] + 100 len ceil32(_3094) + ceil32(_2206) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4088 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4088)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4088)]
                            if ceil32(_4088) <= _4088:
                                mem[mem[64] + 96] = ceil32(_4088) + 160
                                _4796 = mem[_1038]
                                mem[ceil32(_4088) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4088) + mem[64] + 192 len ceil32(_4796)] = mem[_1038 + 32 len ceil32(_4796)]
                                if ceil32(_4796) > _4796:
                                    mem[ceil32(_4088) + mem[64] + _4796 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4088) + 160, mem[mem[64] + 128 len ceil32(_4796) + ceil32(_4088) + 64]
                            else:
                                mem[mem[64] + _4088 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4088) + 160
                                _4860 = mem[_1038]
                                mem[ceil32(_4088) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4088) + mem[64] + 192 len ceil32(_4860)] = mem[_1038 + 32 len ceil32(_4860)]
                                if ceil32(_4860) > _4860:
                                    mem[ceil32(_4088) + mem[64] + _4860 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4088) + 160, mem[mem[64] + 128 len _4088 + 32], 0, mem[mem[64] + _4088 + 192 len ceil32(_4860) + ceil32(_4088) - _4088]
                        else:
                            mem[ceil32(_2206) + mem[64] + _3094 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2206) + 128, mem[mem[64] + 100 len ceil32(_3094) + ceil32(_2206) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4120 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4120)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4120)]
                            if ceil32(_4120) <= _4120:
                                mem[mem[64] + 96] = ceil32(_4120) + 160
                                _4797 = mem[_1038]
                                mem[ceil32(_4120) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4120) + mem[64] + 192 len ceil32(_4797)] = mem[_1038 + 32 len ceil32(_4797)]
                                if ceil32(_4797) > _4797:
                                    mem[ceil32(_4120) + mem[64] + _4797 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4120) + 160, mem[mem[64] + 128 len ceil32(_4797) + ceil32(_4120) + 64]
                            else:
                                mem[mem[64] + _4120 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4120) + 160
                                _4861 = mem[_1038]
                                mem[ceil32(_4120) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4120) + mem[64] + 192 len ceil32(_4861)] = mem[_1038 + 32 len ceil32(_4861)]
                                if ceil32(_4861) > _4861:
                                    mem[ceil32(_4120) + mem[64] + _4861 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4120) + 160, mem[mem[64] + 128 len _4120 + 32], 0, mem[mem[64] + _4120 + 192 len ceil32(_4861) + ceil32(_4120) - _4120]
                    else:
                        mem[mem[64] + _2206 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2206) + 128
                        _3110 = mem[_1038]
                        mem[ceil32(_2206) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2206) + mem[64] + 164 len ceil32(_3110)] = mem[_1038 + 32 len ceil32(_3110)]
                        if ceil32(_3110) <= _3110:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2206) + 128, mem[mem[64] + 100 len _2206 + 32], 0, mem[mem[64] + _2206 + 164 len ceil32(_3110) + ceil32(_2206) - _2206]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4089 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4089)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4089)]
                            if ceil32(_4089) <= _4089:
                                mem[mem[64] + 96] = ceil32(_4089) + 160
                                _4798 = mem[_1038]
                                mem[ceil32(_4089) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4089) + mem[64] + 192 len ceil32(_4798)] = mem[_1038 + 32 len ceil32(_4798)]
                                if ceil32(_4798) > _4798:
                                    mem[ceil32(_4089) + mem[64] + _4798 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4089) + 160, mem[mem[64] + 128 len ceil32(_4798) + ceil32(_4089) + 64]
                            else:
                                mem[mem[64] + _4089 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4089) + 160
                                _4862 = mem[_1038]
                                mem[ceil32(_4089) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4089) + mem[64] + 192 len ceil32(_4862)] = mem[_1038 + 32 len ceil32(_4862)]
                                if ceil32(_4862) > _4862:
                                    mem[ceil32(_4089) + mem[64] + _4862 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4089) + 160, mem[mem[64] + 128 len _4089 + 32], 0, mem[mem[64] + _4089 + 192 len ceil32(_4862) + ceil32(_4089) - _4089]
                        else:
                            mem[ceil32(_2206) + mem[64] + _3110 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2206) + 128, mem[mem[64] + 100 len _2206 + 32], 0, mem[mem[64] + _2206 + 164 len ceil32(_3110) + ceil32(_2206) - _2206]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4121 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4121)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4121)]
                            if ceil32(_4121) <= _4121:
                                mem[mem[64] + 96] = ceil32(_4121) + 160
                                _4799 = mem[_1038]
                                mem[ceil32(_4121) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4121) + mem[64] + 192 len ceil32(_4799)] = mem[_1038 + 32 len ceil32(_4799)]
                                if ceil32(_4799) > _4799:
                                    mem[ceil32(_4121) + mem[64] + _4799 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4121) + 160, mem[mem[64] + 128 len ceil32(_4799) + ceil32(_4121) + 64]
                            else:
                                mem[mem[64] + _4121 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4121) + 160
                                _4863 = mem[_1038]
                                mem[ceil32(_4121) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4121) + mem[64] + 192 len ceil32(_4863)] = mem[_1038 + 32 len ceil32(_4863)]
                                if ceil32(_4863) > _4863:
                                    mem[ceil32(_4121) + mem[64] + _4863 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4121) + 160, mem[mem[64] + 128 len _4121 + 32], 0, mem[mem[64] + _4121 + 192 len ceil32(_4863) + ceil32(_4121) - _4121]
                else:
                    mem[0] = address(_3)
                    mem[32] = 101
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2135 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2135] == bool(mem[_2135])
                    if not mem[_2135]:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2207 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2207)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2207)]
                    if ceil32(_2207) <= _2207:
                        mem[mem[64] + 68] = ceil32(_2207) + 128
                        _3095 = mem[_1038]
                        mem[ceil32(_2207) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2207) + mem[64] + 164 len ceil32(_3095)] = mem[_1038 + 32 len ceil32(_3095)]
                        if ceil32(_3095) <= _3095:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2207) + 128, mem[mem[64] + 100 len ceil32(_3095) + ceil32(_2207) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4090 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4090)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4090)]
                            if ceil32(_4090) <= _4090:
                                mem[mem[64] + 96] = ceil32(_4090) + 160
                                _4800 = mem[_1038]
                                mem[ceil32(_4090) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4090) + mem[64] + 192 len ceil32(_4800)] = mem[_1038 + 32 len ceil32(_4800)]
                                if ceil32(_4800) > _4800:
                                    mem[ceil32(_4090) + mem[64] + _4800 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4090) + 160, mem[mem[64] + 128 len ceil32(_4800) + ceil32(_4090) + 64]
                            else:
                                mem[mem[64] + _4090 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4090) + 160
                                _4864 = mem[_1038]
                                mem[ceil32(_4090) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4090) + mem[64] + 192 len ceil32(_4864)] = mem[_1038 + 32 len ceil32(_4864)]
                                if ceil32(_4864) > _4864:
                                    mem[ceil32(_4090) + mem[64] + _4864 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4090) + 160, mem[mem[64] + 128 len _4090 + 32], 0, mem[mem[64] + _4090 + 192 len ceil32(_4864) + ceil32(_4090) - _4090]
                        else:
                            mem[ceil32(_2207) + mem[64] + _3095 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2207) + 128, mem[mem[64] + 100 len ceil32(_3095) + ceil32(_2207) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4122 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4122)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4122)]
                            if ceil32(_4122) <= _4122:
                                mem[mem[64] + 96] = ceil32(_4122) + 160
                                _4801 = mem[_1038]
                                mem[ceil32(_4122) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4122) + mem[64] + 192 len ceil32(_4801)] = mem[_1038 + 32 len ceil32(_4801)]
                                if ceil32(_4801) > _4801:
                                    mem[ceil32(_4122) + mem[64] + _4801 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4122) + 160, mem[mem[64] + 128 len ceil32(_4801) + ceil32(_4122) + 64]
                            else:
                                mem[mem[64] + _4122 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4122) + 160
                                _4865 = mem[_1038]
                                mem[ceil32(_4122) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4122) + mem[64] + 192 len ceil32(_4865)] = mem[_1038 + 32 len ceil32(_4865)]
                                if ceil32(_4865) > _4865:
                                    mem[ceil32(_4122) + mem[64] + _4865 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4122) + 160, mem[mem[64] + 128 len _4122 + 32], 0, mem[mem[64] + _4122 + 192 len ceil32(_4865) + ceil32(_4122) - _4122]
                    else:
                        mem[mem[64] + _2207 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2207) + 128
                        _3111 = mem[_1038]
                        mem[ceil32(_2207) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2207) + mem[64] + 164 len ceil32(_3111)] = mem[_1038 + 32 len ceil32(_3111)]
                        if ceil32(_3111) <= _3111:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2207) + 128, mem[mem[64] + 100 len _2207 + 32], 0, mem[mem[64] + _2207 + 164 len ceil32(_3111) + ceil32(_2207) - _2207]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4091 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4091)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4091)]
                            if ceil32(_4091) <= _4091:
                                mem[mem[64] + 96] = ceil32(_4091) + 160
                                _4802 = mem[_1038]
                                mem[ceil32(_4091) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4091) + mem[64] + 192 len ceil32(_4802)] = mem[_1038 + 32 len ceil32(_4802)]
                                if ceil32(_4802) > _4802:
                                    mem[ceil32(_4091) + mem[64] + _4802 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4091) + 160, mem[mem[64] + 128 len ceil32(_4802) + ceil32(_4091) + 64]
                            else:
                                mem[mem[64] + _4091 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4091) + 160
                                _4866 = mem[_1038]
                                mem[ceil32(_4091) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4091) + mem[64] + 192 len ceil32(_4866)] = mem[_1038 + 32 len ceil32(_4866)]
                                if ceil32(_4866) > _4866:
                                    mem[ceil32(_4091) + mem[64] + _4866 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4091) + 160, mem[mem[64] + 128 len _4091 + 32], 0, mem[mem[64] + _4091 + 192 len ceil32(_4866) + ceil32(_4091) - _4091]
                        else:
                            mem[ceil32(_2207) + mem[64] + _3111 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2207) + 128, mem[mem[64] + 100 len _2207 + 32], 0, mem[mem[64] + _2207 + 164 len ceil32(_3111) + ceil32(_2207) - _2207]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4123 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4123)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4123)]
                            if ceil32(_4123) <= _4123:
                                mem[mem[64] + 96] = ceil32(_4123) + 160
                                _4803 = mem[_1038]
                                mem[ceil32(_4123) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4123) + mem[64] + 192 len ceil32(_4803)] = mem[_1038 + 32 len ceil32(_4803)]
                                if ceil32(_4803) > _4803:
                                    mem[ceil32(_4123) + mem[64] + _4803 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4123) + 160, mem[mem[64] + 128 len ceil32(_4803) + ceil32(_4123) + 64]
                            else:
                                mem[mem[64] + _4123 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4123) + 160
                                _4867 = mem[_1038]
                                mem[ceil32(_4123) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4123) + mem[64] + 192 len ceil32(_4867)] = mem[_1038 + 32 len ceil32(_4867)]
                                if ceil32(_4867) > _4867:
                                    mem[ceil32(_4123) + mem[64] + _4867 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4123) + 160, mem[mem[64] + 128 len _4123 + 32], 0, mem[mem[64] + _4123 + 192 len ceil32(_4867) + ceil32(_4123) - _4123]
        else:
            mem[_1038 + _1036 + 32] = 0
            mem[mem[64] + 100] = arg3
            mem[mem[64] + 132] = uint8(arg4)
            mem[mem[64] + 164] = arg5
            mem[mem[64] + 196] = arg6
            if not sub_809f3bc4[address(_3)]:
                require ext_code.size(sub_7fd80b10Address)
                call sub_7fd80b10Address.permit(address arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2140 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2140] == bool(mem[_2140])
                    if not mem[_2140]:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2220 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2220)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2220)]
                    if ceil32(_2220) <= _2220:
                        mem[mem[64] + 68] = ceil32(_2220) + 128
                        _3096 = mem[_1038]
                        mem[ceil32(_2220) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2220) + mem[64] + 164 len ceil32(_3096)] = mem[_1038 + 32 len ceil32(_3096)]
                        if ceil32(_3096) <= _3096:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2220) + 128, mem[mem[64] + 100 len ceil32(_3096) + ceil32(_2220) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4092 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4092)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4092)]
                            if ceil32(_4092) <= _4092:
                                mem[mem[64] + 96] = ceil32(_4092) + 160
                                _4804 = mem[_1038]
                                mem[ceil32(_4092) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4092) + mem[64] + 192 len ceil32(_4804)] = mem[_1038 + 32 len ceil32(_4804)]
                                if ceil32(_4804) > _4804:
                                    mem[ceil32(_4092) + mem[64] + _4804 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4092) + 160, mem[mem[64] + 128 len ceil32(_4804) + ceil32(_4092) + 64]
                            else:
                                mem[mem[64] + _4092 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4092) + 160
                                _4868 = mem[_1038]
                                mem[ceil32(_4092) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4092) + mem[64] + 192 len ceil32(_4868)] = mem[_1038 + 32 len ceil32(_4868)]
                                if ceil32(_4868) > _4868:
                                    mem[ceil32(_4092) + mem[64] + _4868 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4092) + 160, mem[mem[64] + 128 len _4092 + 32], 0, mem[mem[64] + _4092 + 192 len ceil32(_4868) + ceil32(_4092) - _4092]
                        else:
                            mem[ceil32(_2220) + mem[64] + _3096 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2220) + 128, mem[mem[64] + 100 len ceil32(_3096) + ceil32(_2220) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4124 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4124)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4124)]
                            if ceil32(_4124) <= _4124:
                                mem[mem[64] + 96] = ceil32(_4124) + 160
                                _4805 = mem[_1038]
                                mem[ceil32(_4124) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4124) + mem[64] + 192 len ceil32(_4805)] = mem[_1038 + 32 len ceil32(_4805)]
                                if ceil32(_4805) > _4805:
                                    mem[ceil32(_4124) + mem[64] + _4805 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4124) + 160, mem[mem[64] + 128 len ceil32(_4805) + ceil32(_4124) + 64]
                            else:
                                mem[mem[64] + _4124 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4124) + 160
                                _4869 = mem[_1038]
                                mem[ceil32(_4124) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4124) + mem[64] + 192 len ceil32(_4869)] = mem[_1038 + 32 len ceil32(_4869)]
                                if ceil32(_4869) > _4869:
                                    mem[ceil32(_4124) + mem[64] + _4869 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4124) + 160, mem[mem[64] + 128 len _4124 + 32], 0, mem[mem[64] + _4124 + 192 len ceil32(_4869) + ceil32(_4124) - _4124]
                    else:
                        mem[mem[64] + _2220 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2220) + 128
                        _3112 = mem[_1038]
                        mem[ceil32(_2220) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2220) + mem[64] + 164 len ceil32(_3112)] = mem[_1038 + 32 len ceil32(_3112)]
                        if ceil32(_3112) <= _3112:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2220) + 128, mem[mem[64] + 100 len _2220 + 32], 0, mem[mem[64] + _2220 + 164 len ceil32(_3112) + ceil32(_2220) - _2220]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4093 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4093)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4093)]
                            if ceil32(_4093) <= _4093:
                                mem[mem[64] + 96] = ceil32(_4093) + 160
                                _4806 = mem[_1038]
                                mem[ceil32(_4093) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4093) + mem[64] + 192 len ceil32(_4806)] = mem[_1038 + 32 len ceil32(_4806)]
                                if ceil32(_4806) > _4806:
                                    mem[ceil32(_4093) + mem[64] + _4806 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4093) + 160, mem[mem[64] + 128 len ceil32(_4806) + ceil32(_4093) + 64]
                            else:
                                mem[mem[64] + _4093 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4093) + 160
                                _4870 = mem[_1038]
                                mem[ceil32(_4093) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4093) + mem[64] + 192 len ceil32(_4870)] = mem[_1038 + 32 len ceil32(_4870)]
                                if ceil32(_4870) > _4870:
                                    mem[ceil32(_4093) + mem[64] + _4870 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4093) + 160, mem[mem[64] + 128 len _4093 + 32], 0, mem[mem[64] + _4093 + 192 len ceil32(_4870) + ceil32(_4093) - _4093]
                        else:
                            mem[ceil32(_2220) + mem[64] + _3112 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2220) + 128, mem[mem[64] + 100 len _2220 + 32], 0, mem[mem[64] + _2220 + 164 len ceil32(_3112) + ceil32(_2220) - _2220]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4125 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4125)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4125)]
                            if ceil32(_4125) <= _4125:
                                mem[mem[64] + 96] = ceil32(_4125) + 160
                                _4807 = mem[_1038]
                                mem[ceil32(_4125) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4125) + mem[64] + 192 len ceil32(_4807)] = mem[_1038 + 32 len ceil32(_4807)]
                                if ceil32(_4807) > _4807:
                                    mem[ceil32(_4125) + mem[64] + _4807 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4125) + 160, mem[mem[64] + 128 len ceil32(_4807) + ceil32(_4125) + 64]
                            else:
                                mem[mem[64] + _4125 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4125) + 160
                                _4871 = mem[_1038]
                                mem[ceil32(_4125) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4125) + mem[64] + 192 len ceil32(_4871)] = mem[_1038 + 32 len ceil32(_4871)]
                                if ceil32(_4871) > _4871:
                                    mem[ceil32(_4125) + mem[64] + _4871 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4125) + 160, mem[mem[64] + 128 len _4125 + 32], 0, mem[mem[64] + _4125 + 192 len ceil32(_4871) + ceil32(_4125) - _4125]
                else:
                    mem[0] = address(_3)
                    mem[32] = 101
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2141 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2141] == bool(mem[_2141])
                    if not mem[_2141]:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2221 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2221)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2221)]
                    if ceil32(_2221) <= _2221:
                        mem[mem[64] + 68] = ceil32(_2221) + 128
                        _3097 = mem[_1038]
                        mem[ceil32(_2221) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2221) + mem[64] + 164 len ceil32(_3097)] = mem[_1038 + 32 len ceil32(_3097)]
                        if ceil32(_3097) <= _3097:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2221) + 128, mem[mem[64] + 100 len ceil32(_3097) + ceil32(_2221) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4094 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4094)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4094)]
                            if ceil32(_4094) <= _4094:
                                mem[mem[64] + 96] = ceil32(_4094) + 160
                                _4808 = mem[_1038]
                                mem[ceil32(_4094) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4094) + mem[64] + 192 len ceil32(_4808)] = mem[_1038 + 32 len ceil32(_4808)]
                                if ceil32(_4808) > _4808:
                                    mem[ceil32(_4094) + mem[64] + _4808 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4094) + 160, mem[mem[64] + 128 len ceil32(_4808) + ceil32(_4094) + 64]
                            else:
                                mem[mem[64] + _4094 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4094) + 160
                                _4872 = mem[_1038]
                                mem[ceil32(_4094) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4094) + mem[64] + 192 len ceil32(_4872)] = mem[_1038 + 32 len ceil32(_4872)]
                                if ceil32(_4872) > _4872:
                                    mem[ceil32(_4094) + mem[64] + _4872 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4094) + 160, mem[mem[64] + 128 len _4094 + 32], 0, mem[mem[64] + _4094 + 192 len ceil32(_4872) + ceil32(_4094) - _4094]
                        else:
                            mem[ceil32(_2221) + mem[64] + _3097 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2221) + 128, mem[mem[64] + 100 len ceil32(_3097) + ceil32(_2221) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4126 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4126)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4126)]
                            if ceil32(_4126) <= _4126:
                                mem[mem[64] + 96] = ceil32(_4126) + 160
                                _4809 = mem[_1038]
                                mem[ceil32(_4126) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4126) + mem[64] + 192 len ceil32(_4809)] = mem[_1038 + 32 len ceil32(_4809)]
                                if ceil32(_4809) > _4809:
                                    mem[ceil32(_4126) + mem[64] + _4809 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4126) + 160, mem[mem[64] + 128 len ceil32(_4809) + ceil32(_4126) + 64]
                            else:
                                mem[mem[64] + _4126 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4126) + 160
                                _4873 = mem[_1038]
                                mem[ceil32(_4126) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4126) + mem[64] + 192 len ceil32(_4873)] = mem[_1038 + 32 len ceil32(_4873)]
                                if ceil32(_4873) > _4873:
                                    mem[ceil32(_4126) + mem[64] + _4873 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4126) + 160, mem[mem[64] + 128 len _4126 + 32], 0, mem[mem[64] + _4126 + 192 len ceil32(_4873) + ceil32(_4126) - _4126]
                    else:
                        mem[mem[64] + _2221 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2221) + 128
                        _3113 = mem[_1038]
                        mem[ceil32(_2221) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2221) + mem[64] + 164 len ceil32(_3113)] = mem[_1038 + 32 len ceil32(_3113)]
                        if ceil32(_3113) <= _3113:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2221) + 128, mem[mem[64] + 100 len _2221 + 32], 0, mem[mem[64] + _2221 + 164 len ceil32(_3113) + ceil32(_2221) - _2221]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4095 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4095)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4095)]
                            if ceil32(_4095) <= _4095:
                                mem[mem[64] + 96] = ceil32(_4095) + 160
                                _4810 = mem[_1038]
                                mem[ceil32(_4095) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4095) + mem[64] + 192 len ceil32(_4810)] = mem[_1038 + 32 len ceil32(_4810)]
                                if ceil32(_4810) > _4810:
                                    mem[ceil32(_4095) + mem[64] + _4810 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4095) + 160, mem[mem[64] + 128 len ceil32(_4810) + ceil32(_4095) + 64]
                            else:
                                mem[mem[64] + _4095 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4095) + 160
                                _4874 = mem[_1038]
                                mem[ceil32(_4095) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4095) + mem[64] + 192 len ceil32(_4874)] = mem[_1038 + 32 len ceil32(_4874)]
                                if ceil32(_4874) > _4874:
                                    mem[ceil32(_4095) + mem[64] + _4874 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4095) + 160, mem[mem[64] + 128 len _4095 + 32], 0, mem[mem[64] + _4095 + 192 len ceil32(_4874) + ceil32(_4095) - _4095]
                        else:
                            mem[ceil32(_2221) + mem[64] + _3113 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2221) + 128, mem[mem[64] + 100 len _2221 + 32], 0, mem[mem[64] + _2221 + 164 len ceil32(_3113) + ceil32(_2221) - _2221]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4127 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4127)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4127)]
                            if ceil32(_4127) <= _4127:
                                mem[mem[64] + 96] = ceil32(_4127) + 160
                                _4811 = mem[_1038]
                                mem[ceil32(_4127) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4127) + mem[64] + 192 len ceil32(_4811)] = mem[_1038 + 32 len ceil32(_4811)]
                                if ceil32(_4811) > _4811:
                                    mem[ceil32(_4127) + mem[64] + _4811 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4127) + 160, mem[mem[64] + 128 len ceil32(_4811) + ceil32(_4127) + 64]
                            else:
                                mem[mem[64] + _4127 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4127) + 160
                                _4875 = mem[_1038]
                                mem[ceil32(_4127) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4127) + mem[64] + 192 len ceil32(_4875)] = mem[_1038 + 32 len ceil32(_4875)]
                                if ceil32(_4875) > _4875:
                                    mem[ceil32(_4127) + mem[64] + _4875 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4127) + 160, mem[mem[64] + 128 len _4127 + 32], 0, mem[mem[64] + _4127 + 192 len ceil32(_4875) + ceil32(_4127) - _4127]
            else:
                require ext_code.size(sub_809f3bc4[address(_3)])
                call sub_809f3bc4[address(_3)].permit(address arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2142 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2142] == bool(mem[_2142])
                    if not mem[_2142]:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2222 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2222)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2222)]
                    if ceil32(_2222) <= _2222:
                        mem[mem[64] + 68] = ceil32(_2222) + 128
                        _3098 = mem[_1038]
                        mem[ceil32(_2222) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2222) + mem[64] + 164 len ceil32(_3098)] = mem[_1038 + 32 len ceil32(_3098)]
                        if ceil32(_3098) <= _3098:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2222) + 128, mem[mem[64] + 100 len ceil32(_3098) + ceil32(_2222) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4096 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4096)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4096)]
                            if ceil32(_4096) <= _4096:
                                mem[mem[64] + 96] = ceil32(_4096) + 160
                                _4812 = mem[_1038]
                                mem[ceil32(_4096) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4096) + mem[64] + 192 len ceil32(_4812)] = mem[_1038 + 32 len ceil32(_4812)]
                                if ceil32(_4812) > _4812:
                                    mem[ceil32(_4096) + mem[64] + _4812 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4096) + 160, mem[mem[64] + 128 len ceil32(_4812) + ceil32(_4096) + 64]
                            else:
                                mem[mem[64] + _4096 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4096) + 160
                                _4876 = mem[_1038]
                                mem[ceil32(_4096) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4096) + mem[64] + 192 len ceil32(_4876)] = mem[_1038 + 32 len ceil32(_4876)]
                                if ceil32(_4876) > _4876:
                                    mem[ceil32(_4096) + mem[64] + _4876 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4096) + 160, mem[mem[64] + 128 len _4096 + 32], 0, mem[mem[64] + _4096 + 192 len ceil32(_4876) + ceil32(_4096) - _4096]
                        else:
                            mem[ceil32(_2222) + mem[64] + _3098 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2222) + 128, mem[mem[64] + 100 len ceil32(_3098) + ceil32(_2222) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4128 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4128)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4128)]
                            if ceil32(_4128) <= _4128:
                                mem[mem[64] + 96] = ceil32(_4128) + 160
                                _4813 = mem[_1038]
                                mem[ceil32(_4128) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4128) + mem[64] + 192 len ceil32(_4813)] = mem[_1038 + 32 len ceil32(_4813)]
                                if ceil32(_4813) > _4813:
                                    mem[ceil32(_4128) + mem[64] + _4813 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4128) + 160, mem[mem[64] + 128 len ceil32(_4813) + ceil32(_4128) + 64]
                            else:
                                mem[mem[64] + _4128 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4128) + 160
                                _4877 = mem[_1038]
                                mem[ceil32(_4128) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4128) + mem[64] + 192 len ceil32(_4877)] = mem[_1038 + 32 len ceil32(_4877)]
                                if ceil32(_4877) > _4877:
                                    mem[ceil32(_4128) + mem[64] + _4877 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4128) + 160, mem[mem[64] + 128 len _4128 + 32], 0, mem[mem[64] + _4128 + 192 len ceil32(_4877) + ceil32(_4128) - _4128]
                    else:
                        mem[mem[64] + _2222 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2222) + 128
                        _3114 = mem[_1038]
                        mem[ceil32(_2222) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2222) + mem[64] + 164 len ceil32(_3114)] = mem[_1038 + 32 len ceil32(_3114)]
                        if ceil32(_3114) <= _3114:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2222) + 128, mem[mem[64] + 100 len _2222 + 32], 0, mem[mem[64] + _2222 + 164 len ceil32(_3114) + ceil32(_2222) - _2222]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4097 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4097)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4097)]
                            if ceil32(_4097) <= _4097:
                                mem[mem[64] + 96] = ceil32(_4097) + 160
                                _4814 = mem[_1038]
                                mem[ceil32(_4097) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4097) + mem[64] + 192 len ceil32(_4814)] = mem[_1038 + 32 len ceil32(_4814)]
                                if ceil32(_4814) > _4814:
                                    mem[ceil32(_4097) + mem[64] + _4814 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4097) + 160, mem[mem[64] + 128 len ceil32(_4814) + ceil32(_4097) + 64]
                            else:
                                mem[mem[64] + _4097 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4097) + 160
                                _4878 = mem[_1038]
                                mem[ceil32(_4097) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4097) + mem[64] + 192 len ceil32(_4878)] = mem[_1038 + 32 len ceil32(_4878)]
                                if ceil32(_4878) > _4878:
                                    mem[ceil32(_4097) + mem[64] + _4878 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4097) + 160, mem[mem[64] + 128 len _4097 + 32], 0, mem[mem[64] + _4097 + 192 len ceil32(_4878) + ceil32(_4097) - _4097]
                        else:
                            mem[ceil32(_2222) + mem[64] + _3114 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2222) + 128, mem[mem[64] + 100 len _2222 + 32], 0, mem[mem[64] + _2222 + 164 len ceil32(_3114) + ceil32(_2222) - _2222]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4129 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4129)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4129)]
                            if ceil32(_4129) <= _4129:
                                mem[mem[64] + 96] = ceil32(_4129) + 160
                                _4815 = mem[_1038]
                                mem[ceil32(_4129) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4129) + mem[64] + 192 len ceil32(_4815)] = mem[_1038 + 32 len ceil32(_4815)]
                                if ceil32(_4815) > _4815:
                                    mem[ceil32(_4129) + mem[64] + _4815 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4129) + 160, mem[mem[64] + 128 len ceil32(_4815) + ceil32(_4129) + 64]
                            else:
                                mem[mem[64] + _4129 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4129) + 160
                                _4879 = mem[_1038]
                                mem[ceil32(_4129) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4129) + mem[64] + 192 len ceil32(_4879)] = mem[_1038 + 32 len ceil32(_4879)]
                                if ceil32(_4879) > _4879:
                                    mem[ceil32(_4129) + mem[64] + _4879 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4129) + 160, mem[mem[64] + 128 len _4129 + 32], 0, mem[mem[64] + _4129 + 192 len ceil32(_4879) + ceil32(_4129) - _4129]
                else:
                    mem[0] = address(_3)
                    mem[32] = 101
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2143 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2143] == bool(mem[_2143])
                    if not mem[_2143]:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2223 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2223)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2223)]
                    if ceil32(_2223) <= _2223:
                        mem[mem[64] + 68] = ceil32(_2223) + 128
                        _3099 = mem[_1038]
                        mem[ceil32(_2223) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2223) + mem[64] + 164 len ceil32(_3099)] = mem[_1038 + 32 len ceil32(_3099)]
                        if ceil32(_3099) <= _3099:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2223) + 128, mem[mem[64] + 100 len ceil32(_3099) + ceil32(_2223) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4098 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4098)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4098)]
                            if ceil32(_4098) <= _4098:
                                mem[mem[64] + 96] = ceil32(_4098) + 160
                                _4816 = mem[_1038]
                                mem[ceil32(_4098) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4098) + mem[64] + 192 len ceil32(_4816)] = mem[_1038 + 32 len ceil32(_4816)]
                                if ceil32(_4816) > _4816:
                                    mem[ceil32(_4098) + mem[64] + _4816 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4098) + 160, mem[mem[64] + 128 len ceil32(_4816) + ceil32(_4098) + 64]
                            else:
                                mem[mem[64] + _4098 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4098) + 160
                                _4880 = mem[_1038]
                                mem[ceil32(_4098) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4098) + mem[64] + 192 len ceil32(_4880)] = mem[_1038 + 32 len ceil32(_4880)]
                                if ceil32(_4880) > _4880:
                                    mem[ceil32(_4098) + mem[64] + _4880 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4098) + 160, mem[mem[64] + 128 len _4098 + 32], 0, mem[mem[64] + _4098 + 192 len ceil32(_4880) + ceil32(_4098) - _4098]
                        else:
                            mem[ceil32(_2223) + mem[64] + _3099 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2223) + 128, mem[mem[64] + 100 len ceil32(_3099) + ceil32(_2223) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4130 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4130)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4130)]
                            if ceil32(_4130) <= _4130:
                                mem[mem[64] + 96] = ceil32(_4130) + 160
                                _4817 = mem[_1038]
                                mem[ceil32(_4130) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4130) + mem[64] + 192 len ceil32(_4817)] = mem[_1038 + 32 len ceil32(_4817)]
                                if ceil32(_4817) > _4817:
                                    mem[ceil32(_4130) + mem[64] + _4817 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4130) + 160, mem[mem[64] + 128 len ceil32(_4817) + ceil32(_4130) + 64]
                            else:
                                mem[mem[64] + _4130 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4130) + 160
                                _4881 = mem[_1038]
                                mem[ceil32(_4130) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4130) + mem[64] + 192 len ceil32(_4881)] = mem[_1038 + 32 len ceil32(_4881)]
                                if ceil32(_4881) > _4881:
                                    mem[ceil32(_4130) + mem[64] + _4881 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4130) + 160, mem[mem[64] + 128 len _4130 + 32], 0, mem[mem[64] + _4130 + 192 len ceil32(_4881) + ceil32(_4130) - _4130]
                    else:
                        mem[mem[64] + _2223 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2223) + 128
                        _3115 = mem[_1038]
                        mem[ceil32(_2223) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2223) + mem[64] + 164 len ceil32(_3115)] = mem[_1038 + 32 len ceil32(_3115)]
                        if ceil32(_3115) <= _3115:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2223) + 128, mem[mem[64] + 100 len _2223 + 32], 0, mem[mem[64] + _2223 + 164 len ceil32(_3115) + ceil32(_2223) - _2223]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4099 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4099)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4099)]
                            if ceil32(_4099) <= _4099:
                                mem[mem[64] + 96] = ceil32(_4099) + 160
                                _4818 = mem[_1038]
                                mem[ceil32(_4099) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4099) + mem[64] + 192 len ceil32(_4818)] = mem[_1038 + 32 len ceil32(_4818)]
                                if ceil32(_4818) > _4818:
                                    mem[ceil32(_4099) + mem[64] + _4818 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4099) + 160, mem[mem[64] + 128 len ceil32(_4818) + ceil32(_4099) + 64]
                            else:
                                mem[mem[64] + _4099 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4099) + 160
                                _4882 = mem[_1038]
                                mem[ceil32(_4099) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4099) + mem[64] + 192 len ceil32(_4882)] = mem[_1038 + 32 len ceil32(_4882)]
                                if ceil32(_4882) > _4882:
                                    mem[ceil32(_4099) + mem[64] + _4882 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4099) + 160, mem[mem[64] + 128 len _4099 + 32], 0, mem[mem[64] + _4099 + 192 len ceil32(_4882) + ceil32(_4099) - _4099]
                        else:
                            mem[ceil32(_2223) + mem[64] + _3115 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2223) + 128, mem[mem[64] + 100 len _2223 + 32], 0, mem[mem[64] + _2223 + 164 len ceil32(_3115) + ceil32(_2223) - _2223]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4131 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4131)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4131)]
                            if ceil32(_4131) <= _4131:
                                mem[mem[64] + 96] = ceil32(_4131) + 160
                                _4819 = mem[_1038]
                                mem[ceil32(_4131) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4131) + mem[64] + 192 len ceil32(_4819)] = mem[_1038 + 32 len ceil32(_4819)]
                                if ceil32(_4819) > _4819:
                                    mem[ceil32(_4131) + mem[64] + _4819 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4131) + 160, mem[mem[64] + 128 len ceil32(_4819) + ceil32(_4131) + 64]
                            else:
                                mem[mem[64] + _4131 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4131) + 160
                                _4883 = mem[_1038]
                                mem[ceil32(_4131) + mem[64] + 160] = mem[_1038]
                                mem[ceil32(_4131) + mem[64] + 192 len ceil32(_4883)] = mem[_1038 + 32 len ceil32(_4883)]
                                if ceil32(_4883) > _4883:
                                    mem[ceil32(_4131) + mem[64] + _4883 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4131) + 160, mem[mem[64] + 128 len _4131 + 32], 0, mem[mem[64] + _4131 + 192 len ceil32(_4883) + ceil32(_4131) - _4131]
    else:
        mem[ceil32(ceil32(arg1.length)) + _6 + 129] = 0
        _1035 = mem[224]
        require mem[224] <= test266151307()
        require mem[224] + 159 < arg1.length + 128
        _1037 = mem[mem[224] + 128]
        if mem[mem[224] + 128] > test266151307():
            revert with 'NH{q', 65
        _1039 = mem[64]
        if mem[64] + ceil32(ceil32(mem[mem[224] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[224] + 128])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[mem[224] + 128])) + 1
        mem[_1039] = mem[mem[224] + 128]
        require _1035 + _1037 + 64 <= arg1.length + 32
        mem[_1039 + 32 len ceil32(_1037)] = mem[_1035 + 160 len ceil32(_1037)]
        if ceil32(_1037) <= _1037:
            mem[mem[64] + 100] = arg3
            mem[mem[64] + 132] = uint8(arg4)
            mem[mem[64] + 164] = arg5
            mem[mem[64] + 196] = arg6
            if not sub_809f3bc4[address(_3)]:
                require ext_code.size(sub_7fd80b10Address)
                call sub_7fd80b10Address.permit(address arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2136 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2136] == bool(mem[_2136])
                    if not mem[_2136]:
                        revert with 0, 'denied'
                    _2172 = mem[64]
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2212 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2212)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2212)]
                    if ceil32(_2212) <= _2212:
                        mem[mem[64] + 68] = ceil32(_2212) + 128
                        _3100 = mem[_1039]
                        mem[ceil32(_2212) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2212) + mem[64] + 164 len ceil32(_3100)] = mem[_1039 + 32 len ceil32(_3100)]
                        if ceil32(_3100) <= _3100:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2212) + 128, mem[mem[64] + 100 len ceil32(_3100) + ceil32(_2212) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4100 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4100)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4100)]
                            if ceil32(_4100) <= _4100:
                                mem[mem[64] + 96] = ceil32(_4100) + 160
                                _4820 = mem[_1039]
                                mem[ceil32(_4100) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4100) + mem[64] + 192 len ceil32(_4820)] = mem[_1039 + 32 len ceil32(_4820)]
                                if ceil32(_4820) > _4820:
                                    mem[ceil32(_4100) + mem[64] + _4820 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4100) + 160, mem[mem[64] + 128 len ceil32(_4820) + ceil32(_4100) + 64]
                            else:
                                mem[mem[64] + _4100 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4100) + 160
                                _4884 = mem[_1039]
                                mem[ceil32(_4100) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4100) + mem[64] + 192 len ceil32(_4884)] = mem[_1039 + 32 len ceil32(_4884)]
                                if ceil32(_4884) > _4884:
                                    mem[ceil32(_4100) + mem[64] + _4884 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4100) + 160, mem[mem[64] + 128 len _4100 + 32], 0, mem[mem[64] + _4100 + 192 len ceil32(_4884) + ceil32(_4100) - _4100]
                        else:
                            mem[ceil32(_2212) + mem[64] + _3100 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2212) + 128, mem[mem[64] + 100 len ceil32(_3100) + ceil32(_2212) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4132 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4132)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4132)]
                            if ceil32(_4132) <= _4132:
                                mem[mem[64] + 96] = ceil32(_4132) + 160
                                _4821 = mem[_1039]
                                mem[ceil32(_4132) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4132) + mem[64] + 192 len ceil32(_4821)] = mem[_1039 + 32 len ceil32(_4821)]
                                if ceil32(_4821) > _4821:
                                    mem[ceil32(_4132) + mem[64] + _4821 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4132) + 160, mem[mem[64] + 128 len ceil32(_4821) + ceil32(_4132) + 64]
                            else:
                                mem[mem[64] + _4132 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4132) + 160
                                _4885 = mem[_1039]
                                mem[ceil32(_4132) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4132) + mem[64] + 192 len ceil32(_4885)] = mem[_1039 + 32 len ceil32(_4885)]
                                if ceil32(_4885) > _4885:
                                    mem[ceil32(_4132) + mem[64] + _4885 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4132) + 160, mem[mem[64] + 128 len _4132 + 32], 0, mem[mem[64] + _4132 + 192 len ceil32(_4885) + ceil32(_4132) - _4132]
                    else:
                        mem[mem[64] + _2212 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2212) + 128
                        _3116 = mem[_1039]
                        mem[ceil32(_2212) + _2172 + 132] = mem[_1039]
                        mem[ceil32(_2212) + _2172 + 164 len ceil32(_3116)] = mem[_1039 + 32 len ceil32(_3116)]
                        if ceil32(_3116) <= _3116:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3116) + ceil32(_2212) + _2172 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4101 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4101)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4101)]
                            if ceil32(_4101) <= _4101:
                                mem[mem[64] + 96] = ceil32(_4101) + 160
                                _4822 = mem[_1039]
                                mem[ceil32(_4101) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4101) + mem[64] + 192 len ceil32(_4822)] = mem[_1039 + 32 len ceil32(_4822)]
                                if ceil32(_4822) > _4822:
                                    mem[ceil32(_4101) + mem[64] + _4822 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4101) + 160, mem[mem[64] + 128 len ceil32(_4822) + ceil32(_4101) + 64]
                            else:
                                mem[mem[64] + _4101 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4101) + 160
                                _4886 = mem[_1039]
                                mem[ceil32(_4101) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4101) + mem[64] + 192 len ceil32(_4886)] = mem[_1039 + 32 len ceil32(_4886)]
                                if ceil32(_4886) > _4886:
                                    mem[ceil32(_4101) + mem[64] + _4886 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4101) + 160, mem[mem[64] + 128 len _4101 + 32], 0, mem[mem[64] + _4101 + 192 len ceil32(_4886) + ceil32(_4101) - _4101]
                        else:
                            mem[ceil32(_2212) + _2172 + _3116 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3116) + ceil32(_2212) + _2172 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4133 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4133)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4133)]
                            if ceil32(_4133) <= _4133:
                                mem[mem[64] + 96] = ceil32(_4133) + 160
                                _4823 = mem[_1039]
                                mem[ceil32(_4133) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4133) + mem[64] + 192 len ceil32(_4823)] = mem[_1039 + 32 len ceil32(_4823)]
                                if ceil32(_4823) > _4823:
                                    mem[ceil32(_4133) + mem[64] + _4823 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4133) + 160, mem[mem[64] + 128 len ceil32(_4823) + ceil32(_4133) + 64]
                            else:
                                mem[mem[64] + _4133 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4133) + 160
                                _4887 = mem[_1039]
                                mem[ceil32(_4133) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4133) + mem[64] + 192 len ceil32(_4887)] = mem[_1039 + 32 len ceil32(_4887)]
                                if ceil32(_4887) > _4887:
                                    mem[ceil32(_4133) + mem[64] + _4887 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4133) + 160, mem[mem[64] + 128 len _4133 + 32], 0, mem[mem[64] + _4133 + 192 len ceil32(_4887) + ceil32(_4133) - _4133]
                else:
                    mem[0] = address(_3)
                    mem[32] = 101
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2137 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2137] == bool(mem[_2137])
                    if not mem[_2137]:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2213 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2213)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2213)]
                    if ceil32(_2213) <= _2213:
                        mem[mem[64] + 68] = ceil32(_2213) + 128
                        _3101 = mem[_1039]
                        mem[ceil32(_2213) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2213) + mem[64] + 164 len ceil32(_3101)] = mem[_1039 + 32 len ceil32(_3101)]
                        if ceil32(_3101) <= _3101:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2213) + 128, mem[mem[64] + 100 len ceil32(_3101) + ceil32(_2213) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4102 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4102)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4102)]
                            if ceil32(_4102) <= _4102:
                                mem[mem[64] + 96] = ceil32(_4102) + 160
                                _4824 = mem[_1039]
                                mem[ceil32(_4102) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4102) + mem[64] + 192 len ceil32(_4824)] = mem[_1039 + 32 len ceil32(_4824)]
                                if ceil32(_4824) > _4824:
                                    mem[ceil32(_4102) + mem[64] + _4824 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4102) + 160, mem[mem[64] + 128 len ceil32(_4824) + ceil32(_4102) + 64]
                            else:
                                mem[mem[64] + _4102 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4102) + 160
                                _4888 = mem[_1039]
                                mem[ceil32(_4102) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4102) + mem[64] + 192 len ceil32(_4888)] = mem[_1039 + 32 len ceil32(_4888)]
                                if ceil32(_4888) > _4888:
                                    mem[ceil32(_4102) + mem[64] + _4888 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4102) + 160, mem[mem[64] + 128 len _4102 + 32], 0, mem[mem[64] + _4102 + 192 len ceil32(_4888) + ceil32(_4102) - _4102]
                        else:
                            mem[ceil32(_2213) + mem[64] + _3101 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2213) + 128, mem[mem[64] + 100 len ceil32(_3101) + ceil32(_2213) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4134 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4134)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4134)]
                            if ceil32(_4134) <= _4134:
                                mem[mem[64] + 96] = ceil32(_4134) + 160
                                _4825 = mem[_1039]
                                mem[ceil32(_4134) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4134) + mem[64] + 192 len ceil32(_4825)] = mem[_1039 + 32 len ceil32(_4825)]
                                if ceil32(_4825) > _4825:
                                    mem[ceil32(_4134) + mem[64] + _4825 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4134) + 160, mem[mem[64] + 128 len ceil32(_4825) + ceil32(_4134) + 64]
                            else:
                                mem[mem[64] + _4134 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4134) + 160
                                _4889 = mem[_1039]
                                mem[ceil32(_4134) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4134) + mem[64] + 192 len ceil32(_4889)] = mem[_1039 + 32 len ceil32(_4889)]
                                if ceil32(_4889) > _4889:
                                    mem[ceil32(_4134) + mem[64] + _4889 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4134) + 160, mem[mem[64] + 128 len _4134 + 32], 0, mem[mem[64] + _4134 + 192 len ceil32(_4889) + ceil32(_4134) - _4134]
                    else:
                        mem[mem[64] + _2213 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2213) + 128
                        _3117 = mem[_1039]
                        mem[ceil32(_2213) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2213) + mem[64] + 164 len ceil32(_3117)] = mem[_1039 + 32 len ceil32(_3117)]
                        if ceil32(_3117) <= _3117:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2213) + 128, mem[mem[64] + 100 len _2213 + 32], 0, mem[mem[64] + _2213 + 164 len ceil32(_3117) + ceil32(_2213) - _2213]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4103 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4103)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4103)]
                            if ceil32(_4103) <= _4103:
                                mem[mem[64] + 96] = ceil32(_4103) + 160
                                _4826 = mem[_1039]
                                mem[ceil32(_4103) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4103) + mem[64] + 192 len ceil32(_4826)] = mem[_1039 + 32 len ceil32(_4826)]
                                if ceil32(_4826) > _4826:
                                    mem[ceil32(_4103) + mem[64] + _4826 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4103) + 160, mem[mem[64] + 128 len ceil32(_4826) + ceil32(_4103) + 64]
                            else:
                                mem[mem[64] + _4103 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4103) + 160
                                _4890 = mem[_1039]
                                mem[ceil32(_4103) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4103) + mem[64] + 192 len ceil32(_4890)] = mem[_1039 + 32 len ceil32(_4890)]
                                if ceil32(_4890) > _4890:
                                    mem[ceil32(_4103) + mem[64] + _4890 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4103) + 160, mem[mem[64] + 128 len _4103 + 32], 0, mem[mem[64] + _4103 + 192 len ceil32(_4890) + ceil32(_4103) - _4103]
                        else:
                            mem[ceil32(_2213) + mem[64] + _3117 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2213) + 128, mem[mem[64] + 100 len _2213 + 32], 0, mem[mem[64] + _2213 + 164 len ceil32(_3117) + ceil32(_2213) - _2213]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4135 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4135)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4135)]
                            if ceil32(_4135) <= _4135:
                                mem[mem[64] + 96] = ceil32(_4135) + 160
                                _4827 = mem[_1039]
                                mem[ceil32(_4135) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4135) + mem[64] + 192 len ceil32(_4827)] = mem[_1039 + 32 len ceil32(_4827)]
                                if ceil32(_4827) > _4827:
                                    mem[ceil32(_4135) + mem[64] + _4827 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4135) + 160, mem[mem[64] + 128 len ceil32(_4827) + ceil32(_4135) + 64]
                            else:
                                mem[mem[64] + _4135 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4135) + 160
                                _4891 = mem[_1039]
                                mem[ceil32(_4135) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4135) + mem[64] + 192 len ceil32(_4891)] = mem[_1039 + 32 len ceil32(_4891)]
                                if ceil32(_4891) > _4891:
                                    mem[ceil32(_4135) + mem[64] + _4891 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4135) + 160, mem[mem[64] + 128 len _4135 + 32], 0, mem[mem[64] + _4135 + 192 len ceil32(_4891) + ceil32(_4135) - _4135]
            else:
                require ext_code.size(sub_809f3bc4[address(_3)])
                call sub_809f3bc4[address(_3)].permit(address arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2138 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2138] == bool(mem[_2138])
                    if not mem[_2138]:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2214 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2214)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2214)]
                    if ceil32(_2214) <= _2214:
                        mem[mem[64] + 68] = ceil32(_2214) + 128
                        _3102 = mem[_1039]
                        mem[ceil32(_2214) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2214) + mem[64] + 164 len ceil32(_3102)] = mem[_1039 + 32 len ceil32(_3102)]
                        if ceil32(_3102) <= _3102:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2214) + 128, mem[mem[64] + 100 len ceil32(_3102) + ceil32(_2214) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4104 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4104)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4104)]
                            if ceil32(_4104) <= _4104:
                                mem[mem[64] + 96] = ceil32(_4104) + 160
                                _4828 = mem[_1039]
                                mem[ceil32(_4104) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4104) + mem[64] + 192 len ceil32(_4828)] = mem[_1039 + 32 len ceil32(_4828)]
                                if ceil32(_4828) > _4828:
                                    mem[ceil32(_4104) + mem[64] + _4828 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4104) + 160, mem[mem[64] + 128 len ceil32(_4828) + ceil32(_4104) + 64]
                            else:
                                mem[mem[64] + _4104 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4104) + 160
                                _4892 = mem[_1039]
                                mem[ceil32(_4104) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4104) + mem[64] + 192 len ceil32(_4892)] = mem[_1039 + 32 len ceil32(_4892)]
                                if ceil32(_4892) > _4892:
                                    mem[ceil32(_4104) + mem[64] + _4892 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4104) + 160, mem[mem[64] + 128 len _4104 + 32], 0, mem[mem[64] + _4104 + 192 len ceil32(_4892) + ceil32(_4104) - _4104]
                        else:
                            mem[ceil32(_2214) + mem[64] + _3102 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2214) + 128, mem[mem[64] + 100 len ceil32(_3102) + ceil32(_2214) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4136 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4136)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4136)]
                            if ceil32(_4136) <= _4136:
                                mem[mem[64] + 96] = ceil32(_4136) + 160
                                _4829 = mem[_1039]
                                mem[ceil32(_4136) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4136) + mem[64] + 192 len ceil32(_4829)] = mem[_1039 + 32 len ceil32(_4829)]
                                if ceil32(_4829) > _4829:
                                    mem[ceil32(_4136) + mem[64] + _4829 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4136) + 160, mem[mem[64] + 128 len ceil32(_4829) + ceil32(_4136) + 64]
                            else:
                                mem[mem[64] + _4136 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4136) + 160
                                _4893 = mem[_1039]
                                mem[ceil32(_4136) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4136) + mem[64] + 192 len ceil32(_4893)] = mem[_1039 + 32 len ceil32(_4893)]
                                if ceil32(_4893) > _4893:
                                    mem[ceil32(_4136) + mem[64] + _4893 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4136) + 160, mem[mem[64] + 128 len _4136 + 32], 0, mem[mem[64] + _4136 + 192 len ceil32(_4893) + ceil32(_4136) - _4136]
                    else:
                        mem[mem[64] + _2214 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2214) + 128
                        _3118 = mem[_1039]
                        mem[ceil32(_2214) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2214) + mem[64] + 164 len ceil32(_3118)] = mem[_1039 + 32 len ceil32(_3118)]
                        if ceil32(_3118) <= _3118:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2214) + 128, mem[mem[64] + 100 len _2214 + 32], 0, mem[mem[64] + _2214 + 164 len ceil32(_3118) + ceil32(_2214) - _2214]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4105 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4105)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4105)]
                            if ceil32(_4105) <= _4105:
                                mem[mem[64] + 96] = ceil32(_4105) + 160
                                _4830 = mem[_1039]
                                mem[ceil32(_4105) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4105) + mem[64] + 192 len ceil32(_4830)] = mem[_1039 + 32 len ceil32(_4830)]
                                if ceil32(_4830) > _4830:
                                    mem[ceil32(_4105) + mem[64] + _4830 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4105) + 160, mem[mem[64] + 128 len ceil32(_4830) + ceil32(_4105) + 64]
                            else:
                                mem[mem[64] + _4105 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4105) + 160
                                _4894 = mem[_1039]
                                mem[ceil32(_4105) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4105) + mem[64] + 192 len ceil32(_4894)] = mem[_1039 + 32 len ceil32(_4894)]
                                if ceil32(_4894) > _4894:
                                    mem[ceil32(_4105) + mem[64] + _4894 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4105) + 160, mem[mem[64] + 128 len _4105 + 32], 0, mem[mem[64] + _4105 + 192 len ceil32(_4894) + ceil32(_4105) - _4105]
                        else:
                            mem[ceil32(_2214) + mem[64] + _3118 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2214) + 128, mem[mem[64] + 100 len _2214 + 32], 0, mem[mem[64] + _2214 + 164 len ceil32(_3118) + ceil32(_2214) - _2214]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4137 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4137)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4137)]
                            if ceil32(_4137) <= _4137:
                                mem[mem[64] + 96] = ceil32(_4137) + 160
                                _4831 = mem[_1039]
                                mem[ceil32(_4137) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4137) + mem[64] + 192 len ceil32(_4831)] = mem[_1039 + 32 len ceil32(_4831)]
                                if ceil32(_4831) > _4831:
                                    mem[ceil32(_4137) + mem[64] + _4831 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4137) + 160, mem[mem[64] + 128 len ceil32(_4831) + ceil32(_4137) + 64]
                            else:
                                mem[mem[64] + _4137 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4137) + 160
                                _4895 = mem[_1039]
                                mem[ceil32(_4137) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4137) + mem[64] + 192 len ceil32(_4895)] = mem[_1039 + 32 len ceil32(_4895)]
                                if ceil32(_4895) > _4895:
                                    mem[ceil32(_4137) + mem[64] + _4895 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4137) + 160, mem[mem[64] + 128 len _4137 + 32], 0, mem[mem[64] + _4137 + 192 len ceil32(_4895) + ceil32(_4137) - _4137]
                else:
                    mem[0] = address(_3)
                    mem[32] = 101
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2139 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2139] == bool(mem[_2139])
                    if not mem[_2139]:
                        revert with 0, 'denied'
                    _2178 = mem[64]
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2215 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2215)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2215)]
                    if ceil32(_2215) <= _2215:
                        mem[mem[64] + 68] = ceil32(_2215) + 128
                        _3103 = mem[_1039]
                        mem[ceil32(_2215) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2215) + mem[64] + 164 len ceil32(_3103)] = mem[_1039 + 32 len ceil32(_3103)]
                        if ceil32(_3103) <= _3103:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2215) + 128, mem[mem[64] + 100 len ceil32(_3103) + ceil32(_2215) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4106 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4106)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4106)]
                            if ceil32(_4106) <= _4106:
                                mem[mem[64] + 96] = ceil32(_4106) + 160
                                _4832 = mem[_1039]
                                mem[ceil32(_4106) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4106) + mem[64] + 192 len ceil32(_4832)] = mem[_1039 + 32 len ceil32(_4832)]
                                if ceil32(_4832) > _4832:
                                    mem[ceil32(_4106) + mem[64] + _4832 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4106) + 160, mem[mem[64] + 128 len ceil32(_4832) + ceil32(_4106) + 64]
                            else:
                                mem[mem[64] + _4106 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4106) + 160
                                _4896 = mem[_1039]
                                mem[ceil32(_4106) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4106) + mem[64] + 192 len ceil32(_4896)] = mem[_1039 + 32 len ceil32(_4896)]
                                if ceil32(_4896) > _4896:
                                    mem[ceil32(_4106) + mem[64] + _4896 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4106) + 160, mem[mem[64] + 128 len _4106 + 32], 0, mem[mem[64] + _4106 + 192 len ceil32(_4896) + ceil32(_4106) - _4106]
                        else:
                            mem[ceil32(_2215) + mem[64] + _3103 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2215) + 128, mem[mem[64] + 100 len ceil32(_3103) + ceil32(_2215) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4138 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4138)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4138)]
                            if ceil32(_4138) <= _4138:
                                mem[mem[64] + 96] = ceil32(_4138) + 160
                                _4833 = mem[_1039]
                                mem[ceil32(_4138) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4138) + mem[64] + 192 len ceil32(_4833)] = mem[_1039 + 32 len ceil32(_4833)]
                                if ceil32(_4833) > _4833:
                                    mem[ceil32(_4138) + mem[64] + _4833 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4138) + 160, mem[mem[64] + 128 len ceil32(_4833) + ceil32(_4138) + 64]
                            else:
                                mem[mem[64] + _4138 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4138) + 160
                                _4897 = mem[_1039]
                                mem[ceil32(_4138) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4138) + mem[64] + 192 len ceil32(_4897)] = mem[_1039 + 32 len ceil32(_4897)]
                                if ceil32(_4897) > _4897:
                                    mem[ceil32(_4138) + mem[64] + _4897 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4138) + 160, mem[mem[64] + 128 len _4138 + 32], 0, mem[mem[64] + _4138 + 192 len ceil32(_4897) + ceil32(_4138) - _4138]
                    else:
                        mem[mem[64] + _2215 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2215) + 128
                        _3119 = mem[_1039]
                        mem[ceil32(_2215) + _2178 + 132] = mem[_1039]
                        mem[ceil32(_2215) + _2178 + 164 len ceil32(_3119)] = mem[_1039 + 32 len ceil32(_3119)]
                        if ceil32(_3119) <= _3119:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3119) + ceil32(_2215) + _2178 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4107 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4107)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4107)]
                            if ceil32(_4107) <= _4107:
                                mem[mem[64] + 96] = ceil32(_4107) + 160
                                _4834 = mem[_1039]
                                mem[ceil32(_4107) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4107) + mem[64] + 192 len ceil32(_4834)] = mem[_1039 + 32 len ceil32(_4834)]
                                if ceil32(_4834) > _4834:
                                    mem[ceil32(_4107) + mem[64] + _4834 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4107) + 160, mem[mem[64] + 128 len ceil32(_4834) + ceil32(_4107) + 64]
                            else:
                                mem[mem[64] + _4107 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4107) + 160
                                _4898 = mem[_1039]
                                mem[ceil32(_4107) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4107) + mem[64] + 192 len ceil32(_4898)] = mem[_1039 + 32 len ceil32(_4898)]
                                if ceil32(_4898) > _4898:
                                    mem[ceil32(_4107) + mem[64] + _4898 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4107) + 160, mem[mem[64] + 128 len _4107 + 32], 0, mem[mem[64] + _4107 + 192 len ceil32(_4898) + ceil32(_4107) - _4107]
                        else:
                            mem[ceil32(_2215) + _2178 + _3119 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3119) + ceil32(_2215) + _2178 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4139 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4139)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4139)]
                            if ceil32(_4139) <= _4139:
                                mem[mem[64] + 96] = ceil32(_4139) + 160
                                _4835 = mem[_1039]
                                mem[ceil32(_4139) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4139) + mem[64] + 192 len ceil32(_4835)] = mem[_1039 + 32 len ceil32(_4835)]
                                if ceil32(_4835) > _4835:
                                    mem[ceil32(_4139) + mem[64] + _4835 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4139) + 160, mem[mem[64] + 128 len ceil32(_4835) + ceil32(_4139) + 64]
                            else:
                                mem[mem[64] + _4139 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4139) + 160
                                _4899 = mem[_1039]
                                mem[ceil32(_4139) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4139) + mem[64] + 192 len ceil32(_4899)] = mem[_1039 + 32 len ceil32(_4899)]
                                if ceil32(_4899) > _4899:
                                    mem[ceil32(_4139) + mem[64] + _4899 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4139) + 160, mem[mem[64] + 128 len _4139 + 32], 0, mem[mem[64] + _4139 + 192 len ceil32(_4899) + ceil32(_4139) - _4139]
        else:
            mem[_1039 + _1037 + 32] = 0
            mem[mem[64] + 100] = arg3
            mem[mem[64] + 132] = uint8(arg4)
            mem[mem[64] + 164] = arg5
            mem[mem[64] + 196] = arg6
            if not sub_809f3bc4[address(_3)]:
                require ext_code.size(sub_7fd80b10Address)
                call sub_7fd80b10Address.permit(address arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2144 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2144] == bool(mem[_2144])
                    if not mem[_2144]:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2224 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2224)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2224)]
                    if ceil32(_2224) <= _2224:
                        mem[mem[64] + 68] = ceil32(_2224) + 128
                        _3104 = mem[_1039]
                        mem[ceil32(_2224) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2224) + mem[64] + 164 len ceil32(_3104)] = mem[_1039 + 32 len ceil32(_3104)]
                        if ceil32(_3104) <= _3104:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2224) + 128, mem[mem[64] + 100 len ceil32(_3104) + ceil32(_2224) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4108 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4108)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4108)]
                            if ceil32(_4108) <= _4108:
                                mem[mem[64] + 96] = ceil32(_4108) + 160
                                _4836 = mem[_1039]
                                mem[ceil32(_4108) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4108) + mem[64] + 192 len ceil32(_4836)] = mem[_1039 + 32 len ceil32(_4836)]
                                if ceil32(_4836) > _4836:
                                    mem[ceil32(_4108) + mem[64] + _4836 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4108) + 160, mem[mem[64] + 128 len ceil32(_4836) + ceil32(_4108) + 64]
                            else:
                                mem[mem[64] + _4108 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4108) + 160
                                _4900 = mem[_1039]
                                mem[ceil32(_4108) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4108) + mem[64] + 192 len ceil32(_4900)] = mem[_1039 + 32 len ceil32(_4900)]
                                if ceil32(_4900) > _4900:
                                    mem[ceil32(_4108) + mem[64] + _4900 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4108) + 160, mem[mem[64] + 128 len _4108 + 32], 0, mem[mem[64] + _4108 + 192 len ceil32(_4900) + ceil32(_4108) - _4108]
                        else:
                            mem[ceil32(_2224) + mem[64] + _3104 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2224) + 128, mem[mem[64] + 100 len ceil32(_3104) + ceil32(_2224) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4140 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4140)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4140)]
                            if ceil32(_4140) <= _4140:
                                mem[mem[64] + 96] = ceil32(_4140) + 160
                                _4837 = mem[_1039]
                                mem[ceil32(_4140) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4140) + mem[64] + 192 len ceil32(_4837)] = mem[_1039 + 32 len ceil32(_4837)]
                                if ceil32(_4837) > _4837:
                                    mem[ceil32(_4140) + mem[64] + _4837 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4140) + 160, mem[mem[64] + 128 len ceil32(_4837) + ceil32(_4140) + 64]
                            else:
                                mem[mem[64] + _4140 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4140) + 160
                                _4901 = mem[_1039]
                                mem[ceil32(_4140) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4140) + mem[64] + 192 len ceil32(_4901)] = mem[_1039 + 32 len ceil32(_4901)]
                                if ceil32(_4901) > _4901:
                                    mem[ceil32(_4140) + mem[64] + _4901 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4140) + 160, mem[mem[64] + 128 len _4140 + 32], 0, mem[mem[64] + _4140 + 192 len ceil32(_4901) + ceil32(_4140) - _4140]
                    else:
                        mem[mem[64] + _2224 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2224) + 128
                        _3120 = mem[_1039]
                        mem[ceil32(_2224) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2224) + mem[64] + 164 len ceil32(_3120)] = mem[_1039 + 32 len ceil32(_3120)]
                        if ceil32(_3120) <= _3120:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2224) + 128, mem[mem[64] + 100 len _2224 + 32], 0, mem[mem[64] + _2224 + 164 len ceil32(_3120) + ceil32(_2224) - _2224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4109 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4109)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4109)]
                            if ceil32(_4109) <= _4109:
                                mem[mem[64] + 96] = ceil32(_4109) + 160
                                _4838 = mem[_1039]
                                mem[ceil32(_4109) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4109) + mem[64] + 192 len ceil32(_4838)] = mem[_1039 + 32 len ceil32(_4838)]
                                if ceil32(_4838) > _4838:
                                    mem[ceil32(_4109) + mem[64] + _4838 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4109) + 160, mem[mem[64] + 128 len ceil32(_4838) + ceil32(_4109) + 64]
                            else:
                                mem[mem[64] + _4109 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4109) + 160
                                _4902 = mem[_1039]
                                mem[ceil32(_4109) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4109) + mem[64] + 192 len ceil32(_4902)] = mem[_1039 + 32 len ceil32(_4902)]
                                if ceil32(_4902) > _4902:
                                    mem[ceil32(_4109) + mem[64] + _4902 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4109) + 160, mem[mem[64] + 128 len _4109 + 32], 0, mem[mem[64] + _4109 + 192 len ceil32(_4902) + ceil32(_4109) - _4109]
                        else:
                            mem[ceil32(_2224) + mem[64] + _3120 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2224) + 128, mem[mem[64] + 100 len _2224 + 32], 0, mem[mem[64] + _2224 + 164 len ceil32(_3120) + ceil32(_2224) - _2224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4141 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4141)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4141)]
                            if ceil32(_4141) <= _4141:
                                mem[mem[64] + 96] = ceil32(_4141) + 160
                                _4839 = mem[_1039]
                                mem[ceil32(_4141) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4141) + mem[64] + 192 len ceil32(_4839)] = mem[_1039 + 32 len ceil32(_4839)]
                                if ceil32(_4839) > _4839:
                                    mem[ceil32(_4141) + mem[64] + _4839 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4141) + 160, mem[mem[64] + 128 len ceil32(_4839) + ceil32(_4141) + 64]
                            else:
                                mem[mem[64] + _4141 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4141) + 160
                                _4903 = mem[_1039]
                                mem[ceil32(_4141) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4141) + mem[64] + 192 len ceil32(_4903)] = mem[_1039 + 32 len ceil32(_4903)]
                                if ceil32(_4903) > _4903:
                                    mem[ceil32(_4141) + mem[64] + _4903 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4141) + 160, mem[mem[64] + 128 len _4141 + 32], 0, mem[mem[64] + _4141 + 192 len ceil32(_4903) + ceil32(_4141) - _4141]
                else:
                    mem[0] = address(_3)
                    mem[32] = 101
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2145 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2145] == bool(mem[_2145])
                    if not mem[_2145]:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2225 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2225)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2225)]
                    if ceil32(_2225) <= _2225:
                        mem[mem[64] + 68] = ceil32(_2225) + 128
                        _3105 = mem[_1039]
                        mem[ceil32(_2225) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2225) + mem[64] + 164 len ceil32(_3105)] = mem[_1039 + 32 len ceil32(_3105)]
                        if ceil32(_3105) <= _3105:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2225) + 128, mem[mem[64] + 100 len ceil32(_3105) + ceil32(_2225) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4110 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4110)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4110)]
                            if ceil32(_4110) <= _4110:
                                mem[mem[64] + 96] = ceil32(_4110) + 160
                                _4840 = mem[_1039]
                                mem[ceil32(_4110) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4110) + mem[64] + 192 len ceil32(_4840)] = mem[_1039 + 32 len ceil32(_4840)]
                                if ceil32(_4840) > _4840:
                                    mem[ceil32(_4110) + mem[64] + _4840 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4110) + 160, mem[mem[64] + 128 len ceil32(_4840) + ceil32(_4110) + 64]
                            else:
                                mem[mem[64] + _4110 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4110) + 160
                                _4904 = mem[_1039]
                                mem[ceil32(_4110) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4110) + mem[64] + 192 len ceil32(_4904)] = mem[_1039 + 32 len ceil32(_4904)]
                                if ceil32(_4904) > _4904:
                                    mem[ceil32(_4110) + mem[64] + _4904 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4110) + 160, mem[mem[64] + 128 len _4110 + 32], 0, mem[mem[64] + _4110 + 192 len ceil32(_4904) + ceil32(_4110) - _4110]
                        else:
                            mem[ceil32(_2225) + mem[64] + _3105 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2225) + 128, mem[mem[64] + 100 len ceil32(_3105) + ceil32(_2225) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4142 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4142)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4142)]
                            if ceil32(_4142) <= _4142:
                                mem[mem[64] + 96] = ceil32(_4142) + 160
                                _4841 = mem[_1039]
                                mem[ceil32(_4142) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4142) + mem[64] + 192 len ceil32(_4841)] = mem[_1039 + 32 len ceil32(_4841)]
                                if ceil32(_4841) > _4841:
                                    mem[ceil32(_4142) + mem[64] + _4841 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4142) + 160, mem[mem[64] + 128 len ceil32(_4841) + ceil32(_4142) + 64]
                            else:
                                mem[mem[64] + _4142 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4142) + 160
                                _4905 = mem[_1039]
                                mem[ceil32(_4142) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4142) + mem[64] + 192 len ceil32(_4905)] = mem[_1039 + 32 len ceil32(_4905)]
                                if ceil32(_4905) > _4905:
                                    mem[ceil32(_4142) + mem[64] + _4905 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4142) + 160, mem[mem[64] + 128 len _4142 + 32], 0, mem[mem[64] + _4142 + 192 len ceil32(_4905) + ceil32(_4142) - _4142]
                    else:
                        mem[mem[64] + _2225 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2225) + 128
                        _3121 = mem[_1039]
                        mem[ceil32(_2225) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2225) + mem[64] + 164 len ceil32(_3121)] = mem[_1039 + 32 len ceil32(_3121)]
                        if ceil32(_3121) <= _3121:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2225) + 128, mem[mem[64] + 100 len _2225 + 32], 0, mem[mem[64] + _2225 + 164 len ceil32(_3121) + ceil32(_2225) - _2225]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4111 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4111)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4111)]
                            if ceil32(_4111) <= _4111:
                                mem[mem[64] + 96] = ceil32(_4111) + 160
                                _4842 = mem[_1039]
                                mem[ceil32(_4111) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4111) + mem[64] + 192 len ceil32(_4842)] = mem[_1039 + 32 len ceil32(_4842)]
                                if ceil32(_4842) > _4842:
                                    mem[ceil32(_4111) + mem[64] + _4842 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4111) + 160, mem[mem[64] + 128 len ceil32(_4842) + ceil32(_4111) + 64]
                            else:
                                mem[mem[64] + _4111 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4111) + 160
                                _4906 = mem[_1039]
                                mem[ceil32(_4111) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4111) + mem[64] + 192 len ceil32(_4906)] = mem[_1039 + 32 len ceil32(_4906)]
                                if ceil32(_4906) > _4906:
                                    mem[ceil32(_4111) + mem[64] + _4906 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4111) + 160, mem[mem[64] + 128 len _4111 + 32], 0, mem[mem[64] + _4111 + 192 len ceil32(_4906) + ceil32(_4111) - _4111]
                        else:
                            mem[ceil32(_2225) + mem[64] + _3121 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2225) + 128, mem[mem[64] + 100 len _2225 + 32], 0, mem[mem[64] + _2225 + 164 len ceil32(_3121) + ceil32(_2225) - _2225]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4143 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4143)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4143)]
                            if ceil32(_4143) <= _4143:
                                mem[mem[64] + 96] = ceil32(_4143) + 160
                                _4843 = mem[_1039]
                                mem[ceil32(_4143) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4143) + mem[64] + 192 len ceil32(_4843)] = mem[_1039 + 32 len ceil32(_4843)]
                                if ceil32(_4843) > _4843:
                                    mem[ceil32(_4143) + mem[64] + _4843 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4143) + 160, mem[mem[64] + 128 len ceil32(_4843) + ceil32(_4143) + 64]
                            else:
                                mem[mem[64] + _4143 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4143) + 160
                                _4907 = mem[_1039]
                                mem[ceil32(_4143) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4143) + mem[64] + 192 len ceil32(_4907)] = mem[_1039 + 32 len ceil32(_4907)]
                                if ceil32(_4907) > _4907:
                                    mem[ceil32(_4143) + mem[64] + _4907 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4143) + 160, mem[mem[64] + 128 len _4143 + 32], 0, mem[mem[64] + _4143 + 192 len ceil32(_4907) + ceil32(_4143) - _4143]
            else:
                require ext_code.size(sub_809f3bc4[address(_3)])
                call sub_809f3bc4[address(_3)].permit(address arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2146 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2146] == bool(mem[_2146])
                    if not mem[_2146]:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2226 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2226)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2226)]
                    if ceil32(_2226) <= _2226:
                        mem[mem[64] + 68] = ceil32(_2226) + 128
                        _3106 = mem[_1039]
                        mem[ceil32(_2226) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2226) + mem[64] + 164 len ceil32(_3106)] = mem[_1039 + 32 len ceil32(_3106)]
                        if ceil32(_3106) <= _3106:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2226) + 128, mem[mem[64] + 100 len ceil32(_3106) + ceil32(_2226) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4112 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4112)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4112)]
                            if ceil32(_4112) <= _4112:
                                mem[mem[64] + 96] = ceil32(_4112) + 160
                                _4844 = mem[_1039]
                                mem[ceil32(_4112) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4112) + mem[64] + 192 len ceil32(_4844)] = mem[_1039 + 32 len ceil32(_4844)]
                                if ceil32(_4844) > _4844:
                                    mem[ceil32(_4112) + mem[64] + _4844 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4112) + 160, mem[mem[64] + 128 len ceil32(_4844) + ceil32(_4112) + 64]
                            else:
                                mem[mem[64] + _4112 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4112) + 160
                                _4908 = mem[_1039]
                                mem[ceil32(_4112) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4112) + mem[64] + 192 len ceil32(_4908)] = mem[_1039 + 32 len ceil32(_4908)]
                                if ceil32(_4908) > _4908:
                                    mem[ceil32(_4112) + mem[64] + _4908 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4112) + 160, mem[mem[64] + 128 len _4112 + 32], 0, mem[mem[64] + _4112 + 192 len ceil32(_4908) + ceil32(_4112) - _4112]
                        else:
                            mem[ceil32(_2226) + mem[64] + _3106 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2226) + 128, mem[mem[64] + 100 len ceil32(_3106) + ceil32(_2226) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4144 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4144)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4144)]
                            if ceil32(_4144) <= _4144:
                                mem[mem[64] + 96] = ceil32(_4144) + 160
                                _4845 = mem[_1039]
                                mem[ceil32(_4144) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4144) + mem[64] + 192 len ceil32(_4845)] = mem[_1039 + 32 len ceil32(_4845)]
                                if ceil32(_4845) > _4845:
                                    mem[ceil32(_4144) + mem[64] + _4845 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4144) + 160, mem[mem[64] + 128 len ceil32(_4845) + ceil32(_4144) + 64]
                            else:
                                mem[mem[64] + _4144 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4144) + 160
                                _4909 = mem[_1039]
                                mem[ceil32(_4144) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4144) + mem[64] + 192 len ceil32(_4909)] = mem[_1039 + 32 len ceil32(_4909)]
                                if ceil32(_4909) > _4909:
                                    mem[ceil32(_4144) + mem[64] + _4909 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4144) + 160, mem[mem[64] + 128 len _4144 + 32], 0, mem[mem[64] + _4144 + 192 len ceil32(_4909) + ceil32(_4144) - _4144]
                    else:
                        mem[mem[64] + _2226 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2226) + 128
                        _3122 = mem[_1039]
                        mem[ceil32(_2226) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2226) + mem[64] + 164 len ceil32(_3122)] = mem[_1039 + 32 len ceil32(_3122)]
                        if ceil32(_3122) <= _3122:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2226) + 128, mem[mem[64] + 100 len _2226 + 32], 0, mem[mem[64] + _2226 + 164 len ceil32(_3122) + ceil32(_2226) - _2226]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4113 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4113)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4113)]
                            if ceil32(_4113) <= _4113:
                                mem[mem[64] + 96] = ceil32(_4113) + 160
                                _4846 = mem[_1039]
                                mem[ceil32(_4113) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4113) + mem[64] + 192 len ceil32(_4846)] = mem[_1039 + 32 len ceil32(_4846)]
                                if ceil32(_4846) > _4846:
                                    mem[ceil32(_4113) + mem[64] + _4846 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4113) + 160, mem[mem[64] + 128 len ceil32(_4846) + ceil32(_4113) + 64]
                            else:
                                mem[mem[64] + _4113 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4113) + 160
                                _4910 = mem[_1039]
                                mem[ceil32(_4113) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4113) + mem[64] + 192 len ceil32(_4910)] = mem[_1039 + 32 len ceil32(_4910)]
                                if ceil32(_4910) > _4910:
                                    mem[ceil32(_4113) + mem[64] + _4910 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4113) + 160, mem[mem[64] + 128 len _4113 + 32], 0, mem[mem[64] + _4113 + 192 len ceil32(_4910) + ceil32(_4113) - _4113]
                        else:
                            mem[ceil32(_2226) + mem[64] + _3122 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2226) + 128, mem[mem[64] + 100 len _2226 + 32], 0, mem[mem[64] + _2226 + 164 len ceil32(_3122) + ceil32(_2226) - _2226]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4145 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4145)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4145)]
                            if ceil32(_4145) <= _4145:
                                mem[mem[64] + 96] = ceil32(_4145) + 160
                                _4847 = mem[_1039]
                                mem[ceil32(_4145) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4145) + mem[64] + 192 len ceil32(_4847)] = mem[_1039 + 32 len ceil32(_4847)]
                                if ceil32(_4847) > _4847:
                                    mem[ceil32(_4145) + mem[64] + _4847 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4145) + 160, mem[mem[64] + 128 len ceil32(_4847) + ceil32(_4145) + 64]
                            else:
                                mem[mem[64] + _4145 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4145) + 160
                                _4911 = mem[_1039]
                                mem[ceil32(_4145) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4145) + mem[64] + 192 len ceil32(_4911)] = mem[_1039 + 32 len ceil32(_4911)]
                                if ceil32(_4911) > _4911:
                                    mem[ceil32(_4145) + mem[64] + _4911 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4145) + 160, mem[mem[64] + 128 len _4145 + 32], 0, mem[mem[64] + _4145 + 192 len ceil32(_4911) + ceil32(_4145) - _4145]
                else:
                    mem[0] = address(_3)
                    mem[32] = 101
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = address(_4)
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xa58666d3 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, address(_4)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2147 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2147] == bool(mem[_2147])
                    if not mem[_2147]:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2227 = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 100] = mem[ceil32(ceil32(arg1.length)) + 97]
                    mem[mem[64] + 132 len ceil32(_2227)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_2227)]
                    if ceil32(_2227) <= _2227:
                        mem[mem[64] + 68] = ceil32(_2227) + 128
                        _3107 = mem[_1039]
                        mem[ceil32(_2227) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2227) + mem[64] + 164 len ceil32(_3107)] = mem[_1039 + 32 len ceil32(_3107)]
                        if ceil32(_3107) <= _3107:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2227) + 128, mem[mem[64] + 100 len ceil32(_3107) + ceil32(_2227) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4114 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4114)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4114)]
                            if ceil32(_4114) <= _4114:
                                mem[mem[64] + 96] = ceil32(_4114) + 160
                                _4848 = mem[_1039]
                                mem[ceil32(_4114) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4114) + mem[64] + 192 len ceil32(_4848)] = mem[_1039 + 32 len ceil32(_4848)]
                                if ceil32(_4848) > _4848:
                                    mem[ceil32(_4114) + mem[64] + _4848 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4114) + 160, mem[mem[64] + 128 len ceil32(_4848) + ceil32(_4114) + 64]
                            else:
                                mem[mem[64] + _4114 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4114) + 160
                                _4912 = mem[_1039]
                                mem[ceil32(_4114) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4114) + mem[64] + 192 len ceil32(_4912)] = mem[_1039 + 32 len ceil32(_4912)]
                                if ceil32(_4912) > _4912:
                                    mem[ceil32(_4114) + mem[64] + _4912 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4114) + 160, mem[mem[64] + 128 len _4114 + 32], 0, mem[mem[64] + _4114 + 192 len ceil32(_4912) + ceil32(_4114) - _4114]
                        else:
                            mem[ceil32(_2227) + mem[64] + _3107 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2227) + 128, mem[mem[64] + 100 len ceil32(_3107) + ceil32(_2227) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4146 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4146)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4146)]
                            if ceil32(_4146) <= _4146:
                                mem[mem[64] + 96] = ceil32(_4146) + 160
                                _4849 = mem[_1039]
                                mem[ceil32(_4146) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4146) + mem[64] + 192 len ceil32(_4849)] = mem[_1039 + 32 len ceil32(_4849)]
                                if ceil32(_4849) > _4849:
                                    mem[ceil32(_4146) + mem[64] + _4849 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4146) + 160, mem[mem[64] + 128 len ceil32(_4849) + ceil32(_4146) + 64]
                            else:
                                mem[mem[64] + _4146 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4146) + 160
                                _4913 = mem[_1039]
                                mem[ceil32(_4146) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4146) + mem[64] + 192 len ceil32(_4913)] = mem[_1039 + 32 len ceil32(_4913)]
                                if ceil32(_4913) > _4913:
                                    mem[ceil32(_4146) + mem[64] + _4913 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4146) + 160, mem[mem[64] + 128 len _4146 + 32], 0, mem[mem[64] + _4146 + 192 len ceil32(_4913) + ceil32(_4146) - _4146]
                    else:
                        mem[mem[64] + _2227 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2227) + 128
                        _3123 = mem[_1039]
                        mem[ceil32(_2227) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2227) + mem[64] + 164 len ceil32(_3123)] = mem[_1039 + 32 len ceil32(_3123)]
                        if ceil32(_3123) <= _3123:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2227) + 128, mem[mem[64] + 100 len _2227 + 32], 0, mem[mem[64] + _2227 + 164 len ceil32(_3123) + ceil32(_2227) - _2227]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4115 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4115)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4115)]
                            if ceil32(_4115) <= _4115:
                                mem[mem[64] + 96] = ceil32(_4115) + 160
                                _4850 = mem[_1039]
                                mem[ceil32(_4115) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4115) + mem[64] + 192 len ceil32(_4850)] = mem[_1039 + 32 len ceil32(_4850)]
                                if ceil32(_4850) > _4850:
                                    mem[ceil32(_4115) + mem[64] + _4850 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4115) + 160, mem[mem[64] + 128 len ceil32(_4850) + ceil32(_4115) + 64]
                            else:
                                mem[mem[64] + _4115 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4115) + 160
                                _4914 = mem[_1039]
                                mem[ceil32(_4115) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4115) + mem[64] + 192 len ceil32(_4914)] = mem[_1039 + 32 len ceil32(_4914)]
                                if ceil32(_4914) > _4914:
                                    mem[ceil32(_4115) + mem[64] + _4914 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4115) + 160, mem[mem[64] + 128 len _4115 + 32], 0, mem[mem[64] + _4115 + 192 len ceil32(_4914) + ceil32(_4115) - _4115]
                        else:
                            mem[ceil32(_2227) + mem[64] + _3123 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2227) + 128, mem[mem[64] + 100 len _2227 + 32], 0, mem[mem[64] + _2227 + 164 len ceil32(_3123) + ceil32(_2227) - _2227]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4147 = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(arg1.length)) + 97]
                            mem[mem[64] + 160 len ceil32(_4147)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(_4147)]
                            if ceil32(_4147) <= _4147:
                                mem[mem[64] + 96] = ceil32(_4147) + 160
                                _4851 = mem[_1039]
                                mem[ceil32(_4147) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4147) + mem[64] + 192 len ceil32(_4851)] = mem[_1039 + 32 len ceil32(_4851)]
                                if ceil32(_4851) > _4851:
                                    mem[ceil32(_4147) + mem[64] + _4851 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4147) + 160, mem[mem[64] + 128 len ceil32(_4851) + ceil32(_4147) + 64]
                            else:
                                mem[mem[64] + _4147 + 160] = 0
                                mem[mem[64] + 96] = ceil32(_4147) + 160
                                _4915 = mem[_1039]
                                mem[ceil32(_4147) + mem[64] + 160] = mem[_1039]
                                mem[ceil32(_4147) + mem[64] + 192 len ceil32(_4915)] = mem[_1039 + 32 len ceil32(_4915)]
                                if ceil32(_4915) > _4915:
                                    mem[ceil32(_4147) + mem[64] + _4915 + 192] = 0
                                emit 0x23a264b6: address(_3), address(_4), 128, ceil32(_4147) + 160, mem[mem[64] + 128 len _4147 + 32], 0, mem[mem[64] + _4147 + 192 len ceil32(_4915) + ceil32(_4147) - _4147]
}



}
