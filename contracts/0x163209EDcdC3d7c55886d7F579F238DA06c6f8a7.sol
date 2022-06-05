contract main {




// =====================  Runtime code  =====================


#
#  - rebase()
#
bool stor0; offset 256
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 16
uint256 stor0; offset 8
address owner;
address uFragsAddress;
address cpiOracleAddress;
address marketOracleAddress;
uint256 stor105;
uint256 deviationThreshold;
uint256 rebaseLag;
uint256 minRebaseTimeIntervalSec;
uint256 lastRebaseTimestampSec;
uint256 rebaseWindowOffsetSec;
uint256 rebaseWindowLengthSec;
uint256 epoch;
address orchestratorAddress;

function minRebaseTimeIntervalSec() payable {
    return minRebaseTimeIntervalSec
}

function lastRebaseTimestampSec() payable {
    return lastRebaseTimestampSec
}

function marketOracle() payable {
    return marketOracleAddress
}

function rebaseLag() payable {
    return rebaseLag
}

function rebaseWindowOffsetSec() payable {
    return rebaseWindowOffsetSec
}

function owner() payable {
    return owner
}

function epoch() payable {
    return epoch
}

function rebaseWindowLengthSec() payable {
    return rebaseWindowLengthSec
}

function cpiOracle() payable {
    return cpiOracleAddress
}

function orchestrator() payable {
    return orchestratorAddress
}

function uFrags() payable {
    return uFragsAddress
}

function deviationThreshold() payable {
    return deviationThreshold
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setCpiOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    cpiOracleAddress = arg1
}

function setMarketOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    marketOracleAddress = arg1
}

function setOrchestrator(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    orchestratorAddress = arg1
}

function setDeviationThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    deviationThreshold = arg1
}

function setRebaseLag(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > 0
    rebaseLag = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRebaseTimingParameters(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    require arg1 > 0
    require arg2 < arg1
    minRebaseTimeIntervalSec = arg1
    rebaseWindowOffsetSec = arg2
    rebaseWindowLengthSec = arg3
}

function globalAmpleforthEpochAndAMPLSupply() payable {
    require ext_code.size(uFragsAddress)
    staticcall uFragsAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return epoch, ext_call.return_data[0]
}

function inRebaseWindow() payable {
    require minRebaseTimeIntervalSec
    if block.timestamp % minRebaseTimeIntervalSec < rebaseWindowOffsetSec:
        return block.timestamp % minRebaseTimeIntervalSec >= rebaseWindowOffsetSec
    require rebaseWindowLengthSec + rebaseWindowOffsetSec >= rebaseWindowOffsetSec
    require minRebaseTimeIntervalSec
    return (block.timestamp % minRebaseTimeIntervalSec < rebaseWindowLengthSec + rebaseWindowOffsetSec)
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
    owner = arg1
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(240, 0, stor0.field_16) = 0
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
}

function sub_d4e1f7b1(?) payable {
    require calldata.size - 4 >= 32
    require minRebaseTimeIntervalSec
    require block.timestamp % minRebaseTimeIntervalSec <= block.timestamp
    require rebaseWindowOffsetSec >= 0
    lastRebaseTimestampSec = rebaseWindowOffsetSec + block.timestamp - (block.timestamp % minRebaseTimeIntervalSec)
    require epoch + 1 >= epoch
    epoch++
    require ext_code.size(uFragsAddress)
    call uFragsAddress.0xa726236f with:
         gas gas_remaining wei
        args epoch + 1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
    emit LogRebase(1, 1, arg1, block.timestamp, epoch);
}

function initialize(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0xfe436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
    owner = arg1
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(240, 0, stor0.field_16) = 0
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
    deviationThreshold = 5 * 10^16
    rebaseLag = 30
    minRebaseTimeIntervalSec = 24 * 3600
    rebaseWindowOffsetSec = 20 * 3600
    rebaseWindowLengthSec = 900
    lastRebaseTimestampSec = 0
    epoch = 0
    uFragsAddress = arg2
    stor105 = arg3
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}



}
