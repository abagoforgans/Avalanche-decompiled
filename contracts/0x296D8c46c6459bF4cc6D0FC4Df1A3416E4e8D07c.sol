contract main {




// =====================  Runtime code  =====================


#
#  - sub_153e2422(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
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
    emit OwnershipTransferred(owner, msg.sender);
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
    emit OwnershipTransferred(owner, msg.sender);
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

function verify(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
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
    return (1 == ext_call.return_data[0])
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
    if ext_call.return_data[0] != 1:
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
               args address(arg2), msg.sender, 0
    else:
        require ext_code.size(sub_809f3bc4[address(arg2)])
        staticcall sub_809f3bc4[address(arg2)].0xf32cb1e7 with:
                gas gas_remaining wei
               args address(arg2), msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 1:
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
    if uint8(stor0.field_8):
        sub_7fd80b10Address = arg1
        timeLockAddress = arg2
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        sub_7fd80b10Address = arg1
        timeLockAddress = arg2
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        emit OwnershipTransferred(owner, msg.sender);
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        emit OwnershipTransferred(owner, msg.sender);
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}

function sub_e2927848(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
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
    if ceil32(mem[mem[160] + 128]) + 160 < 128 or ceil32(arg1.length) + ceil32(mem[mem[160] + 128]) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(arg1.length) + ceil32(mem[mem[160] + 128]) + 160
    mem[ceil32(arg1.length) + 128] = mem[mem[160] + 128]
    require _4 + _5 + 64 <= arg1.length + 32
    mem[ceil32(arg1.length) + 160 len ceil32(_5)] = mem[_4 + 160 len ceil32(_5)]
    if ceil32(_5) <= _5:
        mem[0] = address(_3)
        mem[32] = 101
        if not sub_809f3bc4[address(_3)]:
            mem[mem[64] + 4] = address(_3)
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            require ext_code.size(sub_7fd80b10Address)
            staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                    gas gas_remaining wei
                   args address(_3), msg.sender, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _349 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_349] != 1:
                revert with 0, 'denied'
            _357 = mem[64]
            mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _5
            mem[mem[64] + 68 len ceil32(_5)] = mem[ceil32(arg1.length) + 160 len ceil32(_5)]
            if ceil32(_5) <= _5:
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args Array(len=_5, data=mem[mem[64] + 68 len ceil32(_5)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _677 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _685 = mem[_677]
                require mem[_677] <= test266151307()
                require _677 + mem[_677] + 31 < _677 + return_data.size
                _693 = mem[_677 + mem[_677]]
                if mem[_677 + mem[_677]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(mem[_677 + mem[_677]]) + 32 < 0 or _677 + ceil32(return_data.size) + ceil32(mem[_677 + mem[_677]]) + 32 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _677 + ceil32(return_data.size) + ceil32(mem[_677 + mem[_677]]) + 32
                mem[_677 + ceil32(return_data.size)] = _693
                require _685 + _693 + 32 <= return_data.size
                mem[_677 + ceil32(return_data.size) + 32 len ceil32(_693)] = mem[_677 + _685 + 32 len ceil32(_693)]
                if ceil32(_693) <= _693:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _981 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(_981)] = mem[ceil32(arg1.length) + 160 len ceil32(_981)]
                    if ceil32(_981) > _981:
                        mem[mem[64] + _981 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_981) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _693
                    mem[mem[64] + 64 len ceil32(_693)] = mem[_677 + ceil32(return_data.size) + 32 len ceil32(_693)]
                    if ceil32(_693) > _693:
                        mem[mem[64] + _693 + 64] = 0
                else:
                    mem[_677 + ceil32(return_data.size) + _693 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _989 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(_989)] = mem[ceil32(arg1.length) + 160 len ceil32(_989)]
                    if ceil32(_989) > _989:
                        mem[mem[64] + _989 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_989) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _693
                    mem[mem[64] + 64 len ceil32(_693)] = mem[_677 + ceil32(return_data.size) + 32 len ceil32(_693)]
                    if ceil32(_693) > _693:
                        mem[mem[64] + _693 + 64] = 0
                return Array(len=_693, data=mem[mem[64] + 64 len ceil32(_693)])
            mem[mem[64] + _5 + 68] = 0
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(_5) + _357 + -mem[64] + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _681 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _689 = mem[_681]
            require mem[_681] <= test266151307()
            require _681 + mem[_681] + 31 < _681 + return_data.size
            _697 = mem[_681 + mem[_681]]
            if mem[_681 + mem[_681]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(mem[_681 + mem[_681]]) + 32 < 0 or _681 + ceil32(return_data.size) + ceil32(mem[_681 + mem[_681]]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _681 + ceil32(return_data.size) + ceil32(mem[_681 + mem[_681]]) + 32
            mem[_681 + ceil32(return_data.size)] = _697
            require _689 + _697 + 32 <= return_data.size
            mem[_681 + ceil32(return_data.size) + 32 len ceil32(_697)] = mem[_681 + _689 + 32 len ceil32(_697)]
            if ceil32(_697) <= _697:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _982 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_982)] = mem[ceil32(arg1.length) + 160 len ceil32(_982)]
                if ceil32(_982) <= _982:
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_982) + 32]
                    _1241 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _697
                    mem[mem[64] + 64 len ceil32(_697)] = mem[_681 + ceil32(return_data.size) + 32 len ceil32(_697)]
                    if ceil32(_697) <= _697:
                        return Array(len=_697, data=mem[mem[64] + 64 len ceil32(_697)])
                    mem[mem[64] + _697 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_697) + _1241 + -mem[64] + 64
                mem[mem[64] + _982 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_982) + 32]
                _1271 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _697
                mem[mem[64] + 64 len ceil32(_697)] = mem[_681 + ceil32(return_data.size) + 32 len ceil32(_697)]
                if ceil32(_697) <= _697:
                    return Array(len=_697, data=mem[mem[64] + 64 len ceil32(_697)])
                mem[mem[64] + _697 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_697) + _1271 + -mem[64] + 64
            mem[_681 + ceil32(return_data.size) + _697 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _990 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_990)] = mem[ceil32(arg1.length) + 160 len ceil32(_990)]
            if ceil32(_990) <= _990:
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_990) + 32]
                _1243 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _697
                mem[mem[64] + 64 len ceil32(_697)] = mem[_681 + ceil32(return_data.size) + 32 len ceil32(_697)]
                if ceil32(_697) <= _697:
                    return Array(len=_697, data=mem[mem[64] + 64 len ceil32(_697)])
                mem[mem[64] + _697 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_697) + _1243 + -mem[64] + 64
            mem[mem[64] + _990 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_990) + 32]
            _1272 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _697
            mem[mem[64] + 64 len ceil32(_697)] = mem[_681 + ceil32(return_data.size) + 32 len ceil32(_697)]
            if ceil32(_697) <= _697:
                return Array(len=_697, data=mem[mem[64] + 64 len ceil32(_697)])
            mem[mem[64] + _697 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_697) + _1272 + -mem[64] + 64
        mem[0] = address(_3)
        mem[32] = 101
        mem[mem[64] + 4] = address(_3)
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        require ext_code.size(sub_809f3bc4[address(_3)])
        staticcall sub_809f3bc4[address(_3)].0xf32cb1e7 with:
                gas gas_remaining wei
               args address(_3), msg.sender, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _350 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_350] != 1:
            revert with 0, 'denied'
        _359 = mem[64]
        mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _5
        mem[mem[64] + 68 len ceil32(_5)] = mem[ceil32(arg1.length) + 160 len ceil32(_5)]
        if ceil32(_5) <= _5:
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args Array(len=_5, data=mem[mem[64] + 68 len ceil32(_5)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _678 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _686 = mem[_678]
            require mem[_678] <= test266151307()
            require _678 + mem[_678] + 31 < _678 + return_data.size
            _694 = mem[_678 + mem[_678]]
            if mem[_678 + mem[_678]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(mem[_678 + mem[_678]]) + 32 < 0 or _678 + ceil32(return_data.size) + ceil32(mem[_678 + mem[_678]]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _678 + ceil32(return_data.size) + ceil32(mem[_678 + mem[_678]]) + 32
            mem[_678 + ceil32(return_data.size)] = _694
            require _686 + _694 + 32 <= return_data.size
            mem[_678 + ceil32(return_data.size) + 32 len ceil32(_694)] = mem[_678 + _686 + 32 len ceil32(_694)]
            if ceil32(_694) <= _694:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _983 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_983)] = mem[ceil32(arg1.length) + 160 len ceil32(_983)]
                if ceil32(_983) > _983:
                    mem[mem[64] + _983 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_983) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _694
                mem[mem[64] + 64 len ceil32(_694)] = mem[_678 + ceil32(return_data.size) + 32 len ceil32(_694)]
                if ceil32(_694) > _694:
                    mem[mem[64] + _694 + 64] = 0
            else:
                mem[_678 + ceil32(return_data.size) + _694 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _991 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_991)] = mem[ceil32(arg1.length) + 160 len ceil32(_991)]
                if ceil32(_991) > _991:
                    mem[mem[64] + _991 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_991) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _694
                mem[mem[64] + 64 len ceil32(_694)] = mem[_678 + ceil32(return_data.size) + 32 len ceil32(_694)]
                if ceil32(_694) > _694:
                    mem[mem[64] + _694 + 64] = 0
            return Array(len=_694, data=mem[mem[64] + 64 len ceil32(_694)])
        mem[mem[64] + _5 + 68] = 0
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(_5) + _359 + -mem[64] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _682 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _690 = mem[_682]
        require mem[_682] <= test266151307()
        require _682 + mem[_682] + 31 < _682 + return_data.size
        _698 = mem[_682 + mem[_682]]
        if mem[_682 + mem[_682]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(mem[_682 + mem[_682]]) + 32 < 0 or _682 + ceil32(return_data.size) + ceil32(mem[_682 + mem[_682]]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _682 + ceil32(return_data.size) + ceil32(mem[_682 + mem[_682]]) + 32
        mem[_682 + ceil32(return_data.size)] = _698
        require _690 + _698 + 32 <= return_data.size
        mem[_682 + ceil32(return_data.size) + 32 len ceil32(_698)] = mem[_682 + _690 + 32 len ceil32(_698)]
        if ceil32(_698) <= _698:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _984 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_984)] = mem[ceil32(arg1.length) + 160 len ceil32(_984)]
            if ceil32(_984) > _984:
                mem[mem[64] + _984 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_984) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _698
            mem[mem[64] + 64 len ceil32(_698)] = mem[_682 + ceil32(return_data.size) + 32 len ceil32(_698)]
            if ceil32(_698) > _698:
                mem[mem[64] + _698 + 64] = 0
        else:
            mem[_682 + ceil32(return_data.size) + _698 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _992 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_992)] = mem[ceil32(arg1.length) + 160 len ceil32(_992)]
            if ceil32(_992) > _992:
                mem[mem[64] + _992 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_992) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _698
            mem[mem[64] + 64 len ceil32(_698)] = mem[_682 + ceil32(return_data.size) + 32 len ceil32(_698)]
            if ceil32(_698) > _698:
                mem[mem[64] + _698 + 64] = 0
        return Array(len=_698, data=mem[mem[64] + 64 len ceil32(_698)])
    mem[ceil32(arg1.length) + _5 + 160] = 0
    mem[0] = address(_3)
    mem[32] = 101
    if not sub_809f3bc4[address(_3)]:
        mem[mem[64] + 4] = address(_3)
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        require ext_code.size(sub_7fd80b10Address)
        staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                gas gas_remaining wei
               args address(_3), msg.sender, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _351 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_351] != 1:
            revert with 0, 'denied'
        _361 = mem[64]
        mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _5
        mem[mem[64] + 68 len ceil32(_5)] = mem[ceil32(arg1.length) + 160 len ceil32(_5)]
        if ceil32(_5) <= _5:
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args Array(len=_5, data=mem[mem[64] + 68 len ceil32(_5)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _679 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _687 = mem[_679]
            require mem[_679] <= test266151307()
            require _679 + mem[_679] + 31 < _679 + return_data.size
            _695 = mem[_679 + mem[_679]]
            if mem[_679 + mem[_679]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(mem[_679 + mem[_679]]) + 32 < 0 or _679 + ceil32(return_data.size) + ceil32(mem[_679 + mem[_679]]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _679 + ceil32(return_data.size) + ceil32(mem[_679 + mem[_679]]) + 32
            mem[_679 + ceil32(return_data.size)] = _695
            require _687 + _695 + 32 <= return_data.size
            mem[_679 + ceil32(return_data.size) + 32 len ceil32(_695)] = mem[_679 + _687 + 32 len ceil32(_695)]
            if ceil32(_695) <= _695:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _985 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_985)] = mem[ceil32(arg1.length) + 160 len ceil32(_985)]
                if ceil32(_985) > _985:
                    mem[mem[64] + _985 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_985) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _695
                mem[mem[64] + 64 len ceil32(_695)] = mem[_679 + ceil32(return_data.size) + 32 len ceil32(_695)]
                if ceil32(_695) > _695:
                    mem[mem[64] + _695 + 64] = 0
            else:
                mem[_679 + ceil32(return_data.size) + _695 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _993 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_993)] = mem[ceil32(arg1.length) + 160 len ceil32(_993)]
                if ceil32(_993) > _993:
                    mem[mem[64] + _993 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_993) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _695
                mem[mem[64] + 64 len ceil32(_695)] = mem[_679 + ceil32(return_data.size) + 32 len ceil32(_695)]
                if ceil32(_695) > _695:
                    mem[mem[64] + _695 + 64] = 0
            return Array(len=_695, data=mem[mem[64] + 64 len ceil32(_695)])
        mem[mem[64] + _5 + 68] = 0
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(_5) + _361 + -mem[64] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _683 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _691 = mem[_683]
        require mem[_683] <= test266151307()
        require _683 + mem[_683] + 31 < _683 + return_data.size
        _699 = mem[_683 + mem[_683]]
        if mem[_683 + mem[_683]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(mem[_683 + mem[_683]]) + 32 < 0 or _683 + ceil32(return_data.size) + ceil32(mem[_683 + mem[_683]]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _683 + ceil32(return_data.size) + ceil32(mem[_683 + mem[_683]]) + 32
        mem[_683 + ceil32(return_data.size)] = _699
        require _691 + _699 + 32 <= return_data.size
        mem[_683 + ceil32(return_data.size) + 32 len ceil32(_699)] = mem[_683 + _691 + 32 len ceil32(_699)]
        if ceil32(_699) <= _699:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _986 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_986)] = mem[ceil32(arg1.length) + 160 len ceil32(_986)]
            if ceil32(_986) > _986:
                mem[mem[64] + _986 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_986) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _699
            mem[mem[64] + 64 len ceil32(_699)] = mem[_683 + ceil32(return_data.size) + 32 len ceil32(_699)]
            if ceil32(_699) > _699:
                mem[mem[64] + _699 + 64] = 0
        else:
            mem[_683 + ceil32(return_data.size) + _699 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _994 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_994)] = mem[ceil32(arg1.length) + 160 len ceil32(_994)]
            if ceil32(_994) > _994:
                mem[mem[64] + _994 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_994) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _699
            mem[mem[64] + 64 len ceil32(_699)] = mem[_683 + ceil32(return_data.size) + 32 len ceil32(_699)]
            if ceil32(_699) > _699:
                mem[mem[64] + _699 + 64] = 0
        return Array(len=_699, data=mem[mem[64] + 64 len ceil32(_699)])
    mem[0] = address(_3)
    mem[32] = 101
    mem[mem[64] + 4] = address(_3)
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = 0
    require ext_code.size(sub_809f3bc4[address(_3)])
    staticcall sub_809f3bc4[address(_3)].0xf32cb1e7 with:
            gas gas_remaining wei
           args address(_3), msg.sender, 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _352 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_352] != 1:
        revert with 0, 'denied'
    _363 = mem[64]
    mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = _5
    mem[mem[64] + 68 len ceil32(_5)] = mem[ceil32(arg1.length) + 160 len ceil32(_5)]
    if ceil32(_5) <= _5:
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args Array(len=_5, data=mem[mem[64] + 68 len ceil32(_5)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _680 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _688 = mem[_680]
        require mem[_680] <= test266151307()
        require _680 + mem[_680] + 31 < _680 + return_data.size
        _696 = mem[_680 + mem[_680]]
        if mem[_680 + mem[_680]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(mem[_680 + mem[_680]]) + 32 < 0 or _680 + ceil32(return_data.size) + ceil32(mem[_680 + mem[_680]]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _680 + ceil32(return_data.size) + ceil32(mem[_680 + mem[_680]]) + 32
        mem[_680 + ceil32(return_data.size)] = _696
        require _688 + _696 + 32 <= return_data.size
        mem[_680 + ceil32(return_data.size) + 32 len ceil32(_696)] = mem[_680 + _688 + 32 len ceil32(_696)]
        if ceil32(_696) <= _696:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _987 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_987)] = mem[ceil32(arg1.length) + 160 len ceil32(_987)]
            if ceil32(_987) > _987:
                mem[mem[64] + _987 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_987) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _696
            mem[mem[64] + 64 len ceil32(_696)] = mem[_680 + ceil32(return_data.size) + 32 len ceil32(_696)]
            if ceil32(_696) > _696:
                mem[mem[64] + _696 + 64] = 0
        else:
            mem[_680 + ceil32(return_data.size) + _696 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _995 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_995)] = mem[ceil32(arg1.length) + 160 len ceil32(_995)]
            if ceil32(_995) > _995:
                mem[mem[64] + _995 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_995) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _696
            mem[mem[64] + 64 len ceil32(_696)] = mem[_680 + ceil32(return_data.size) + 32 len ceil32(_696)]
            if ceil32(_696) > _696:
                mem[mem[64] + _696 + 64] = 0
        return Array(len=_696, data=mem[mem[64] + 64 len ceil32(_696)])
    mem[mem[64] + _5 + 68] = 0
    require ext_code.size(address(_3))
    call address(_3).0xd1b3b979 with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len ceil32(_5) + _363 + -mem[64] + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _684 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _692 = mem[_684]
    require mem[_684] <= test266151307()
    require _684 + mem[_684] + 31 < _684 + return_data.size
    _700 = mem[_684 + mem[_684]]
    if mem[_684 + mem[_684]] > test266151307():
        revert with 'NH{q', 65
    if ceil32(mem[_684 + mem[_684]]) + 32 < 0 or _684 + ceil32(return_data.size) + ceil32(mem[_684 + mem[_684]]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = _684 + ceil32(return_data.size) + ceil32(mem[_684 + mem[_684]]) + 32
    mem[_684 + ceil32(return_data.size)] = _700
    require _692 + _700 + 32 <= return_data.size
    mem[_684 + ceil32(return_data.size) + 32 len ceil32(_700)] = mem[_684 + _692 + 32 len ceil32(_700)]
    if ceil32(_700) <= _700:
        mem[mem[64]] = address(_3)
        mem[mem[64] + 32] = 64
        _988 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[mem[64] + 96 len ceil32(_988)] = mem[ceil32(arg1.length) + 160 len ceil32(_988)]
        if ceil32(_988) > _988:
            mem[mem[64] + _988 + 96] = 0
        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_988) + 32]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _700
        mem[mem[64] + 64 len ceil32(_700)] = mem[_684 + ceil32(return_data.size) + 32 len ceil32(_700)]
        if ceil32(_700) > _700:
            mem[mem[64] + _700 + 64] = 0
    else:
        mem[_684 + ceil32(return_data.size) + _700 + 32] = 0
        mem[mem[64]] = address(_3)
        mem[mem[64] + 32] = 64
        _996 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[mem[64] + 96 len ceil32(_996)] = mem[ceil32(arg1.length) + 160 len ceil32(_996)]
        if ceil32(_996) > _996:
            mem[mem[64] + _996 + 96] = 0
        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_996) + 32]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _700
        mem[mem[64] + 64 len ceil32(_700)] = mem[_684 + ceil32(return_data.size) + 32 len ceil32(_700)]
        if ceil32(_700) > _700:
            mem[mem[64] + _700 + 64] = 0
    return Array(len=_700, data=mem[mem[64] + 64 len ceil32(_700)])
}

