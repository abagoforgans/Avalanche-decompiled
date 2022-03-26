contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint8 stor1;
uint32 stor2;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function relinquishControl() payable {
    if bool(stor1[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x64436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x64436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    stor1[address(arg1)] = 1
}

function issueInitialGovernanceTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor9:
        revert with 0, 'ALREADY_ISSUED'
    require ext_code.size(address(stor2))
    call address(stor2).mint(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg1), 0, 500000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor9 = 1
    emit GovernanceTokenIssued(500000, arg1);
    return 0
}

function issueFuelToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor1[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x64436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    require ext_code.size(address(stor2))
    call address(stor2).mint(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg1), 1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function createProposalVoteTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x64436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    require ext_code.size(0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac)
    delegate 0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac.createProposalVoteTokens(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(stor2), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function destroyProposalVoteTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x64436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    require ext_code.size(0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac)
    delegate 0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac.destroyProposalVoteTokens(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(stor2), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeProposal(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x64436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    require ext_code.size(0x54812b41409912bd065e9d3920ce196ff9bfc995)
    delegate 0x54812b41409912bd065e9d3920ce196ff9bfc995.executeProposal(address rg1, address rg2, address rg3, address rg4, address rg5, address rg6) with:
         gas gas_remaining wei
        args 0, uint32(stor2), stor3, this.address, stor4, stor6, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    if uint8(stor0.field_8):
        address(stor2) = arg1
        stor3 = arg2
        stor4 = arg3
        stor5 = arg4
        stor6 = arg5
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            address(stor2) = arg1
            stor3 = arg2
            stor4 = arg3
            stor5 = arg4
            stor6 = arg5
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            address(stor2) = arg1
            stor3 = arg2
            stor4 = arg3
            stor5 = arg4
            stor6 = arg5
            uint8(stor0.field_8) = 0
}

function maybeIssueGovernanceToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor1[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x64436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    require ext_code.size(address(stor2))
    staticcall address(stor2).totalBalances(uint256 rg1) with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^6:
        if arg1 and stor7 == arg1:
            require ext_code.size(address(stor2))
            call address(stor2).mint(address rg1, uint256 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args address(arg1), 0, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit GovernanceTokenIssued(1, arg1);
            if stor8 + 1 < stor8:
                revert with 0, 'SafeMath: addition overflow'
            stor8++
            if 500000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor8 > ext_call.return_data[0] - 500000 / 4:
                stor8 = 0
                stor7 = 2 * stor7
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function sub_6e3c7c7f(?) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(0x54812b41409912bd065e9d3920ce196ff9bfc995)
    delegate 0x54812b41409912bd065e9d3920ce196ff9bfc995.createChangeFeeProposal(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg3), address(arg4), arg5
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5 with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), address(delegate.return_data[0]), 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMultiToken(address rg1) with:
         gas gas_remaining wei
        args address(stor2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setGovernor(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor2))
    call address(stor2).0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, uint128(delegate.return_data[0]) << 96
}

function sub_e1431945(?) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(0x54812b41409912bd065e9d3920ce196ff9bfc995)
    delegate 0x54812b41409912bd065e9d3920ce196ff9bfc995.createUpdateAllowlistProposal(address rg1, address rg2, bool rg3) with:
         gas gas_remaining wei
        args address(arg3), address(arg4), arg5
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5 with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), address(delegate.return_data[0]), 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMultiToken(address rg1) with:
         gas gas_remaining wei
        args address(stor2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setGovernor(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor2))
    call address(stor2).0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, uint128(delegate.return_data[0]) << 96
}

function sub_afc93505(?) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(0x54812b41409912bd065e9d3920ce196ff9bfc995)
    delegate 0x54812b41409912bd065e9d3920ce196ff9bfc995.0x0 with:
         gas gas_remaining wei
        args address(arg3), Array(len=arg4.length, data=arg4[all]), arg5
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5 with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), address(delegate.return_data[0]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMultiToken(address rg1) with:
         gas gas_remaining wei
        args address(stor2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setGovernor(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor2))
    call address(stor2).0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, uint128(delegate.return_data[0]) << 96
}

function sub_2866519d(?) payable {
    require calldata.size - 4 >= 256
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0, 
                        32,
                        40,
                        0x64436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 268 len 24]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x1500cfba00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = stor3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 260] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 324] = arg5
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 356] = arg6
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 388] = arg7
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 420] = arg8
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = 288
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 452] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 484 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = arg1.length + 320
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 484] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 516 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            require ext_code.size(0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac)
            delegate 0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 352]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 516] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 548 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            require ext_code.size(0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac)
            delegate 0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 384]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 484] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 516 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = floor32(arg1.length) + 352
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 516] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 548 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            require ext_code.size(0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac)
            delegate 0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 384]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 548] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 580 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            require ext_code.size(0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac)
            delegate 0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 416]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor2))
    call address(stor2).0xa7fc7a07 with:
         gas gas_remaining wei
        args address(delegate.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(delegate.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).setMultiToken(address rg1) with:
         gas gas_remaining wei
        args address(stor2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).setSwapHelper(address rg1) with:
         gas gas_remaining wei
        args stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).setGovernor(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).setFeeTracker(address rg1) with:
         gas gas_remaining wei
        args stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).mintGenesisGems(address rg1, address rg2) with:
         gas gas_remaining wei
        args msg.sender, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, uint128(delegate.return_data[0]) << 96
}

