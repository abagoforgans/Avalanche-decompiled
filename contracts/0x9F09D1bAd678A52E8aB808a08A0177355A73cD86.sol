contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_ffe6e7d7Address;
uint256 claimFeeRateX10000;
uint256 sub_dacd4a79;
uint256 sub_9316e70a;
uint256 sub_da5d15c5;
uint256 sub_f7677395;
uint256 votingMaxWeightRateX10000;
uint256 votingQuorumRateX10000;
uint256 sub_570460ef;
uint256 claimAssessorMinUnstakeTime;

function sub_0bf70a62(?) payable {
    return claimFeeRateX10000
}

function sub_1dfe01a2(?) payable {
    return claimAssessorMinUnstakeTime
}

function getVotingMajorityRateX10000() payable {
    return sub_570460ef
}

function sub_326b1f10(?) payable {
    return votingMaxWeightRateX10000
}

function getVotingTimeDefault() payable {
    return sub_9316e70a
}

function getComplainFeeRateX10000() payable {
    return sub_dacd4a79
}

function sub_570460ef(?) payable {
    return sub_570460ef
}

function getVotingTimeExtended() payable {
    return sub_da5d15c5
}

function owner() payable {
    return owner
}

function getVotingMaxWeightRateX10000() payable {
    return votingMaxWeightRateX10000
}

function getComplainTime() payable {
    return sub_f7677395
}

function sub_9316e70a(?) payable {
    return sub_9316e70a
}

function sub_986e7460(?) payable {
    return votingQuorumRateX10000
}

function getClaimFeeRateX10000() payable {
    return claimFeeRateX10000
}

function getClaimAssessorMinUnstakeTime() payable {
    return claimAssessorMinUnstakeTime
}

function sub_da5d15c5(?) payable {
    return sub_da5d15c5
}

function sub_dacd4a79(?) payable {
    return sub_dacd4a79
}

function getVotingQuorumRateX10000() payable {
    return votingQuorumRateX10000
}

function sub_f7677395(?) payable {
    return sub_f7677395
}

function sub_ffe6e7d7(?) payable {
    return sub_ffe6e7d7Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setup(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'S:1'
    sub_ffe6e7d7Address = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_72f96243(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg1 < 1:
        revert with 0, 'OVTP: 1'
    sub_f7677395 = arg1
}

function sub_9fa616ad(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg1 < 1:
        revert with 0, 'OVTP: 1'
    sub_da5d15c5 = arg1
}

function sub_e66e65f8(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg1 < 1:
        revert with 0, 'OVTP: 1'
    sub_9316e70a = arg1
}

function sub_8bd24a7c(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg1 > 10000:
        revert with 0, 'OVP: 1'
    sub_dacd4a79 = arg1
}

function sub_aae2ae35(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg1 > 10000:
        revert with 0, 'OVP: 1'
    sub_570460ef = arg1
}

function sub_94dff9a0(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg1 > 10000:
        revert with 0, 'OVP: 1'
    claimFeeRateX10000 = arg1
}

function sub_1c33f5fb(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg1 > 10000:
        revert with 0, 'OVP: 1'
    votingQuorumRateX10000 = arg1
}

function sub_2e15b791(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg1 < 1:
        revert with 0, 'OVTP: 1'
    claimAssessorMinUnstakeTime = arg1
}

function sub_7580d2ba(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg1 > 10000:
        revert with 0, 'OVP: 1'
    votingMaxWeightRateX10000 = arg1
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        claimFeeRateX10000 = 10
        sub_dacd4a79 = 10
        sub_9316e70a = 36 * 3600
        sub_da5d15c5 = 36 * 3600
        sub_f7677395 = 24 * 3600
        votingMaxWeightRateX10000 = 500
        votingQuorumRateX10000 = 7500
        sub_570460ef = 5000
        claimAssessorMinUnstakeTime = 72 * 24 * 3600
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            claimFeeRateX10000 = 10
            sub_dacd4a79 = 10
            sub_9316e70a = 36 * 3600
            sub_da5d15c5 = 36 * 3600
            sub_f7677395 = 24 * 3600
            votingMaxWeightRateX10000 = 500
            votingQuorumRateX10000 = 7500
            sub_570460ef = 5000
            claimAssessorMinUnstakeTime = 72 * 24 * 3600
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                claimFeeRateX10000 = 10
                sub_dacd4a79 = 10
                sub_9316e70a = 36 * 3600
                sub_da5d15c5 = 36 * 3600
                sub_f7677395 = 24 * 3600
                votingMaxWeightRateX10000 = 500
                votingQuorumRateX10000 = 7500
                sub_570460ef = 5000
                claimAssessorMinUnstakeTime = 72 * 24 * 3600
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    claimFeeRateX10000 = 10
                    sub_dacd4a79 = 10
                    sub_9316e70a = 36 * 3600
                    sub_da5d15c5 = 36 * 3600
                    sub_f7677395 = 24 * 3600
                    votingMaxWeightRateX10000 = 500
                    votingQuorumRateX10000 = 7500
                    sub_570460ef = 5000
                    claimAssessorMinUnstakeTime = 72 * 24 * 3600
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        claimFeeRateX10000 = 10
                        sub_dacd4a79 = 10
                        sub_9316e70a = 36 * 3600
                        sub_da5d15c5 = 36 * 3600
                        sub_f7677395 = 24 * 3600
                        votingMaxWeightRateX10000 = 500
                        votingQuorumRateX10000 = 7500
                        sub_570460ef = 5000
                        claimAssessorMinUnstakeTime = 72 * 24 * 3600
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        claimFeeRateX10000 = 10
                        sub_dacd4a79 = 10
                        sub_9316e70a = 36 * 3600
                        sub_da5d15c5 = 36 * 3600
                        sub_f7677395 = 24 * 3600
                        votingMaxWeightRateX10000 = 500
                        votingQuorumRateX10000 = 7500
                        sub_570460ef = 5000
                        claimAssessorMinUnstakeTime = 72 * 24 * 3600
                        uint8(stor0.field_8) = 0
}



}