function sub_b096d811(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
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
    if ceil32(mem[mem[160] + 128]) + 160 < 128 or ceil32(arg1.length) + ceil32(mem[mem[160] + 128]) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(arg1.length) + ceil32(mem[mem[160] + 128]) + 160
    mem[ceil32(arg1.length) + 128] = mem[mem[160] + 128]
    require _4 + _5 + 64 <= arg1.length + 32
    mem[ceil32(arg1.length) + 160 len ceil32(_5)] = mem[_4 + 160 len ceil32(_5)]
    if ceil32(_5) <= _5:
        mem[mem[64] + 100] = arg3
        mem[mem[64] + 132] = uint8(arg4)
        mem[mem[64] + 164] = arg5
        mem[mem[64] + 196] = arg6
        if not sub_809f3bc4[address(_3)]:
            require ext_code.size(sub_7fd80b10Address)
            call sub_7fd80b10Address.0x3dba5ba8 with:
                 gas gas_remaining wei
                args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = address(_3)
            mem[32] = 101
            if not sub_809f3bc4[address(_3)]:
                mem[mem[64] + 4] = address(_3)
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                require ext_code.size(sub_7fd80b10Address)
                staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                        gas gas_remaining wei
                       args address(_3), msg.sender, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _713 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_713] != 1:
                    revert with 0, 'denied'
                _729 = mem[64]
                mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _5
                mem[mem[64] + 68 len ceil32(_5)] = mem[ceil32(arg1.length) + 160 len ceil32(_5)]
                if ceil32(_5) <= _5:
                    require ext_code.size(address(_3))
                    call address(_3).0xd1b3b979 with:
                         gas gas_remaining wei
                        args Array(len=_5, data=mem[mem[64] + 68 len ceil32(_5)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1369 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1385 = mem[_1369]
                    require mem[_1369] <= test266151307()
                    require _1369 + mem[_1369] + 31 < _1369 + return_data.size
                    _1401 = mem[_1369 + mem[_1369]]
                    if mem[_1369 + mem[_1369]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(mem[_1369 + mem[_1369]]) + 32 < 0 or _1369 + ceil32(return_data.size) + ceil32(mem[_1369 + mem[_1369]]) + 32 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _1369 + ceil32(return_data.size) + ceil32(mem[_1369 + mem[_1369]]) + 32
                    mem[_1369 + ceil32(return_data.size)] = _1401
                    require _1385 + _1401 + 32 <= return_data.size
                    mem[_1369 + ceil32(return_data.size) + 32 len ceil32(_1401)] = mem[_1369 + _1385 + 32 len ceil32(_1401)]
                    if ceil32(_1401) <= _1401:
                        mem[mem[64]] = address(_3)
                        mem[mem[64] + 32] = 64
                        _1977 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        mem[mem[64] + 96 len ceil32(_1977)] = mem[ceil32(arg1.length) + 160 len ceil32(_1977)]
                        if ceil32(_1977) > _1977:
                            mem[mem[64] + _1977 + 96] = 0
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1977) + 32]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _1401
                        mem[mem[64] + 64 len ceil32(_1401)] = mem[_1369 + ceil32(return_data.size) + 32 len ceil32(_1401)]
                        if ceil32(_1401) > _1401:
                            mem[mem[64] + _1401 + 64] = 0
                    else:
                        mem[_1369 + ceil32(return_data.size) + _1401 + 32] = 0
                        mem[mem[64]] = address(_3)
                        mem[mem[64] + 32] = 64
                        _1993 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        mem[mem[64] + 96 len ceil32(_1993)] = mem[ceil32(arg1.length) + 160 len ceil32(_1993)]
                        if ceil32(_1993) > _1993:
                            mem[mem[64] + _1993 + 96] = 0
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1993) + 32]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _1401
                        mem[mem[64] + 64 len ceil32(_1401)] = mem[_1369 + ceil32(return_data.size) + 32 len ceil32(_1401)]
                        if ceil32(_1401) > _1401:
                            mem[mem[64] + _1401 + 64] = 0
                    return Array(len=_1401, data=mem[mem[64] + 64 len ceil32(_1401)])
                mem[mem[64] + _5 + 68] = 0
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_5) + _729 + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1377 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1393 = mem[_1377]
                require mem[_1377] <= test266151307()
                require _1377 + mem[_1377] + 31 < _1377 + return_data.size
                _1409 = mem[_1377 + mem[_1377]]
                if mem[_1377 + mem[_1377]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(mem[_1377 + mem[_1377]]) + 32 < 0 or _1377 + ceil32(return_data.size) + ceil32(mem[_1377 + mem[_1377]]) + 32 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1377 + ceil32(return_data.size) + ceil32(mem[_1377 + mem[_1377]]) + 32
                mem[_1377 + ceil32(return_data.size)] = _1409
                require _1393 + _1409 + 32 <= return_data.size
                mem[_1377 + ceil32(return_data.size) + 32 len ceil32(_1409)] = mem[_1377 + _1393 + 32 len ceil32(_1409)]
                if ceil32(_1409) <= _1409:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _1978 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(_1978)] = mem[ceil32(arg1.length) + 160 len ceil32(_1978)]
                    if ceil32(_1978) > _1978:
                        mem[mem[64] + _1978 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1978) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _1409
                    mem[mem[64] + 64 len ceil32(_1409)] = mem[_1377 + ceil32(return_data.size) + 32 len ceil32(_1409)]
                    if ceil32(_1409) > _1409:
                        mem[mem[64] + _1409 + 64] = 0
                else:
                    mem[_1377 + ceil32(return_data.size) + _1409 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _1994 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(_1994)] = mem[ceil32(arg1.length) + 160 len ceil32(_1994)]
                    if ceil32(_1994) > _1994:
                        mem[mem[64] + _1994 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1994) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _1409
                    mem[mem[64] + 64 len ceil32(_1409)] = mem[_1377 + ceil32(return_data.size) + 32 len ceil32(_1409)]
                    if ceil32(_1409) > _1409:
                        mem[mem[64] + _1409 + 64] = 0
                return Array(len=_1409, data=mem[mem[64] + 64 len ceil32(_1409)])
            mem[0] = address(_3)
            mem[32] = 101
            mem[mem[64] + 4] = address(_3)
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            require ext_code.size(sub_809f3bc4[address(_3)])
            staticcall sub_809f3bc4[address(_3)].0xf32cb1e7 with:
                    gas gas_remaining wei
                   args address(_3), msg.sender, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _714 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_714] != 1:
                revert with 0, 'denied'
            _731 = mem[64]
            mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _5
            mem[mem[64] + 68 len ceil32(_5)] = mem[ceil32(arg1.length) + 160 len ceil32(_5)]
            if ceil32(_5) <= _5:
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args Array(len=_5, data=mem[mem[64] + 68 len ceil32(_5)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1370 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1386 = mem[_1370]
                require mem[_1370] <= test266151307()
                require _1370 + mem[_1370] + 31 < _1370 + return_data.size
                _1402 = mem[_1370 + mem[_1370]]
                if mem[_1370 + mem[_1370]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(mem[_1370 + mem[_1370]]) + 32 < 0 or _1370 + ceil32(return_data.size) + ceil32(mem[_1370 + mem[_1370]]) + 32 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1370 + ceil32(return_data.size) + ceil32(mem[_1370 + mem[_1370]]) + 32
                mem[_1370 + ceil32(return_data.size)] = _1402
                require _1386 + _1402 + 32 <= return_data.size
                mem[_1370 + ceil32(return_data.size) + 32 len ceil32(_1402)] = mem[_1370 + _1386 + 32 len ceil32(_1402)]
                if ceil32(_1402) <= _1402:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _1979 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(_1979)] = mem[ceil32(arg1.length) + 160 len ceil32(_1979)]
                    if ceil32(_1979) <= _1979:
                        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1979) + 32]
                        _2497 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _1402
                        mem[mem[64] + 64 len ceil32(_1402)] = mem[_1370 + ceil32(return_data.size) + 32 len ceil32(_1402)]
                        if ceil32(_1402) <= _1402:
                            return Array(len=_1402, data=mem[mem[64] + 64 len ceil32(_1402)])
                        mem[mem[64] + _1402 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1402) + _2497 + -mem[64] + 64
                    mem[mem[64] + _1979 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1979) + 32]
                    _2557 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _1402
                    mem[mem[64] + 64 len ceil32(_1402)] = mem[_1370 + ceil32(return_data.size) + 32 len ceil32(_1402)]
                    if ceil32(_1402) <= _1402:
                        return Array(len=_1402, data=mem[mem[64] + 64 len ceil32(_1402)])
                    mem[mem[64] + _1402 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_1402) + _2557 + -mem[64] + 64
                mem[_1370 + ceil32(return_data.size) + _1402 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _1995 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_1995)] = mem[ceil32(arg1.length) + 160 len ceil32(_1995)]
                if ceil32(_1995) <= _1995:
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1995) + 32]
                    _2499 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _1402
                    mem[mem[64] + 64 len ceil32(_1402)] = mem[_1370 + ceil32(return_data.size) + 32 len ceil32(_1402)]
                    if ceil32(_1402) <= _1402:
                        return Array(len=_1402, data=mem[mem[64] + 64 len ceil32(_1402)])
                    mem[mem[64] + _1402 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_1402) + _2499 + -mem[64] + 64
                mem[mem[64] + _1995 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1995) + 32]
                _2558 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1402
                mem[mem[64] + 64 len ceil32(_1402)] = mem[_1370 + ceil32(return_data.size) + 32 len ceil32(_1402)]
                if ceil32(_1402) <= _1402:
                    return Array(len=_1402, data=mem[mem[64] + 64 len ceil32(_1402)])
                mem[mem[64] + _1402 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_1402) + _2558 + -mem[64] + 64
            mem[mem[64] + _5 + 68] = 0
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(_5) + _731 + -mem[64] + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1378 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1394 = mem[_1378]
            require mem[_1378] <= test266151307()
            require _1378 + mem[_1378] + 31 < _1378 + return_data.size
            _1410 = mem[_1378 + mem[_1378]]
            if mem[_1378 + mem[_1378]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(mem[_1378 + mem[_1378]]) + 32 < 0 or _1378 + ceil32(return_data.size) + ceil32(mem[_1378 + mem[_1378]]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _1378 + ceil32(return_data.size) + ceil32(mem[_1378 + mem[_1378]]) + 32
            mem[_1378 + ceil32(return_data.size)] = _1410
            require _1394 + _1410 + 32 <= return_data.size
            mem[_1378 + ceil32(return_data.size) + 32 len ceil32(_1410)] = mem[_1378 + _1394 + 32 len ceil32(_1410)]
            if ceil32(_1410) <= _1410:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _1980 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_1980)] = mem[ceil32(arg1.length) + 160 len ceil32(_1980)]
                if ceil32(_1980) > _1980:
                    mem[mem[64] + _1980 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1980) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1410
                mem[mem[64] + 64 len ceil32(_1410)] = mem[_1378 + ceil32(return_data.size) + 32 len ceil32(_1410)]
                if ceil32(_1410) > _1410:
                    mem[mem[64] + _1410 + 64] = 0
            else:
                mem[_1378 + ceil32(return_data.size) + _1410 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _1996 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_1996)] = mem[ceil32(arg1.length) + 160 len ceil32(_1996)]
                if ceil32(_1996) > _1996:
                    mem[mem[64] + _1996 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1996) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1410
                mem[mem[64] + 64 len ceil32(_1410)] = mem[_1378 + ceil32(return_data.size) + 32 len ceil32(_1410)]
                if ceil32(_1410) > _1410:
                    mem[mem[64] + _1410 + 64] = 0
            return Array(len=_1410, data=mem[mem[64] + 64 len ceil32(_1410)])
        require ext_code.size(sub_809f3bc4[address(_3)])
        call sub_809f3bc4[address(_3)].0x3dba5ba8 with:
             gas gas_remaining wei
            args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = address(_3)
        mem[32] = 101
        if not sub_809f3bc4[address(_3)]:
            mem[mem[64] + 4] = address(_3)
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            require ext_code.size(sub_7fd80b10Address)
            staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                    gas gas_remaining wei
                   args address(_3), msg.sender, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _715 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_715] != 1:
                revert with 0, 'denied'
            _733 = mem[64]
            mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _5
            mem[mem[64] + 68 len ceil32(_5)] = mem[ceil32(arg1.length) + 160 len ceil32(_5)]
            if ceil32(_5) <= _5:
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args Array(len=_5, data=mem[mem[64] + 68 len ceil32(_5)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1371 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1387 = mem[_1371]
                require mem[_1371] <= test266151307()
                require _1371 + mem[_1371] + 31 < _1371 + return_data.size
                _1403 = mem[_1371 + mem[_1371]]
                if mem[_1371 + mem[_1371]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(mem[_1371 + mem[_1371]]) + 32 < 0 or _1371 + ceil32(return_data.size) + ceil32(mem[_1371 + mem[_1371]]) + 32 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1371 + ceil32(return_data.size) + ceil32(mem[_1371 + mem[_1371]]) + 32
                mem[_1371 + ceil32(return_data.size)] = _1403
                require _1387 + _1403 + 32 <= return_data.size
                mem[_1371 + ceil32(return_data.size) + 32 len ceil32(_1403)] = mem[_1371 + _1387 + 32 len ceil32(_1403)]
                if ceil32(_1403) <= _1403:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _1981 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(_1981)] = mem[ceil32(arg1.length) + 160 len ceil32(_1981)]
                    if ceil32(_1981) > _1981:
                        mem[mem[64] + _1981 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1981) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _1403
                    mem[mem[64] + 64 len ceil32(_1403)] = mem[_1371 + ceil32(return_data.size) + 32 len ceil32(_1403)]
                    if ceil32(_1403) > _1403:
                        mem[mem[64] + _1403 + 64] = 0
                else:
                    mem[_1371 + ceil32(return_data.size) + _1403 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _1997 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(_1997)] = mem[ceil32(arg1.length) + 160 len ceil32(_1997)]
                    if ceil32(_1997) > _1997:
                        mem[mem[64] + _1997 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1997) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _1403
                    mem[mem[64] + 64 len ceil32(_1403)] = mem[_1371 + ceil32(return_data.size) + 32 len ceil32(_1403)]
                    if ceil32(_1403) > _1403:
                        mem[mem[64] + _1403 + 64] = 0
                return Array(len=_1403, data=mem[mem[64] + 64 len ceil32(_1403)])
            mem[mem[64] + _5 + 68] = 0
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(_5) + _733 + -mem[64] + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1379 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1395 = mem[_1379]
            require mem[_1379] <= test266151307()
            require _1379 + mem[_1379] + 31 < _1379 + return_data.size
            _1411 = mem[_1379 + mem[_1379]]
            if mem[_1379 + mem[_1379]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(mem[_1379 + mem[_1379]]) + 32 < 0 or _1379 + ceil32(return_data.size) + ceil32(mem[_1379 + mem[_1379]]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _1379 + ceil32(return_data.size) + ceil32(mem[_1379 + mem[_1379]]) + 32
            mem[_1379 + ceil32(return_data.size)] = _1411
            require _1395 + _1411 + 32 <= return_data.size
            mem[_1379 + ceil32(return_data.size) + 32 len ceil32(_1411)] = mem[_1379 + _1395 + 32 len ceil32(_1411)]
            if ceil32(_1411) <= _1411:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _1982 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_1982)] = mem[ceil32(arg1.length) + 160 len ceil32(_1982)]
                if ceil32(_1982) <= _1982:
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1982) + 32]
                    _2509 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _1411
                    mem[mem[64] + 64 len ceil32(_1411)] = mem[_1379 + ceil32(return_data.size) + 32 len ceil32(_1411)]
                    if ceil32(_1411) <= _1411:
                        return Array(len=_1411, data=mem[mem[64] + 64 len ceil32(_1411)])
                    mem[mem[64] + _1411 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_1411) + _2509 + -mem[64] + 64
                mem[mem[64] + _1982 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1982) + 32]
                _2563 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1411
                mem[mem[64] + 64 len ceil32(_1411)] = mem[_1379 + ceil32(return_data.size) + 32 len ceil32(_1411)]
                if ceil32(_1411) <= _1411:
                    return Array(len=_1411, data=mem[mem[64] + 64 len ceil32(_1411)])
                mem[mem[64] + _1411 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_1411) + _2563 + -mem[64] + 64
            mem[_1379 + ceil32(return_data.size) + _1411 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _1998 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_1998)] = mem[ceil32(arg1.length) + 160 len ceil32(_1998)]
            if ceil32(_1998) <= _1998:
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1998) + 32]
                _2511 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1411
                mem[mem[64] + 64 len ceil32(_1411)] = mem[_1379 + ceil32(return_data.size) + 32 len ceil32(_1411)]
                if ceil32(_1411) <= _1411:
                    return Array(len=_1411, data=mem[mem[64] + 64 len ceil32(_1411)])
                mem[mem[64] + _1411 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_1411) + _2511 + -mem[64] + 64
            mem[mem[64] + _1998 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1998) + 32]
            _2564 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1411
            mem[mem[64] + 64 len ceil32(_1411)] = mem[_1379 + ceil32(return_data.size) + 32 len ceil32(_1411)]
            if ceil32(_1411) <= _1411:
                return Array(len=_1411, data=mem[mem[64] + 64 len ceil32(_1411)])
            mem[mem[64] + _1411 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_1411) + _2564 + -mem[64] + 64
        mem[0] = address(_3)
        mem[32] = 101
        mem[mem[64] + 4] = address(_3)
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        require ext_code.size(sub_809f3bc4[address(_3)])
        staticcall sub_809f3bc4[address(_3)].0xf32cb1e7 with:
                gas gas_remaining wei
               args address(_3), msg.sender, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _716 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_716] != 1:
            revert with 0, 'denied'
        _735 = mem[64]
        mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _5
        mem[mem[64] + 68 len ceil32(_5)] = mem[ceil32(arg1.length) + 160 len ceil32(_5)]
        if ceil32(_5) <= _5:
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args Array(len=_5, data=mem[mem[64] + 68 len ceil32(_5)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1372 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1388 = mem[_1372]
            require mem[_1372] <= test266151307()
            require _1372 + mem[_1372] + 31 < _1372 + return_data.size
            _1404 = mem[_1372 + mem[_1372]]
            if mem[_1372 + mem[_1372]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(mem[_1372 + mem[_1372]]) + 32 < 0 or _1372 + ceil32(return_data.size) + ceil32(mem[_1372 + mem[_1372]]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _1372 + ceil32(return_data.size) + ceil32(mem[_1372 + mem[_1372]]) + 32
            mem[_1372 + ceil32(return_data.size)] = _1404
            require _1388 + _1404 + 32 <= return_data.size
            mem[_1372 + ceil32(return_data.size) + 32 len ceil32(_1404)] = mem[_1372 + _1388 + 32 len ceil32(_1404)]
            if ceil32(_1404) <= _1404:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _1983 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_1983)] = mem[ceil32(arg1.length) + 160 len ceil32(_1983)]
                if ceil32(_1983) > _1983:
                    mem[mem[64] + _1983 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1983) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1404
                mem[mem[64] + 64 len ceil32(_1404)] = mem[_1372 + ceil32(return_data.size) + 32 len ceil32(_1404)]
                if ceil32(_1404) > _1404:
                    mem[mem[64] + _1404 + 64] = 0
            else:
                mem[_1372 + ceil32(return_data.size) + _1404 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _1999 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_1999)] = mem[ceil32(arg1.length) + 160 len ceil32(_1999)]
                if ceil32(_1999) > _1999:
                    mem[mem[64] + _1999 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1999) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1404
                mem[mem[64] + 64 len ceil32(_1404)] = mem[_1372 + ceil32(return_data.size) + 32 len ceil32(_1404)]
                if ceil32(_1404) > _1404:
                    mem[mem[64] + _1404 + 64] = 0
            return Array(len=_1404, data=mem[mem[64] + 64 len ceil32(_1404)])
        mem[mem[64] + _5 + 68] = 0
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(_5) + _735 + -mem[64] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1380 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1396 = mem[_1380]
        require mem[_1380] <= test266151307()
        require _1380 + mem[_1380] + 31 < _1380 + return_data.size
        _1412 = mem[_1380 + mem[_1380]]
        if mem[_1380 + mem[_1380]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(mem[_1380 + mem[_1380]]) + 32 < 0 or _1380 + ceil32(return_data.size) + ceil32(mem[_1380 + mem[_1380]]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _1380 + ceil32(return_data.size) + ceil32(mem[_1380 + mem[_1380]]) + 32
        mem[_1380 + ceil32(return_data.size)] = _1412
        require _1396 + _1412 + 32 <= return_data.size
        mem[_1380 + ceil32(return_data.size) + 32 len ceil32(_1412)] = mem[_1380 + _1396 + 32 len ceil32(_1412)]
        if ceil32(_1412) <= _1412:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _1984 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_1984)] = mem[ceil32(arg1.length) + 160 len ceil32(_1984)]
            if ceil32(_1984) > _1984:
                mem[mem[64] + _1984 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1984) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1412
            mem[mem[64] + 64 len ceil32(_1412)] = mem[_1380 + ceil32(return_data.size) + 32 len ceil32(_1412)]
            if ceil32(_1412) > _1412:
                mem[mem[64] + _1412 + 64] = 0
        else:
            mem[_1380 + ceil32(return_data.size) + _1412 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _2000 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_2000)] = mem[ceil32(arg1.length) + 160 len ceil32(_2000)]
            if ceil32(_2000) > _2000:
                mem[mem[64] + _2000 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2000) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1412
            mem[mem[64] + 64 len ceil32(_1412)] = mem[_1380 + ceil32(return_data.size) + 32 len ceil32(_1412)]
            if ceil32(_1412) > _1412:
                mem[mem[64] + _1412 + 64] = 0
        return Array(len=_1412, data=mem[mem[64] + 64 len ceil32(_1412)])
    mem[ceil32(arg1.length) + _5 + 160] = 0
    mem[mem[64] + 100] = arg3
    mem[mem[64] + 132] = uint8(arg4)
    mem[mem[64] + 164] = arg5
    mem[mem[64] + 196] = arg6
    if sub_809f3bc4[address(_3)]:
        require ext_code.size(sub_809f3bc4[address(_3)])
        call sub_809f3bc4[address(_3)].0x3dba5ba8 with:
             gas gas_remaining wei
            args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = address(_3)
        mem[32] = 101
        if not sub_809f3bc4[address(_3)]:
            mem[mem[64] + 4] = address(_3)
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            require ext_code.size(sub_7fd80b10Address)
            staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                    gas gas_remaining wei
                   args address(_3), msg.sender, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _719 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_719] != 1:
                revert with 0, 'denied'
            _741 = mem[64]
            mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _5
            mem[mem[64] + 68 len ceil32(_5)] = mem[ceil32(arg1.length) + 160 len ceil32(_5)]
            if ceil32(_5) <= _5:
                require ext_code.size(address(_3))
                call address(_3).0xd1b3b979 with:
                     gas gas_remaining wei
                    args Array(len=_5, data=mem[mem[64] + 68 len ceil32(_5)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1375 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1391 = mem[_1375]
                require mem[_1375] <= test266151307()
                require _1375 + mem[_1375] + 31 < _1375 + return_data.size
                _1407 = mem[_1375 + mem[_1375]]
                if mem[_1375 + mem[_1375]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(mem[_1375 + mem[_1375]]) + 32 < 0 or _1375 + ceil32(return_data.size) + ceil32(mem[_1375 + mem[_1375]]) + 32 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _1375 + ceil32(return_data.size) + ceil32(mem[_1375 + mem[_1375]]) + 32
                mem[_1375 + ceil32(return_data.size)] = _1407
                require _1391 + _1407 + 32 <= return_data.size
                mem[_1375 + ceil32(return_data.size) + 32 len ceil32(_1407)] = mem[_1375 + _1391 + 32 len ceil32(_1407)]
                if ceil32(_1407) <= _1407:
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _1989 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(_1989)] = mem[ceil32(arg1.length) + 160 len ceil32(_1989)]
                    if ceil32(_1989) > _1989:
                        mem[mem[64] + _1989 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1989) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _1407
                    mem[mem[64] + 64 len ceil32(_1407)] = mem[_1375 + ceil32(return_data.size) + 32 len ceil32(_1407)]
                    if ceil32(_1407) > _1407:
                        mem[mem[64] + _1407 + 64] = 0
                else:
                    mem[_1375 + ceil32(return_data.size) + _1407 + 32] = 0
                    mem[mem[64]] = address(_3)
                    mem[mem[64] + 32] = 64
                    _2005 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 96 len ceil32(_2005)] = mem[ceil32(arg1.length) + 160 len ceil32(_2005)]
                    if ceil32(_2005) > _2005:
                        mem[mem[64] + _2005 + 96] = 0
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2005) + 32]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _1407
                    mem[mem[64] + 64 len ceil32(_1407)] = mem[_1375 + ceil32(return_data.size) + 32 len ceil32(_1407)]
                    if ceil32(_1407) > _1407:
                        mem[mem[64] + _1407 + 64] = 0
                return Array(len=_1407, data=mem[mem[64] + 64 len ceil32(_1407)])
            mem[mem[64] + _5 + 68] = 0
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(_5) + _741 + -mem[64] + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1383 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1399 = mem[_1383]
            require mem[_1383] <= test266151307()
            require _1383 + mem[_1383] + 31 < _1383 + return_data.size
            _1415 = mem[_1383 + mem[_1383]]
            if mem[_1383 + mem[_1383]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(mem[_1383 + mem[_1383]]) + 32 < 0 or _1383 + ceil32(return_data.size) + ceil32(mem[_1383 + mem[_1383]]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _1383 + ceil32(return_data.size) + ceil32(mem[_1383 + mem[_1383]]) + 32
            mem[_1383 + ceil32(return_data.size)] = _1415
            require _1399 + _1415 + 32 <= return_data.size
            mem[_1383 + ceil32(return_data.size) + 32 len ceil32(_1415)] = mem[_1383 + _1399 + 32 len ceil32(_1415)]
            if ceil32(_1415) <= _1415:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _1990 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_1990)] = mem[ceil32(arg1.length) + 160 len ceil32(_1990)]
                if ceil32(_1990) <= _1990:
                    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1990) + 32]
                    _2541 = mem[64]
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = _1415
                    mem[mem[64] + 64 len ceil32(_1415)] = mem[_1383 + ceil32(return_data.size) + 32 len ceil32(_1415)]
                    if ceil32(_1415) <= _1415:
                        return Array(len=_1415, data=mem[mem[64] + 64 len ceil32(_1415)])
                    mem[mem[64] + _1415 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_1415) + _2541 + -mem[64] + 64
                mem[mem[64] + _1990 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1990) + 32]
                _2579 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1415
                mem[mem[64] + 64 len ceil32(_1415)] = mem[_1383 + ceil32(return_data.size) + 32 len ceil32(_1415)]
                if ceil32(_1415) <= _1415:
                    return Array(len=_1415, data=mem[mem[64] + 64 len ceil32(_1415)])
                mem[mem[64] + _1415 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_1415) + _2579 + -mem[64] + 64
            mem[_1383 + ceil32(return_data.size) + _1415 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _2006 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_2006)] = mem[ceil32(arg1.length) + 160 len ceil32(_2006)]
            if ceil32(_2006) <= _2006:
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2006) + 32]
                _2543 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1415
                mem[mem[64] + 64 len ceil32(_1415)] = mem[_1383 + ceil32(return_data.size) + 32 len ceil32(_1415)]
                if ceil32(_1415) <= _1415:
                    return Array(len=_1415, data=mem[mem[64] + 64 len ceil32(_1415)])
                mem[mem[64] + _1415 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_1415) + _2543 + -mem[64] + 64
            mem[mem[64] + _2006 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2006) + 32]
            _2580 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1415
            mem[mem[64] + 64 len ceil32(_1415)] = mem[_1383 + ceil32(return_data.size) + 32 len ceil32(_1415)]
            if ceil32(_1415) <= _1415:
                return Array(len=_1415, data=mem[mem[64] + 64 len ceil32(_1415)])
            mem[mem[64] + _1415 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_1415) + _2580 + -mem[64] + 64
        mem[0] = address(_3)
        mem[32] = 101
        mem[mem[64] + 4] = address(_3)
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        require ext_code.size(sub_809f3bc4[address(_3)])
        staticcall sub_809f3bc4[address(_3)].0xf32cb1e7 with:
                gas gas_remaining wei
               args address(_3), msg.sender, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _720 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_720] != 1:
            revert with 0, 'denied'
        _743 = mem[64]
        mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _5
        mem[mem[64] + 68 len ceil32(_5)] = mem[ceil32(arg1.length) + 160 len ceil32(_5)]
        if ceil32(_5) <= _5:
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args Array(len=_5, data=mem[mem[64] + 68 len ceil32(_5)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1376 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1392 = mem[_1376]
            require mem[_1376] <= test266151307()
            require _1376 + mem[_1376] + 31 < _1376 + return_data.size
            _1408 = mem[_1376 + mem[_1376]]
            if mem[_1376 + mem[_1376]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(mem[_1376 + mem[_1376]]) + 32 < 0 or _1376 + ceil32(return_data.size) + ceil32(mem[_1376 + mem[_1376]]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _1376 + ceil32(return_data.size) + ceil32(mem[_1376 + mem[_1376]]) + 32
            mem[_1376 + ceil32(return_data.size)] = _1408
            require _1392 + _1408 + 32 <= return_data.size
            mem[_1376 + ceil32(return_data.size) + 32 len ceil32(_1408)] = mem[_1376 + _1392 + 32 len ceil32(_1408)]
            if ceil32(_1408) <= _1408:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _1991 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_1991)] = mem[ceil32(arg1.length) + 160 len ceil32(_1991)]
                if ceil32(_1991) > _1991:
                    mem[mem[64] + _1991 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1991) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1408
                mem[mem[64] + 64 len ceil32(_1408)] = mem[_1376 + ceil32(return_data.size) + 32 len ceil32(_1408)]
                if ceil32(_1408) > _1408:
                    mem[mem[64] + _1408 + 64] = 0
            else:
                mem[_1376 + ceil32(return_data.size) + _1408 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _2007 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_2007)] = mem[ceil32(arg1.length) + 160 len ceil32(_2007)]
                if ceil32(_2007) > _2007:
                    mem[mem[64] + _2007 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2007) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1408
                mem[mem[64] + 64 len ceil32(_1408)] = mem[_1376 + ceil32(return_data.size) + 32 len ceil32(_1408)]
                if ceil32(_1408) > _1408:
                    mem[mem[64] + _1408 + 64] = 0
            return Array(len=_1408, data=mem[mem[64] + 64 len ceil32(_1408)])
        mem[mem[64] + _5 + 68] = 0
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(_5) + _743 + -mem[64] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1384 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1400 = mem[_1384]
        require mem[_1384] <= test266151307()
        require _1384 + mem[_1384] + 31 < _1384 + return_data.size
        _1416 = mem[_1384 + mem[_1384]]
        if mem[_1384 + mem[_1384]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(mem[_1384 + mem[_1384]]) + 32 < 0 or _1384 + ceil32(return_data.size) + ceil32(mem[_1384 + mem[_1384]]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _1384 + ceil32(return_data.size) + ceil32(mem[_1384 + mem[_1384]]) + 32
        mem[_1384 + ceil32(return_data.size)] = _1416
        require _1400 + _1416 + 32 <= return_data.size
        mem[_1384 + ceil32(return_data.size) + 32 len ceil32(_1416)] = mem[_1384 + _1400 + 32 len ceil32(_1416)]
        if ceil32(_1416) <= _1416:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _1992 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_1992)] = mem[ceil32(arg1.length) + 160 len ceil32(_1992)]
            if ceil32(_1992) > _1992:
                mem[mem[64] + _1992 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1992) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1416
            mem[mem[64] + 64 len ceil32(_1416)] = mem[_1384 + ceil32(return_data.size) + 32 len ceil32(_1416)]
            if ceil32(_1416) > _1416:
                mem[mem[64] + _1416 + 64] = 0
        else:
            mem[_1384 + ceil32(return_data.size) + _1416 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _2008 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_2008)] = mem[ceil32(arg1.length) + 160 len ceil32(_2008)]
            if ceil32(_2008) > _2008:
                mem[mem[64] + _2008 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2008) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1416
            mem[mem[64] + 64 len ceil32(_1416)] = mem[_1384 + ceil32(return_data.size) + 32 len ceil32(_1416)]
            if ceil32(_1416) > _1416:
                mem[mem[64] + _1416 + 64] = 0
        return Array(len=_1416, data=mem[mem[64] + 64 len ceil32(_1416)])
    require ext_code.size(sub_7fd80b10Address)
    call sub_7fd80b10Address.0x3dba5ba8 with:
         gas gas_remaining wei
        args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0] = address(_3)
    mem[32] = 101
    if not sub_809f3bc4[address(_3)]:
        mem[mem[64] + 4] = address(_3)
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        require ext_code.size(sub_7fd80b10Address)
        staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                gas gas_remaining wei
               args address(_3), msg.sender, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _717 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_717] != 1:
            revert with 0, 'denied'
        _737 = mem[64]
        mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _5
        mem[mem[64] + 68 len ceil32(_5)] = mem[ceil32(arg1.length) + 160 len ceil32(_5)]
        if ceil32(_5) <= _5:
            require ext_code.size(address(_3))
            call address(_3).0xd1b3b979 with:
                 gas gas_remaining wei
                args Array(len=_5, data=mem[mem[64] + 68 len ceil32(_5)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1373 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1389 = mem[_1373]
            require mem[_1373] <= test266151307()
            require _1373 + mem[_1373] + 31 < _1373 + return_data.size
            _1405 = mem[_1373 + mem[_1373]]
            if mem[_1373 + mem[_1373]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(mem[_1373 + mem[_1373]]) + 32 < 0 or _1373 + ceil32(return_data.size) + ceil32(mem[_1373 + mem[_1373]]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _1373 + ceil32(return_data.size) + ceil32(mem[_1373 + mem[_1373]]) + 32
            mem[_1373 + ceil32(return_data.size)] = _1405
            require _1389 + _1405 + 32 <= return_data.size
            mem[_1373 + ceil32(return_data.size) + 32 len ceil32(_1405)] = mem[_1373 + _1389 + 32 len ceil32(_1405)]
            if ceil32(_1405) <= _1405:
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _1985 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_1985)] = mem[ceil32(arg1.length) + 160 len ceil32(_1985)]
                if ceil32(_1985) > _1985:
                    mem[mem[64] + _1985 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1985) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1405
                mem[mem[64] + 64 len ceil32(_1405)] = mem[_1373 + ceil32(return_data.size) + 32 len ceil32(_1405)]
                if ceil32(_1405) > _1405:
                    mem[mem[64] + _1405 + 64] = 0
            else:
                mem[_1373 + ceil32(return_data.size) + _1405 + 32] = 0
                mem[mem[64]] = address(_3)
                mem[mem[64] + 32] = 64
                _2001 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[mem[64] + 96 len ceil32(_2001)] = mem[ceil32(arg1.length) + 160 len ceil32(_2001)]
                if ceil32(_2001) > _2001:
                    mem[mem[64] + _2001 + 96] = 0
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2001) + 32]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1405
                mem[mem[64] + 64 len ceil32(_1405)] = mem[_1373 + ceil32(return_data.size) + 32 len ceil32(_1405)]
                if ceil32(_1405) > _1405:
                    mem[mem[64] + _1405 + 64] = 0
            return Array(len=_1405, data=mem[mem[64] + 64 len ceil32(_1405)])
        mem[mem[64] + _5 + 68] = 0
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(_5) + _737 + -mem[64] + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1381 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1397 = mem[_1381]
        require mem[_1381] <= test266151307()
        require _1381 + mem[_1381] + 31 < _1381 + return_data.size
        _1413 = mem[_1381 + mem[_1381]]
        if mem[_1381 + mem[_1381]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(mem[_1381 + mem[_1381]]) + 32 < 0 or _1381 + ceil32(return_data.size) + ceil32(mem[_1381 + mem[_1381]]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _1381 + ceil32(return_data.size) + ceil32(mem[_1381 + mem[_1381]]) + 32
        mem[_1381 + ceil32(return_data.size)] = _1413
        require _1397 + _1413 + 32 <= return_data.size
        mem[_1381 + ceil32(return_data.size) + 32 len ceil32(_1413)] = mem[_1381 + _1397 + 32 len ceil32(_1413)]
        if ceil32(_1413) <= _1413:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _1986 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_1986)] = mem[ceil32(arg1.length) + 160 len ceil32(_1986)]
            if ceil32(_1986) > _1986:
                mem[mem[64] + _1986 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1986) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1413
            mem[mem[64] + 64 len ceil32(_1413)] = mem[_1381 + ceil32(return_data.size) + 32 len ceil32(_1413)]
            if ceil32(_1413) > _1413:
                mem[mem[64] + _1413 + 64] = 0
        else:
            mem[_1381 + ceil32(return_data.size) + _1413 + 32] = 0
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _2002 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_2002)] = mem[ceil32(arg1.length) + 160 len ceil32(_2002)]
            if ceil32(_2002) > _2002:
                mem[mem[64] + _2002 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2002) + 32]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1413
            mem[mem[64] + 64 len ceil32(_1413)] = mem[_1381 + ceil32(return_data.size) + 32 len ceil32(_1413)]
            if ceil32(_1413) > _1413:
                mem[mem[64] + _1413 + 64] = 0
        return Array(len=_1413, data=mem[mem[64] + 64 len ceil32(_1413)])
    mem[0] = address(_3)
    mem[32] = 101
    mem[mem[64] + 4] = address(_3)
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = 0
    require ext_code.size(sub_809f3bc4[address(_3)])
    staticcall sub_809f3bc4[address(_3)].0xf32cb1e7 with:
            gas gas_remaining wei
           args address(_3), msg.sender, 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _718 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_718] != 1:
        revert with 0, 'denied'
    _739 = mem[64]
    mem[mem[64]] = 0xd1b3b97900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = _5
    mem[mem[64] + 68 len ceil32(_5)] = mem[ceil32(arg1.length) + 160 len ceil32(_5)]
    if ceil32(_5) <= _5:
        require ext_code.size(address(_3))
        call address(_3).0xd1b3b979 with:
             gas gas_remaining wei
            args Array(len=_5, data=mem[mem[64] + 68 len ceil32(_5)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1374 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1390 = mem[_1374]
        require mem[_1374] <= test266151307()
        require _1374 + mem[_1374] + 31 < _1374 + return_data.size
        _1406 = mem[_1374 + mem[_1374]]
        if mem[_1374 + mem[_1374]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(mem[_1374 + mem[_1374]]) + 32 < 0 or _1374 + ceil32(return_data.size) + ceil32(mem[_1374 + mem[_1374]]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _1374 + ceil32(return_data.size) + ceil32(mem[_1374 + mem[_1374]]) + 32
        mem[_1374 + ceil32(return_data.size)] = _1406
        require _1390 + _1406 + 32 <= return_data.size
        mem[_1374 + ceil32(return_data.size) + 32 len ceil32(_1406)] = mem[_1374 + _1390 + 32 len ceil32(_1406)]
        if ceil32(_1406) <= _1406:
            mem[mem[64]] = address(_3)
            mem[mem[64] + 32] = 64
            _1987 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[mem[64] + 96 len ceil32(_1987)] = mem[ceil32(arg1.length) + 160 len ceil32(_1987)]
            if ceil32(_1987) <= _1987:
                emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1987) + 32]
                _2529 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _1406
                mem[mem[64] + 64 len ceil32(_1406)] = mem[_1374 + ceil32(return_data.size) + 32 len ceil32(_1406)]
                if ceil32(_1406) <= _1406:
                    return Array(len=_1406, data=mem[mem[64] + 64 len ceil32(_1406)])
                mem[mem[64] + _1406 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_1406) + _2529 + -mem[64] + 64
            mem[mem[64] + _1987 + 96] = 0
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1987) + 32]
            _2573 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1406
            mem[mem[64] + 64 len ceil32(_1406)] = mem[_1374 + ceil32(return_data.size) + 32 len ceil32(_1406)]
            if ceil32(_1406) <= _1406:
                return Array(len=_1406, data=mem[mem[64] + 64 len ceil32(_1406)])
            mem[mem[64] + _1406 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_1406) + _2573 + -mem[64] + 64
        mem[_1374 + ceil32(return_data.size) + _1406 + 32] = 0
        mem[mem[64]] = address(_3)
        mem[mem[64] + 32] = 64
        _2003 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[mem[64] + 96 len ceil32(_2003)] = mem[ceil32(arg1.length) + 160 len ceil32(_2003)]
        if ceil32(_2003) <= _2003:
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2003) + 32]
            _2531 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1406
            mem[mem[64] + 64 len ceil32(_1406)] = mem[_1374 + ceil32(return_data.size) + 32 len ceil32(_1406)]
            if ceil32(_1406) <= _1406:
                return Array(len=_1406, data=mem[mem[64] + 64 len ceil32(_1406)])
            mem[mem[64] + _1406 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_1406) + _2531 + -mem[64] + 64
        mem[mem[64] + _2003 + 96] = 0
        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2003) + 32]
        _2574 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _1406
        mem[mem[64] + 64 len ceil32(_1406)] = mem[_1374 + ceil32(return_data.size) + 32 len ceil32(_1406)]
        if ceil32(_1406) <= _1406:
            return Array(len=_1406, data=mem[mem[64] + 64 len ceil32(_1406)])
        mem[mem[64] + _1406 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_1406) + _2574 + -mem[64] + 64
    mem[mem[64] + _5 + 68] = 0
    require ext_code.size(address(_3))
    call address(_3).0xd1b3b979 with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len ceil32(_5) + _739 + -mem[64] + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1382 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1398 = mem[_1382]
    require mem[_1382] <= test266151307()
    require _1382 + mem[_1382] + 31 < _1382 + return_data.size
    _1414 = mem[_1382 + mem[_1382]]
    if mem[_1382 + mem[_1382]] > test266151307():
        revert with 'NH{q', 65
    if ceil32(mem[_1382 + mem[_1382]]) + 32 < 0 or _1382 + ceil32(return_data.size) + ceil32(mem[_1382 + mem[_1382]]) + 32 > test266151307():
        revert with 'NH{q', 65
    mem[64] = _1382 + ceil32(return_data.size) + ceil32(mem[_1382 + mem[_1382]]) + 32
    mem[_1382 + ceil32(return_data.size)] = _1414
    require _1398 + _1414 + 32 <= return_data.size
    mem[_1382 + ceil32(return_data.size) + 32 len ceil32(_1414)] = mem[_1382 + _1398 + 32 len ceil32(_1414)]
    if ceil32(_1414) <= _1414:
        mem[mem[64]] = address(_3)
        mem[mem[64] + 32] = 64
        _1988 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[mem[64] + 96 len ceil32(_1988)] = mem[ceil32(arg1.length) + 160 len ceil32(_1988)]
        if ceil32(_1988) <= _1988:
            emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1988) + 32]
            _2533 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _1414
            mem[mem[64] + 64 len ceil32(_1414)] = mem[_1382 + ceil32(return_data.size) + 32 len ceil32(_1414)]
            if ceil32(_1414) <= _1414:
                return Array(len=_1414, data=mem[mem[64] + 64 len ceil32(_1414)])
            mem[mem[64] + _1414 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_1414) + _2533 + -mem[64] + 64
        mem[mem[64] + _1988 + 96] = 0
        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_1988) + 32]
        _2575 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _1414
        mem[mem[64] + 64 len ceil32(_1414)] = mem[_1382 + ceil32(return_data.size) + 32 len ceil32(_1414)]
        if ceil32(_1414) <= _1414:
            return Array(len=_1414, data=mem[mem[64] + 64 len ceil32(_1414)])
        mem[mem[64] + _1414 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_1414) + _2575 + -mem[64] + 64
    mem[_1382 + ceil32(return_data.size) + _1414 + 32] = 0
    mem[mem[64]] = address(_3)
    mem[mem[64] + 32] = 64
    _2004 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[mem[64] + 64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[mem[64] + 96 len ceil32(_2004)] = mem[ceil32(arg1.length) + 160 len ceil32(_2004)]
    if ceil32(_2004) <= _2004:
        emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2004) + 32]
        _2535 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _1414
        mem[mem[64] + 64 len ceil32(_1414)] = mem[_1382 + ceil32(return_data.size) + 32 len ceil32(_1414)]
        if ceil32(_1414) <= _1414:
            return Array(len=_1414, data=mem[mem[64] + 64 len ceil32(_1414)])
        mem[mem[64] + _1414 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_1414) + _2535 + -mem[64] + 64
    mem[mem[64] + _2004 + 96] = 0
    emit 0x315d599b: address(_3), 64, mem[mem[64] + 64 len ceil32(_2004) + 32]
    _2576 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _1414
    mem[mem[64] + 64 len ceil32(_1414)] = mem[_1382 + ceil32(return_data.size) + 32 len ceil32(_1414)]
    if ceil32(_1414) <= _1414:
        return Array(len=_1414, data=mem[mem[64] + 64 len ceil32(_1414)])
    mem[mem[64] + _1414 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_1414) + _2576 + -mem[64] + 64
}