function sub_77fa7d98(?) payable {
    require calldata.size - 4 >= 256
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[0] = msg.sender
    mem[32] = 1
    if bool(stor1[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0, 
                        32,
                        40,
                        0x64436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 268 len 24]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x1500cfba00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = stor3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 260] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 324] = arg5
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 356] = arg6
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 388] = arg7
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 420] = arg8
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = 288
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 452] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 484 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = arg1.length + 320
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 484] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 516 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            require ext_code.size(0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac)
            delegate 0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 352]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 516] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 548 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            require ext_code.size(0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac)
            delegate 0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 384]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 484] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 516 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = floor32(arg1.length) + 352
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 516] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 548 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            require ext_code.size(0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac)
            delegate 0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 384]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 548] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 580 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            require ext_code.size(0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac)
            delegate 0x8b4207a13a5a13bdb2bbf15c137820e61e3c4aac.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 416]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(delegate.return_data[0]))
    staticcall address(delegate.return_data[0]).creator() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(delegate.return_data[0]))
    staticcall address(delegate.return_data[0]).funder() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor2))
    call address(stor2).0xa7fc7a07 with:
         gas gas_remaining wei
        args address(delegate.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(delegate.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).setMultiToken(address rg1) with:
         gas gas_remaining wei
        args address(stor2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).setSwapHelper(address rg1) with:
         gas gas_remaining wei
        args stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).setGovernor(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).setFeeTracker(address rg1) with:
         gas gas_remaining wei
        args stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).mintGenesisGems(address rg1, address rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, uint128(delegate.return_data[0]) << 96
}

function sub_8dbf88c8(?) payable {
    require calldata.size - 4 >= 320
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = 0x67083d6c00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 260] = arg5
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 292] = arg6
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 324] = arg7
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356] = arg8
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 388] = arg9
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 420] = arg10
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 196] = 256
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 452] = arg3.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 228] = arg3.length + 288
        mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 516 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32:
            require ext_code.size(0x54812b41409912bd065e9d3920ce196ff9bfc995)
            delegate 0x54812b41409912bd065e9d3920ce196ff9bfc995.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 196 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + arg3.length + 320]
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 516] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32) + 548 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32]
            require ext_code.size(0x54812b41409912bd065e9d3920ce196ff9bfc995)
            delegate 0x54812b41409912bd065e9d3920ce196ff9bfc995.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 196 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 352]
    else:
        mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 516 len arg3.length % 32]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 228] = floor32(arg3.length) + 320
        mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 516] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
        mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 548 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32:
            require ext_code.size(0x54812b41409912bd065e9d3920ce196ff9bfc995)
            delegate 0x54812b41409912bd065e9d3920ce196ff9bfc995.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 196 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 352]
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 548] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32) + 580 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32]
            require ext_code.size(0x54812b41409912bd065e9d3920ce196ff9bfc995)
            delegate 0x54812b41409912bd065e9d3920ce196ff9bfc995.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 196 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 384]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        require ext_code.size(stor5)
        call stor5 with:
             gas gas_remaining wei
            args address(arg1), 128, address(delegate.return_data[0]), 0, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
        require ext_code.size(stor5)
        call stor5 with:
             gas gas_remaining wei
            args address(arg1), 128, address(delegate.return_data[0]), 0, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMultiToken(address rg1) with:
         gas gas_remaining wei
        args address(stor2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setGovernor(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor2))
    call address(stor2).0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(this.address)
    call this.address.0xa7fc7a07 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, uint128(delegate.return_data[0]) << 96
}



}
