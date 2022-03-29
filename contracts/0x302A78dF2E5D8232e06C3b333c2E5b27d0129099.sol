contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint32 stor1;
address stor1;
address stor2;
address stor3;
address stor4;
uint8 stor5; offset 160
uint8 stor5; offset 168
uint8 stor5; offset 176
address stor5;

function initialized() payable {
    return bool(uint8(stor5.field_160))
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function relinquishControl() payable {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    stor0[msg.sender] = 0
}

function sub_6c7c402f(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    stor4 = arg1
}

function setFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    stor2 = arg1
}

function sub_fb54cc40(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    address(stor1) = arg1
}

function setFeeTracker(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    stor3 = arg1
}

function sub_10fbe8a0(?) payable {
    require calldata.size - 4 >= 32
    if uint8(stor5.field_176):
        revert with 0, 'ALREADY_ISSUED'
    require ext_code.size(address(stor1))
    call address(stor1).mint(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg1), 1, 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor5.field_176) = 1
    emit 0xd3b35edb: 10^6, arg1
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    stor0[address(arg1)] = 1
}

function setSwapHelper(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    address(stor5.field_0) = arg1
}

function issueInitialGovernanceTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor5.field_168):
        revert with 0, 'ALREADY_ISSUED'
    require ext_code.size(address(stor1))
    call address(stor1).mint(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg1), 0, 500000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor5.field_168) = 1
    emit GovernanceTokenIssued(500000, arg1);
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    address(stor1) = arg1
    stor2 = arg2
    stor3 = arg3
    stor4 = arg4
    address(stor5.field_0) = arg5
    uint8(stor5.field_160) = 1
}

function issueFuelToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    require ext_code.size(address(stor1))
    call address(stor1).mint(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg1), 1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createProposalVoteTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    require ext_code.size(0x529cd8496cec639537dab12f1d7be56f612feb2b)
    delegate 0x529cd8496cec639537dab12f1d7be56f612feb2b.createProposalVoteTokens(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function destroyProposalVoteTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    require ext_code.size(0x529cd8496cec639537dab12f1d7be56f612feb2b)
    delegate 0x529cd8496cec639537dab12f1d7be56f612feb2b.destroyProposalVoteTokens(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(stor1), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeProposal(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    require ext_code.size(0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6)
    delegate 0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6.executeProposal(address rg1, address rg2, address rg3, address rg4, address rg5, address rg6) with:
         gas gas_remaining wei
        args 0, uint32(stor1), stor2, this.address, stor3, address(stor5.field_0), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function maybeIssueGovernanceToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[204 len 24]
    require ext_code.size(address(stor1))
    staticcall address(stor1).totalBalances(uint256 rg1) with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^6:
        require ext_code.size(address(stor1))
        call address(stor1).mint(address rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(arg1), 0, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit GovernanceTokenIssued(1, arg1);
}

function sub_6e3c7c7f(?) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6)
    delegate 0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6.createChangeFeeProposal(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg3), address(arg4), arg5
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4 with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), address(delegate.return_data[0]), 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMultiToken(address rg1) with:
         gas gas_remaining wei
        args address(stor1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setGovernor(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor1))
    call address(stor1).0xa7fc7a07 with:
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
    require ext_code.size(0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6)
    delegate 0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6.createUpdateAllowlistProposal(address rg1, address rg2, bool rg3) with:
         gas gas_remaining wei
        args address(arg3), address(arg4), arg5
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4 with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), address(delegate.return_data[0]), 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMultiToken(address rg1) with:
         gas gas_remaining wei
        args address(stor1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setGovernor(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor1))
    call address(stor1).0xa7fc7a07 with:
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
    require ext_code.size(0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6)
    delegate 0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6.0x0 with:
         gas gas_remaining wei
        args address(arg3), Array(len=arg4.length, data=arg4[all]), arg5
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4 with:
         gas gas_remaining wei
        args address(arg1), Array(len=arg2.length, data=arg2[all]), address(delegate.return_data[0]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMultiToken(address rg1) with:
         gas gas_remaining wei
        args address(stor1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setGovernor(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor1))
    call address(stor1).0xa7fc7a07 with:
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
    mem[96] = arg1.length
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
    mem[32] = 0
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 268 len 24]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x1500cfba00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = stor2
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
            require ext_code.size(0x529cd8496cec639537dab12f1d7be56f612feb2b)
            delegate 0x529cd8496cec639537dab12f1d7be56f612feb2b.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 352]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 516] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 548 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            require ext_code.size(0x529cd8496cec639537dab12f1d7be56f612feb2b)
            delegate 0x529cd8496cec639537dab12f1d7be56f612feb2b.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 384]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 484] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 516 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = floor32(arg1.length) + 352
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 516] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 548 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            require ext_code.size(0x529cd8496cec639537dab12f1d7be56f612feb2b)
            delegate 0x529cd8496cec639537dab12f1d7be56f612feb2b.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 384]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 548] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 580 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            require ext_code.size(0x529cd8496cec639537dab12f1d7be56f612feb2b)
            delegate 0x529cd8496cec639537dab12f1d7be56f612feb2b.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 416]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor1))
    call address(stor1).0xa7fc7a07 with:
         gas gas_remaining wei
        args address(delegate.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor1))
    call address(stor1).addProxyRegistry(address rg1) with:
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
        args address(stor1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).0xd73cd47f with:
         gas gas_remaining wei
        args address(stor5.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).setGovernor(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).0x9277a185 with:
         gas gas_remaining wei
        args stor3
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
    mem[96] = arg1.length
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
    mem[32] = 0
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0, 
                        32,
                        40,
                        0xfe436f6e74726f6c6c61626c653a2063616c6c6572206973206e6f74206120636f6e74726f6c6c65,
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + 268 len 24]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x1500cfba00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = stor2
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
            require ext_code.size(0x529cd8496cec639537dab12f1d7be56f612feb2b)
            delegate 0x529cd8496cec639537dab12f1d7be56f612feb2b.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 352]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 516] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 548 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            require ext_code.size(0x529cd8496cec639537dab12f1d7be56f612feb2b)
            delegate 0x529cd8496cec639537dab12f1d7be56f612feb2b.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 384]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 484] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 516 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = floor32(arg1.length) + 352
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 516] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 548 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            require ext_code.size(0x529cd8496cec639537dab12f1d7be56f612feb2b)
            delegate 0x529cd8496cec639537dab12f1d7be56f612feb2b.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 384]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 548] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 580 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            require ext_code.size(0x529cd8496cec639537dab12f1d7be56f612feb2b)
            delegate 0x529cd8496cec639537dab12f1d7be56f612feb2b.0x0 with:
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
    require ext_code.size(address(stor1))
    call address(stor1).0xa7fc7a07 with:
         gas gas_remaining wei
        args address(delegate.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor1))
    call address(stor1).addProxyRegistry(address rg1) with:
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
        args address(stor1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).0xd73cd47f with:
         gas gas_remaining wei
        args address(stor5.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).setGovernor(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(delegate.return_data[0]))
    call address(delegate.return_data[0]).0x9277a185 with:
         gas gas_remaining wei
        args stor3
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
            require ext_code.size(0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6)
            delegate 0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 196 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + arg3.length + 320]
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 516] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32) + 548 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32]
            require ext_code.size(0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6)
            delegate 0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 196 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 352]
    else:
        mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 516 len arg3.length % 32]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 228] = floor32(arg3.length) + 320
        mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 516] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
        mem[floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 548 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32:
            require ext_code.size(0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6)
            delegate 0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 196 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 352]
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 548] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32) + 580 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)] % 32]
            require ext_code.size(0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6)
            delegate 0x9c3d3c5e21d1e2fd85c49024c5b7a1ce8ae292b6.0x0 with:
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 196 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 384]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        require ext_code.size(stor4)
        call stor4 with:
             gas gas_remaining wei
            args address(arg1), 128, address(delegate.return_data[0]), 0, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg2.length % 32) + 388 len arg2.length % 32]
        require ext_code.size(stor4)
        call stor4 with:
             gas gas_remaining wei
            args address(arg1), 128, address(delegate.return_data[0]), 0, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setMultiToken(address rg1) with:
         gas gas_remaining wei
        args address(stor1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setGovernor(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor1))
    call address(stor1).0xa7fc7a07 with:
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