function sub_a7cc2086(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
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
    if ceil32(mem[mem[192] + 128]) + 160 < 128 or ceil32(arg1.length) + ceil32(mem[mem[192] + 128]) + 160 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(arg1.length) + ceil32(mem[mem[192] + 128]) + 160
    mem[ceil32(arg1.length) + 128] = mem[mem[192] + 128]
    require _5 + _6 + 64 <= arg1.length + 32
    mem[ceil32(arg1.length) + 160 len ceil32(_6)] = mem[_5 + 160 len ceil32(_6)]
    if ceil32(_6) <= _6:
        _1034 = mem[224]
        require mem[224] <= test266151307()
        require mem[224] + 159 < arg1.length + 128
        _1036 = mem[mem[224] + 128]
        if mem[mem[224] + 128] > test266151307():
            revert with 'NH{q', 65
        _1038 = mem[64]
        if mem[64] + ceil32(mem[mem[224] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[mem[224] + 128]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(mem[mem[224] + 128]) + 32
        mem[_1038] = mem[mem[224] + 128]
        require _1034 + _1036 + 64 <= arg1.length + 32
        mem[_1038 + 32 len ceil32(_1036)] = mem[_1034 + 160 len ceil32(_1036)]
        if ceil32(_1036) <= _1036:
            mem[mem[64] + 100] = arg3
            mem[mem[64] + 132] = uint8(arg4)
            mem[mem[64] + 164] = arg5
            mem[mem[64] + 196] = arg6
            if sub_809f3bc4[address(_3)]:
                require ext_code.size(sub_809f3bc4[address(_3)])
                call sub_809f3bc4[address(_3)].0x3dba5ba8 with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2134 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2134] != 1:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2200 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2200)] = mem[ceil32(arg1.length) + 160 len ceil32(_2200)]
                    if ceil32(_2200) <= _2200:
                        mem[mem[64] + 68] = ceil32(_2200) + 128
                        _3094 = mem[_1038]
                        mem[ceil32(_2200) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2200) + mem[64] + 164 len ceil32(_3094)] = mem[_1038 + 32 len ceil32(_3094)]
                        if ceil32(_3094) <= _3094:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2200) + 128, mem[mem[64] + 100 len ceil32(_3094) + ceil32(_2200) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4088 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4088)] = mem[ceil32(arg1.length) + 160 len ceil32(_4088)]
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
                            mem[ceil32(_2200) + mem[64] + _3094 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2200) + 128, mem[mem[64] + 100 len ceil32(_3094) + ceil32(_2200) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4120 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4120)] = mem[ceil32(arg1.length) + 160 len ceil32(_4120)]
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
                        mem[mem[64] + _2200 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2200) + 128
                        _3110 = mem[_1038]
                        mem[ceil32(_2200) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2200) + mem[64] + 164 len ceil32(_3110)] = mem[_1038 + 32 len ceil32(_3110)]
                        if ceil32(_3110) <= _3110:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2200) + 128, mem[mem[64] + 100 len _2200 + 32], 0, mem[mem[64] + _2200 + 164 len ceil32(_3110) + ceil32(_2200) - _2200]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4089 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4089)] = mem[ceil32(arg1.length) + 160 len ceil32(_4089)]
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
                            mem[ceil32(_2200) + mem[64] + _3110 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2200) + 128, mem[mem[64] + 100 len _2200 + 32], 0, mem[mem[64] + _2200 + 164 len ceil32(_3110) + ceil32(_2200) - _2200]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4121 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4121)] = mem[ceil32(arg1.length) + 160 len ceil32(_4121)]
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
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2135 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2135] != 1:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2202 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2202)] = mem[ceil32(arg1.length) + 160 len ceil32(_2202)]
                    if ceil32(_2202) <= _2202:
                        mem[mem[64] + 68] = ceil32(_2202) + 128
                        _3095 = mem[_1038]
                        mem[ceil32(_2202) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2202) + mem[64] + 164 len ceil32(_3095)] = mem[_1038 + 32 len ceil32(_3095)]
                        if ceil32(_3095) <= _3095:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2202) + 128, mem[mem[64] + 100 len ceil32(_3095) + ceil32(_2202) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4090 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4090)] = mem[ceil32(arg1.length) + 160 len ceil32(_4090)]
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
                            mem[ceil32(_2202) + mem[64] + _3095 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2202) + 128, mem[mem[64] + 100 len ceil32(_3095) + ceil32(_2202) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4122 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4122)] = mem[ceil32(arg1.length) + 160 len ceil32(_4122)]
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
                        mem[mem[64] + _2202 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2202) + 128
                        _3111 = mem[_1038]
                        mem[ceil32(_2202) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2202) + mem[64] + 164 len ceil32(_3111)] = mem[_1038 + 32 len ceil32(_3111)]
                        if ceil32(_3111) <= _3111:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2202) + 128, mem[mem[64] + 100 len _2202 + 32], 0, mem[mem[64] + _2202 + 164 len ceil32(_3111) + ceil32(_2202) - _2202]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4091 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4091)] = mem[ceil32(arg1.length) + 160 len ceil32(_4091)]
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
                            mem[ceil32(_2202) + mem[64] + _3111 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2202) + 128, mem[mem[64] + 100 len _2202 + 32], 0, mem[mem[64] + _2202 + 164 len ceil32(_3111) + ceil32(_2202) - _2202]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4123 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4123)] = mem[ceil32(arg1.length) + 160 len ceil32(_4123)]
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
                require ext_code.size(sub_7fd80b10Address)
                call sub_7fd80b10Address.0x3dba5ba8 with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2132 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2132] != 1:
                        revert with 0, 'denied'
                    _2164 = mem[64]
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2196 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2196)] = mem[ceil32(arg1.length) + 160 len ceil32(_2196)]
                    if ceil32(_2196) <= _2196:
                        mem[mem[64] + 68] = ceil32(_2196) + 128
                        _3092 = mem[_1038]
                        mem[ceil32(_2196) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2196) + mem[64] + 164 len ceil32(_3092)] = mem[_1038 + 32 len ceil32(_3092)]
                        if ceil32(_3092) <= _3092:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2196) + 128, mem[mem[64] + 100 len ceil32(_3092) + ceil32(_2196) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4084 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4084)] = mem[ceil32(arg1.length) + 160 len ceil32(_4084)]
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
                            mem[ceil32(_2196) + mem[64] + _3092 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2196) + 128, mem[mem[64] + 100 len ceil32(_3092) + ceil32(_2196) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4116 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4116)] = mem[ceil32(arg1.length) + 160 len ceil32(_4116)]
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
                        mem[mem[64] + _2196 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2196) + 128
                        _3108 = mem[_1038]
                        mem[ceil32(_2196) + _2164 + 132] = mem[_1038]
                        mem[ceil32(_2196) + _2164 + 164 len ceil32(_3108)] = mem[_1038 + 32 len ceil32(_3108)]
                        if ceil32(_3108) <= _3108:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3108) + ceil32(_2196) + _2164 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4085 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4085)] = mem[ceil32(arg1.length) + 160 len ceil32(_4085)]
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
                            mem[ceil32(_2196) + _2164 + _3108 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3108) + ceil32(_2196) + _2164 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4117 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4117)] = mem[ceil32(arg1.length) + 160 len ceil32(_4117)]
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
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2133 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2133] != 1:
                        revert with 0, 'denied'
                    _2166 = mem[64]
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2198 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2198)] = mem[ceil32(arg1.length) + 160 len ceil32(_2198)]
                    if ceil32(_2198) <= _2198:
                        mem[mem[64] + 68] = ceil32(_2198) + 128
                        _3093 = mem[_1038]
                        mem[ceil32(_2198) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2198) + mem[64] + 164 len ceil32(_3093)] = mem[_1038 + 32 len ceil32(_3093)]
                        if ceil32(_3093) <= _3093:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2198) + 128, mem[mem[64] + 100 len ceil32(_3093) + ceil32(_2198) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4086 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4086)] = mem[ceil32(arg1.length) + 160 len ceil32(_4086)]
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
                            mem[ceil32(_2198) + mem[64] + _3093 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2198) + 128, mem[mem[64] + 100 len ceil32(_3093) + ceil32(_2198) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4118 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4118)] = mem[ceil32(arg1.length) + 160 len ceil32(_4118)]
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
                        mem[mem[64] + _2198 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2198) + 128
                        _3109 = mem[_1038]
                        mem[ceil32(_2198) + _2166 + 132] = mem[_1038]
                        mem[ceil32(_2198) + _2166 + 164 len ceil32(_3109)] = mem[_1038 + 32 len ceil32(_3109)]
                        if ceil32(_3109) <= _3109:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3109) + ceil32(_2198) + _2166 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4087 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4087)] = mem[ceil32(arg1.length) + 160 len ceil32(_4087)]
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
                            mem[ceil32(_2198) + _2166 + _3109 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3109) + ceil32(_2198) + _2166 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4119 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4119)] = mem[ceil32(arg1.length) + 160 len ceil32(_4119)]
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
            mem[_1038 + _1036 + 32] = 0
            mem[mem[64] + 100] = arg3
            mem[mem[64] + 132] = uint8(arg4)
            mem[mem[64] + 164] = arg5
            mem[mem[64] + 196] = arg6
            if not sub_809f3bc4[address(_3)]:
                require ext_code.size(sub_7fd80b10Address)
                call sub_7fd80b10Address.0x3dba5ba8 with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2140 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2140] != 1:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2212 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2212)] = mem[ceil32(arg1.length) + 160 len ceil32(_2212)]
                    if ceil32(_2212) <= _2212:
                        mem[mem[64] + 68] = ceil32(_2212) + 128
                        _3096 = mem[_1038]
                        mem[ceil32(_2212) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2212) + mem[64] + 164 len ceil32(_3096)] = mem[_1038 + 32 len ceil32(_3096)]
                        if ceil32(_3096) <= _3096:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2212) + 128, mem[mem[64] + 100 len ceil32(_3096) + ceil32(_2212) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4092 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4092)] = mem[ceil32(arg1.length) + 160 len ceil32(_4092)]
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
                            mem[ceil32(_2212) + mem[64] + _3096 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2212) + 128, mem[mem[64] + 100 len ceil32(_3096) + ceil32(_2212) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4124 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4124)] = mem[ceil32(arg1.length) + 160 len ceil32(_4124)]
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
                        mem[mem[64] + _2212 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2212) + 128
                        _3112 = mem[_1038]
                        mem[ceil32(_2212) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2212) + mem[64] + 164 len ceil32(_3112)] = mem[_1038 + 32 len ceil32(_3112)]
                        if ceil32(_3112) <= _3112:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2212) + 128, mem[mem[64] + 100 len _2212 + 32], 0, mem[mem[64] + _2212 + 164 len ceil32(_3112) + ceil32(_2212) - _2212]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4093 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4093)] = mem[ceil32(arg1.length) + 160 len ceil32(_4093)]
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
                            mem[ceil32(_2212) + mem[64] + _3112 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2212) + 128, mem[mem[64] + 100 len _2212 + 32], 0, mem[mem[64] + _2212 + 164 len ceil32(_3112) + ceil32(_2212) - _2212]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4125 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4125)] = mem[ceil32(arg1.length) + 160 len ceil32(_4125)]
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
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2141 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2141] != 1:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2214 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2214)] = mem[ceil32(arg1.length) + 160 len ceil32(_2214)]
                    if ceil32(_2214) <= _2214:
                        mem[mem[64] + 68] = ceil32(_2214) + 128
                        _3097 = mem[_1038]
                        mem[ceil32(_2214) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2214) + mem[64] + 164 len ceil32(_3097)] = mem[_1038 + 32 len ceil32(_3097)]
                        if ceil32(_3097) <= _3097:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2214) + 128, mem[mem[64] + 100 len ceil32(_3097) + ceil32(_2214) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4094 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4094)] = mem[ceil32(arg1.length) + 160 len ceil32(_4094)]
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
                            mem[ceil32(_2214) + mem[64] + _3097 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2214) + 128, mem[mem[64] + 100 len ceil32(_3097) + ceil32(_2214) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4126 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4126)] = mem[ceil32(arg1.length) + 160 len ceil32(_4126)]
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
                        mem[mem[64] + _2214 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2214) + 128
                        _3113 = mem[_1038]
                        mem[ceil32(_2214) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2214) + mem[64] + 164 len ceil32(_3113)] = mem[_1038 + 32 len ceil32(_3113)]
                        if ceil32(_3113) <= _3113:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2214) + 128, mem[mem[64] + 100 len _2214 + 32], 0, mem[mem[64] + _2214 + 164 len ceil32(_3113) + ceil32(_2214) - _2214]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4095 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4095)] = mem[ceil32(arg1.length) + 160 len ceil32(_4095)]
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
                            mem[ceil32(_2214) + mem[64] + _3113 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2214) + 128, mem[mem[64] + 100 len _2214 + 32], 0, mem[mem[64] + _2214 + 164 len ceil32(_3113) + ceil32(_2214) - _2214]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4127 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4127)] = mem[ceil32(arg1.length) + 160 len ceil32(_4127)]
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
                call sub_809f3bc4[address(_3)].0x3dba5ba8 with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2142 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2142] != 1:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2216 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2216)] = mem[ceil32(arg1.length) + 160 len ceil32(_2216)]
                    if ceil32(_2216) <= _2216:
                        mem[mem[64] + 68] = ceil32(_2216) + 128
                        _3098 = mem[_1038]
                        mem[ceil32(_2216) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2216) + mem[64] + 164 len ceil32(_3098)] = mem[_1038 + 32 len ceil32(_3098)]
                        if ceil32(_3098) <= _3098:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2216) + 128, mem[mem[64] + 100 len ceil32(_3098) + ceil32(_2216) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4096 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4096)] = mem[ceil32(arg1.length) + 160 len ceil32(_4096)]
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
                            mem[ceil32(_2216) + mem[64] + _3098 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2216) + 128, mem[mem[64] + 100 len ceil32(_3098) + ceil32(_2216) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4128 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4128)] = mem[ceil32(arg1.length) + 160 len ceil32(_4128)]
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
                        mem[mem[64] + _2216 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2216) + 128
                        _3114 = mem[_1038]
                        mem[ceil32(_2216) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2216) + mem[64] + 164 len ceil32(_3114)] = mem[_1038 + 32 len ceil32(_3114)]
                        if ceil32(_3114) <= _3114:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2216) + 128, mem[mem[64] + 100 len _2216 + 32], 0, mem[mem[64] + _2216 + 164 len ceil32(_3114) + ceil32(_2216) - _2216]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4097 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4097)] = mem[ceil32(arg1.length) + 160 len ceil32(_4097)]
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
                            mem[ceil32(_2216) + mem[64] + _3114 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2216) + 128, mem[mem[64] + 100 len _2216 + 32], 0, mem[mem[64] + _2216 + 164 len ceil32(_3114) + ceil32(_2216) - _2216]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4129 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4129)] = mem[ceil32(arg1.length) + 160 len ceil32(_4129)]
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
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2143 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2143] != 1:
                        revert with 0, 'denied'
                    _2186 = mem[64]
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2218 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2218)] = mem[ceil32(arg1.length) + 160 len ceil32(_2218)]
                    if ceil32(_2218) <= _2218:
                        mem[mem[64] + 68] = ceil32(_2218) + 128
                        _3099 = mem[_1038]
                        mem[ceil32(_2218) + mem[64] + 132] = mem[_1038]
                        mem[ceil32(_2218) + mem[64] + 164 len ceil32(_3099)] = mem[_1038 + 32 len ceil32(_3099)]
                        if ceil32(_3099) <= _3099:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2218) + 128, mem[mem[64] + 100 len ceil32(_3099) + ceil32(_2218) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4098 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4098)] = mem[ceil32(arg1.length) + 160 len ceil32(_4098)]
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
                            mem[ceil32(_2218) + mem[64] + _3099 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2218) + 128, mem[mem[64] + 100 len ceil32(_3099) + ceil32(_2218) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4130 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4130)] = mem[ceil32(arg1.length) + 160 len ceil32(_4130)]
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
                        mem[mem[64] + _2218 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2218) + 128
                        _3115 = mem[_1038]
                        mem[ceil32(_2218) + _2186 + 132] = mem[_1038]
                        mem[ceil32(_2218) + _2186 + 164 len ceil32(_3115)] = mem[_1038 + 32 len ceil32(_3115)]
                        if ceil32(_3115) <= _3115:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3115) + ceil32(_2218) + _2186 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4099 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4099)] = mem[ceil32(arg1.length) + 160 len ceil32(_4099)]
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
                            mem[ceil32(_2218) + _2186 + _3115 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3115) + ceil32(_2218) + _2186 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4131 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4131)] = mem[ceil32(arg1.length) + 160 len ceil32(_4131)]
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
        mem[ceil32(arg1.length) + _6 + 160] = 0
        _1035 = mem[224]
        require mem[224] <= test266151307()
        require mem[224] + 159 < arg1.length + 128
        _1037 = mem[mem[224] + 128]
        if mem[mem[224] + 128] > test266151307():
            revert with 'NH{q', 65
        _1039 = mem[64]
        if mem[64] + ceil32(mem[mem[224] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[mem[224] + 128]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(mem[mem[224] + 128]) + 32
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
                call sub_7fd80b10Address.0x3dba5ba8 with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2136 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2136] != 1:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2204 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2204)] = mem[ceil32(arg1.length) + 160 len ceil32(_2204)]
                    if ceil32(_2204) <= _2204:
                        mem[mem[64] + 68] = ceil32(_2204) + 128
                        _3100 = mem[_1039]
                        mem[ceil32(_2204) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2204) + mem[64] + 164 len ceil32(_3100)] = mem[_1039 + 32 len ceil32(_3100)]
                        if ceil32(_3100) <= _3100:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2204) + 128, mem[mem[64] + 100 len ceil32(_3100) + ceil32(_2204) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4100 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4100)] = mem[ceil32(arg1.length) + 160 len ceil32(_4100)]
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
                            mem[ceil32(_2204) + mem[64] + _3100 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2204) + 128, mem[mem[64] + 100 len ceil32(_3100) + ceil32(_2204) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4132 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4132)] = mem[ceil32(arg1.length) + 160 len ceil32(_4132)]
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
                        mem[mem[64] + _2204 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2204) + 128
                        _3116 = mem[_1039]
                        mem[ceil32(_2204) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2204) + mem[64] + 164 len ceil32(_3116)] = mem[_1039 + 32 len ceil32(_3116)]
                        if ceil32(_3116) <= _3116:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2204) + 128, mem[mem[64] + 100 len _2204 + 32], 0, mem[mem[64] + _2204 + 164 len ceil32(_3116) + ceil32(_2204) - _2204]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4101 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4101)] = mem[ceil32(arg1.length) + 160 len ceil32(_4101)]
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
                            mem[ceil32(_2204) + mem[64] + _3116 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2204) + 128, mem[mem[64] + 100 len _2204 + 32], 0, mem[mem[64] + _2204 + 164 len ceil32(_3116) + ceil32(_2204) - _2204]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4133 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4133)] = mem[ceil32(arg1.length) + 160 len ceil32(_4133)]
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
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2137 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2137] != 1:
                        revert with 0, 'denied'
                    _2174 = mem[64]
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2206 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2206)] = mem[ceil32(arg1.length) + 160 len ceil32(_2206)]
                    if ceil32(_2206) <= _2206:
                        mem[mem[64] + 68] = ceil32(_2206) + 128
                        _3101 = mem[_1039]
                        mem[ceil32(_2206) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2206) + mem[64] + 164 len ceil32(_3101)] = mem[_1039 + 32 len ceil32(_3101)]
                        if ceil32(_3101) <= _3101:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2206) + 128, mem[mem[64] + 100 len ceil32(_3101) + ceil32(_2206) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4102 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4102)] = mem[ceil32(arg1.length) + 160 len ceil32(_4102)]
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
                            mem[ceil32(_2206) + mem[64] + _3101 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2206) + 128, mem[mem[64] + 100 len ceil32(_3101) + ceil32(_2206) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4134 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4134)] = mem[ceil32(arg1.length) + 160 len ceil32(_4134)]
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
                        mem[mem[64] + _2206 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2206) + 128
                        _3117 = mem[_1039]
                        mem[ceil32(_2206) + _2174 + 132] = mem[_1039]
                        mem[ceil32(_2206) + _2174 + 164 len ceil32(_3117)] = mem[_1039 + 32 len ceil32(_3117)]
                        if ceil32(_3117) <= _3117:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3117) + ceil32(_2206) + _2174 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4103 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4103)] = mem[ceil32(arg1.length) + 160 len ceil32(_4103)]
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
                            mem[ceil32(_2206) + _2174 + _3117 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3117) + ceil32(_2206) + _2174 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4135 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4135)] = mem[ceil32(arg1.length) + 160 len ceil32(_4135)]
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
                call sub_809f3bc4[address(_3)].0x3dba5ba8 with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2138 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2138] != 1:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2208 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2208)] = mem[ceil32(arg1.length) + 160 len ceil32(_2208)]
                    if ceil32(_2208) <= _2208:
                        mem[mem[64] + 68] = ceil32(_2208) + 128
                        _3102 = mem[_1039]
                        mem[ceil32(_2208) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2208) + mem[64] + 164 len ceil32(_3102)] = mem[_1039 + 32 len ceil32(_3102)]
                        if ceil32(_3102) <= _3102:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2208) + 128, mem[mem[64] + 100 len ceil32(_3102) + ceil32(_2208) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4104 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4104)] = mem[ceil32(arg1.length) + 160 len ceil32(_4104)]
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
                            mem[ceil32(_2208) + mem[64] + _3102 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2208) + 128, mem[mem[64] + 100 len ceil32(_3102) + ceil32(_2208) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4136 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4136)] = mem[ceil32(arg1.length) + 160 len ceil32(_4136)]
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
                        mem[mem[64] + _2208 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2208) + 128
                        _3118 = mem[_1039]
                        mem[ceil32(_2208) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2208) + mem[64] + 164 len ceil32(_3118)] = mem[_1039 + 32 len ceil32(_3118)]
                        if ceil32(_3118) <= _3118:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2208) + 128, mem[mem[64] + 100 len _2208 + 32], 0, mem[mem[64] + _2208 + 164 len ceil32(_3118) + ceil32(_2208) - _2208]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4105 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4105)] = mem[ceil32(arg1.length) + 160 len ceil32(_4105)]
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
                            mem[ceil32(_2208) + mem[64] + _3118 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2208) + 128, mem[mem[64] + 100 len _2208 + 32], 0, mem[mem[64] + _2208 + 164 len ceil32(_3118) + ceil32(_2208) - _2208]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4137 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4137)] = mem[ceil32(arg1.length) + 160 len ceil32(_4137)]
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
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2139 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2139] != 1:
                        revert with 0, 'denied'
                    _2178 = mem[64]
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2210 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2210)] = mem[ceil32(arg1.length) + 160 len ceil32(_2210)]
                    if ceil32(_2210) <= _2210:
                        mem[mem[64] + 68] = ceil32(_2210) + 128
                        _3103 = mem[_1039]
                        mem[ceil32(_2210) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2210) + mem[64] + 164 len ceil32(_3103)] = mem[_1039 + 32 len ceil32(_3103)]
                        if ceil32(_3103) <= _3103:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2210) + 128, mem[mem[64] + 100 len ceil32(_3103) + ceil32(_2210) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4106 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4106)] = mem[ceil32(arg1.length) + 160 len ceil32(_4106)]
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
                            mem[ceil32(_2210) + mem[64] + _3103 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2210) + 128, mem[mem[64] + 100 len ceil32(_3103) + ceil32(_2210) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4138 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4138)] = mem[ceil32(arg1.length) + 160 len ceil32(_4138)]
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
                        mem[mem[64] + _2210 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2210) + 128
                        _3119 = mem[_1039]
                        mem[ceil32(_2210) + _2178 + 132] = mem[_1039]
                        mem[ceil32(_2210) + _2178 + 164 len ceil32(_3119)] = mem[_1039 + 32 len ceil32(_3119)]
                        if ceil32(_3119) <= _3119:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3119) + ceil32(_2210) + _2178 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4107 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4107)] = mem[ceil32(arg1.length) + 160 len ceil32(_4107)]
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
                            mem[ceil32(_2210) + _2178 + _3119 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3119) + ceil32(_2210) + _2178 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4139 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4139)] = mem[ceil32(arg1.length) + 160 len ceil32(_4139)]
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
            if sub_809f3bc4[address(_3)]:
                require ext_code.size(sub_809f3bc4[address(_3)])
                call sub_809f3bc4[address(_3)].0x3dba5ba8 with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2146 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2146] != 1:
                        revert with 0, 'denied'
                    _2192 = mem[64]
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2224 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2224)] = mem[ceil32(arg1.length) + 160 len ceil32(_2224)]
                    if ceil32(_2224) <= _2224:
                        mem[mem[64] + 68] = ceil32(_2224) + 128
                        _3106 = mem[_1039]
                        mem[ceil32(_2224) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2224) + mem[64] + 164 len ceil32(_3106)] = mem[_1039 + 32 len ceil32(_3106)]
                        if ceil32(_3106) <= _3106:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2224) + 128, mem[mem[64] + 100 len ceil32(_3106) + ceil32(_2224) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4112 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4112)] = mem[ceil32(arg1.length) + 160 len ceil32(_4112)]
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
                            mem[ceil32(_2224) + mem[64] + _3106 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2224) + 128, mem[mem[64] + 100 len ceil32(_3106) + ceil32(_2224) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4144 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4144)] = mem[ceil32(arg1.length) + 160 len ceil32(_4144)]
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
                        mem[mem[64] + _2224 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2224) + 128
                        _3122 = mem[_1039]
                        mem[ceil32(_2224) + _2192 + 132] = mem[_1039]
                        mem[ceil32(_2224) + _2192 + 164 len ceil32(_3122)] = mem[_1039 + 32 len ceil32(_3122)]
                        if ceil32(_3122) <= _3122:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3122) + ceil32(_2224) + _2192 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4113 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4113)] = mem[ceil32(arg1.length) + 160 len ceil32(_4113)]
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
                            mem[ceil32(_2224) + _2192 + _3122 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3122) + ceil32(_2224) + _2192 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4145 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4145)] = mem[ceil32(arg1.length) + 160 len ceil32(_4145)]
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
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2147 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2147] != 1:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2226 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2226)] = mem[ceil32(arg1.length) + 160 len ceil32(_2226)]
                    if ceil32(_2226) <= _2226:
                        mem[mem[64] + 68] = ceil32(_2226) + 128
                        _3107 = mem[_1039]
                        mem[ceil32(_2226) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2226) + mem[64] + 164 len ceil32(_3107)] = mem[_1039 + 32 len ceil32(_3107)]
                        if ceil32(_3107) <= _3107:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2226) + 128, mem[mem[64] + 100 len ceil32(_3107) + ceil32(_2226) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4114 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4114)] = mem[ceil32(arg1.length) + 160 len ceil32(_4114)]
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
                            mem[ceil32(_2226) + mem[64] + _3107 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2226) + 128, mem[mem[64] + 100 len ceil32(_3107) + ceil32(_2226) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4146 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4146)] = mem[ceil32(arg1.length) + 160 len ceil32(_4146)]
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
                        mem[mem[64] + _2226 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2226) + 128
                        _3123 = mem[_1039]
                        mem[ceil32(_2226) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2226) + mem[64] + 164 len ceil32(_3123)] = mem[_1039 + 32 len ceil32(_3123)]
                        if ceil32(_3123) <= _3123:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2226) + 128, mem[mem[64] + 100 len _2226 + 32], 0, mem[mem[64] + _2226 + 164 len ceil32(_3123) + ceil32(_2226) - _2226]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4115 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4115)] = mem[ceil32(arg1.length) + 160 len ceil32(_4115)]
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
                            mem[ceil32(_2226) + mem[64] + _3123 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2226) + 128, mem[mem[64] + 100 len _2226 + 32], 0, mem[mem[64] + _2226 + 164 len ceil32(_3123) + ceil32(_2226) - _2226]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4147 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4147)] = mem[ceil32(arg1.length) + 160 len ceil32(_4147)]
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
            else:
                require ext_code.size(sub_7fd80b10Address)
                call sub_7fd80b10Address.0x3dba5ba8 with:
                     gas gas_remaining wei
                    args address(_3), msg.sender, arg2, arg3, arg4 << 248, arg5, arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(_3)
                mem[32] = 101
                if not sub_809f3bc4[address(_3)]:
                    mem[mem[64] + 4] = address(_3)
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_7fd80b10Address)
                    staticcall sub_7fd80b10Address.0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2144 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2144] != 1:
                        revert with 0, 'denied'
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2220 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2220)] = mem[ceil32(arg1.length) + 160 len ceil32(_2220)]
                    if ceil32(_2220) <= _2220:
                        mem[mem[64] + 68] = ceil32(_2220) + 128
                        _3104 = mem[_1039]
                        mem[ceil32(_2220) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2220) + mem[64] + 164 len ceil32(_3104)] = mem[_1039 + 32 len ceil32(_3104)]
                        if ceil32(_3104) <= _3104:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2220) + 128, mem[mem[64] + 100 len ceil32(_3104) + ceil32(_2220) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4108 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4108)] = mem[ceil32(arg1.length) + 160 len ceil32(_4108)]
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
                            mem[ceil32(_2220) + mem[64] + _3104 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2220) + 128, mem[mem[64] + 100 len ceil32(_3104) + ceil32(_2220) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4140 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4140)] = mem[ceil32(arg1.length) + 160 len ceil32(_4140)]
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
                        mem[mem[64] + _2220 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2220) + 128
                        _3120 = mem[_1039]
                        mem[ceil32(_2220) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2220) + mem[64] + 164 len ceil32(_3120)] = mem[_1039 + 32 len ceil32(_3120)]
                        if ceil32(_3120) <= _3120:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2220) + 128, mem[mem[64] + 100 len _2220 + 32], 0, mem[mem[64] + _2220 + 164 len ceil32(_3120) + ceil32(_2220) - _2220]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4109 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4109)] = mem[ceil32(arg1.length) + 160 len ceil32(_4109)]
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
                            mem[ceil32(_2220) + mem[64] + _3120 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2220) + 128, mem[mem[64] + 100 len _2220 + 32], 0, mem[mem[64] + _2220 + 164 len ceil32(_3120) + ceil32(_2220) - _2220]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4141 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4141)] = mem[ceil32(arg1.length) + 160 len ceil32(_4141)]
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
                    mem[mem[64] + 68] = 0
                    require ext_code.size(sub_809f3bc4[address(_3)])
                    staticcall sub_809f3bc4[address(_3)].0xf32cb1e7 with:
                            gas gas_remaining wei
                           args address(_3), msg.sender, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2145 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_2145] != 1:
                        revert with 0, 'denied'
                    _2190 = mem[64]
                    mem[mem[64]] = 0xd14536e800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_4)
                    mem[mem[64] + 36] = 96
                    _2222 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 100] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[mem[64] + 132 len ceil32(_2222)] = mem[ceil32(arg1.length) + 160 len ceil32(_2222)]
                    if ceil32(_2222) <= _2222:
                        mem[mem[64] + 68] = ceil32(_2222) + 128
                        _3105 = mem[_1039]
                        mem[ceil32(_2222) + mem[64] + 132] = mem[_1039]
                        mem[ceil32(_2222) + mem[64] + 164 len ceil32(_3105)] = mem[_1039 + 32 len ceil32(_3105)]
                        if ceil32(_3105) <= _3105:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2222) + 128, mem[mem[64] + 100 len ceil32(_3105) + ceil32(_2222) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4110 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4110)] = mem[ceil32(arg1.length) + 160 len ceil32(_4110)]
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
                            mem[ceil32(_2222) + mem[64] + _3105 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args address(_4), 96, ceil32(_2222) + 128, mem[mem[64] + 100 len ceil32(_3105) + ceil32(_2222) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4142 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4142)] = mem[ceil32(arg1.length) + 160 len ceil32(_4142)]
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
                        mem[mem[64] + _2222 + 132] = 0
                        mem[mem[64] + 68] = ceil32(_2222) + 128
                        _3121 = mem[_1039]
                        mem[ceil32(_2222) + _2190 + 132] = mem[_1039]
                        mem[ceil32(_2222) + _2190 + 164 len ceil32(_3121)] = mem[_1039 + 32 len ceil32(_3121)]
                        if ceil32(_3121) <= _3121:
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3121) + ceil32(_2222) + _2190 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4111 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4111)] = mem[ceil32(arg1.length) + 160 len ceil32(_4111)]
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
                            mem[ceil32(_2222) + _2190 + _3121 + 164] = 0
                            require ext_code.size(address(_3))
                            call address(_3).0xd14536e8 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(_3121) + ceil32(_2222) + _2190 + -mem[64] + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3)
                            mem[mem[64] + 32] = address(_4)
                            mem[mem[64] + 64] = 128
                            _4143 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                            mem[mem[64] + 160 len ceil32(_4143)] = mem[ceil32(arg1.length) + 160 len ceil32(_4143)]
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
}



}
