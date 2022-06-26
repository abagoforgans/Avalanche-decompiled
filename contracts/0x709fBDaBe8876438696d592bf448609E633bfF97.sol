contract main {




// =====================  Runtime code  =====================


const getRate = 0

const EIP712_REVISION = '', 0


uint8 stor0; offset 176
uint16 baselinePercentage; offset 160
uint128 stor0; offset 176
address rewardControllerAddress;
uint256 DOMAIN_SEPARATOR;
uint256 CLAIM_TYPEHASH;
mapping of uint256 nonces;
array of struct stor4;
mapping of uint8 stor5;
mapping of struct stor6;
uint16 stor7; offset 32
uint32 meltDownAt;
uint256 attachedToRewardController;

function detachedFromRewardController() payable {
    if rewardControllerAddress != msg.sender:
        revert with 0, '', 0
    return attachedToRewardController
}

function getMeltDownAt() payable {
    return meltDownAt
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function availableReward() payable {
    return attachedToRewardController
}

function getBaselinePercentage() payable {
    return baselinePercentage
}

function attachedToRewardController() payable {
    if rewardControllerAddress != msg.sender:
        revert with 0, '', 0
    return attachedToRewardController
}

function CLAIM_TYPEHASH() payable {
    return CLAIM_TYPEHASH
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[address(arg1)]
}

function getRewardController() payable {
    return rewardControllerAddress
}

function isPaused() payable {
    return bool(uint8(stor0.field_176))
}

function _fallback() payable {
    revert
}

function getFreezePercentage() payable {
    if 10000 < stor7:
        revert with 0, 17
    return uint16(-stor7 + 10000)
}

function setBaselinePercentage(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if rewardControllerAddress != msg.sender:
        revert with 0, '', 0
    revert with 0, 'UNSUPPORTED'
}

function removeRewardProvider(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not rewardControllerAddress:
        revert with 0, '', 0
    require ext_code.size(rewardControllerAddress)
    staticcall rewardControllerAddress.isConfigAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    stor5[address(arg1)] = 0
    emit ProviderRemoved(arg1);
}

function setFreezePercentage(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not rewardControllerAddress:
        revert with 0, '', 0
    require ext_code.size(rewardControllerAddress)
    staticcall rewardControllerAddress.isConfigAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    if 10000 < arg1:
        revert with 0, 17
    stor7 = uint16(-arg1 + 10000)
}

function setMeltDownAt(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not rewardControllerAddress:
        revert with 0, '', 0
    require ext_code.size(rewardControllerAddress)
    staticcall rewardControllerAddress.isConfigAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    if meltDownAt:
        require meltDownAt > block.timestamp
    meltDownAt = arg1
    emit MeltDownAtUpdated(arg1);
}

function addRewardProvider(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not rewardControllerAddress:
        revert with 0, '', 0
    require ext_code.size(rewardControllerAddress)
    staticcall rewardControllerAddress.isConfigAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '', 0
    if not arg1:
        revert with 0, 'provider is required'
    if arg2:
        revert with 0, 'token is unsupported'
    stor5[address(arg1)] = 1
    emit ProviderAdded(address(arg1), arg2);
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(rewardControllerAddress)
    staticcall rewardControllerAddress.getAccessController() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).queryAccessControlMask(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not bool(ext_call.return_data[0]):
        revert with 0, '', 0
    if arg1 != bool(uint8(stor0.field_176)):
        Mask(80, 0, stor0.field_176) = Mask(80, 0, arg1)
    emit EmergencyPaused(arg1, msg.sender);
}

function updateBaseline(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if rewardControllerAddress != msg.sender:
        revert with 0, '', 0
    if not baselinePercentage:
        return 0
    if not arg1:
        if not rewardControllerAddress:
            revert with 0, 'controller is required'
        emit RateUpdated(0);
        return 1, 0
    if not baselinePercentage:
        if not rewardControllerAddress:
            revert with 0, 'controller is required'
        emit RateUpdated(0);
        return 1, 0
    if not baselinePercentage:
        revert with 0, 18
    if arg1 > -5001 / baselinePercentage:
        revert with 0, '', 0
    if arg1 and baselinePercentage > -1 / arg1:
        revert with 0, 17
    if arg1 * baselinePercentage > -5001:
        revert with 0, 17
    if not rewardControllerAddress:
        revert with 0, 'controller is required'
    if (arg1 * baselinePercentage) + 5000 / 10000:
        revert with 0, 'UNSUPPORTED'
    emit RateUpdated(((arg1 * baselinePercentage) + 5000 / 10000));
    return 1, (arg1 * baselinePercentage) + 5000 / 10000
}

function getPoolName() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function calcRewardFor(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 >= uint32(block.timestamp)
    if meltDownAt:
        if meltDownAt <= arg2:
            if not stor6[address(arg1)].field_0:
                if stor6[address(arg1)].field_0 < 0:
                    if 0 < stor6[address(arg1)].field_0:
                        revert with 0, 17
                if 0 < stor6[address(arg1)].field_0:
                    return 0, stor6[address(arg1)].field_0, uint32(block.timestamp)
                return 0, 0, uint32(block.timestamp)
            if 0 > !stor6[address(arg1)].field_0:
                revert with 0, 17
            if stor6[address(arg1)].field_0 < 0:
                if 0 < stor6[address(arg1)].field_0:
                    revert with 0, 17
            return stor6[address(arg1)].field_0, 0, uint32(block.timestamp)
    if not meltDownAt:
        if stor6[address(arg1)].field_0 < 0:
            if 0 < stor6[address(arg1)].field_0:
                revert with 0, 17
        if 0 < stor6[address(arg1)].field_0:
            return 0, stor6[address(arg1)].field_0, uint32(block.timestamp)
        return 0, 0, uint32(block.timestamp)
    if not stor6[address(arg1)].field_0:
        if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0:
            if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0:
                revert with 0, 17
        if 0 < stor6[address(arg1)].field_0:
            return 0, stor6[address(arg1)].field_0, uint32(block.timestamp)
        return 0, 0, uint32(block.timestamp)
    if meltDownAt < stor6[address(arg1)].field_224:
        revert with 0, 17
    if arg2 < stor6[address(arg1)].field_224:
        revert with 0, 17
    if stor6[address(arg1)].field_0 and uint32(arg2 - stor6[address(arg1)].field_224) > -1 / stor6[address(arg1)].field_0:
        revert with 0, 17
    if not uint32(meltDownAt - stor6[address(arg1)].field_224):
        revert with 0, 18
    if not stor6[address(arg1)].field_0 * uint32(arg2 - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224):
        if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0:
            if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0:
                revert with 0, 17
        if 0 < stor6[address(arg1)].field_0:
            return 0, stor6[address(arg1)].field_0, uint32(block.timestamp)
        return 0, 0, uint32(block.timestamp)
    if 0 > !(stor6[address(arg1)].field_0 * uint32(arg2 - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)):
        revert with 0, 17
    if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0 * uint32(arg2 - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224):
        revert with 0, 17
    if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0 - (stor6[address(arg1)].field_0 * uint32(arg2 - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)):
        if stor6[address(arg1)].field_0 - (stor6[address(arg1)].field_0 * uint32(arg2 - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) < stor6[address(arg1)].field_0:
            revert with 0, 17
    if stor6[address(arg1)].field_0 * uint32(arg2 - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224) < stor6[address(arg1)].field_0:
        return stor6[address(arg1)].field_0 * uint32(arg2 - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224), 
               stor6[address(arg1)].field_0 - (stor6[address(arg1)].field_0 * uint32(arg2 - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)),
               uint32(block.timestamp)
    return stor6[address(arg1)].field_0 * uint32(arg2 - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224), 
           0,
           uint32(block.timestamp)
}

function claimRewardFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if rewardControllerAddress != msg.sender:
        revert with 0, '', 0
    if meltDownAt:
        if meltDownAt <= uint32(block.timestamp):
            if not stor6[address(arg1)].field_0:
                if stor6[address(arg1)].field_0 < 0:
                    if 0 < stor6[address(arg1)].field_0:
                        revert with 0, 17
                return 0, block.timestamp << 224, bool(stor6[address(arg1)].field_0)
            if 0 > !stor6[address(arg1)].field_0:
                revert with 0, 17
            stor6[address(arg1)].field_0 = 0
            if stor6[address(arg1)].field_0 < 0:
                if 0 < stor6[address(arg1)].field_0:
                    revert with 0, 17
            return stor6[address(arg1)].field_0, block.timestamp << 224, bool(stor6[address(arg1)].field_0)
    if not meltDownAt:
        if stor6[address(arg1)].field_0 < 0:
            if 0 < stor6[address(arg1)].field_0:
                revert with 0, 17
        return 0, block.timestamp << 224, bool(stor6[address(arg1)].field_0)
    if not stor6[address(arg1)].field_0:
        if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0:
            if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0:
                revert with 0, 17
        return 0, block.timestamp << 224, bool(stor6[address(arg1)].field_0)
    if meltDownAt < stor6[address(arg1)].field_224:
        revert with 0, 17
    if uint32(block.timestamp) < stor6[address(arg1)].field_224:
        revert with 0, 17
    if stor6[address(arg1)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) > -1 / stor6[address(arg1)].field_0:
        revert with 0, 17
    if not uint32(meltDownAt - stor6[address(arg1)].field_224):
        revert with 0, 18
    if not stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224):
        if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0:
            if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0:
                revert with 0, 17
        return 0, block.timestamp << 224, bool(stor6[address(arg1)].field_0)
    if 0 > !(stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)):
        revert with 0, 17
    if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224):
        revert with 0, 17
    stor6[address(arg1)].field_0 = Mask(224, 0, stor6[address(arg1)].field_0 - (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)))
    stor6[address(arg1)].field_224 = uint32(block.timestamp)
    if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0 - (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)):
        if stor6[address(arg1)].field_0 - (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) < stor6[address(arg1)].field_0:
            revert with 0, 17
    if stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224):
        return stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224), 
               block.timestamp << 224,
               bool(stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224))
    return stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224), 
           block.timestamp << 224,
           bool(stor6[address(arg1)].field_0)
}

function claimRewardWithLimitFor(address arg1, uint256 arg2, uint256 arg3, uint16 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 == arg4
    if rewardControllerAddress != msg.sender:
        revert with 0, '', 0
    if meltDownAt:
        if meltDownAt <= uint32(block.timestamp):
            if not stor6[address(arg1)].field_0:
                if stor6[address(arg1)].field_0 < 0:
                    if 0 < stor6[address(arg1)].field_0:
                        revert with 0, 17
                if 0 > !arg2:
                    revert with 0, 17
                if not arg4:
                    return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3
                if not arg2:
                    if arg3 > -1:
                        revert with 0, 17
                    return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3
                if not arg4:
                    if arg3 > -1:
                        revert with 0, 17
                    return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3
                if not arg4:
                    revert with 0, 18
                if arg2 > -5001 / arg4:
                    revert with 0, '', 0
                if arg2 and arg4 > -1 / arg2:
                    revert with 0, 17
                if arg2 * arg4 > -5001:
                    revert with 0, 17
                if arg3 > !((arg2 * arg4) + 5000 / 10000):
                    revert with 0, 17
                return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3 + ((arg2 * arg4) + 5000 / 10000)
            if 0 > !stor6[address(arg1)].field_0:
                revert with 0, 17
            stor6[address(arg1)].field_0 = 0
            if stor6[address(arg1)].field_0 < 0:
                if 0 < stor6[address(arg1)].field_0:
                    revert with 0, 17
            if stor6[address(arg1)].field_0 > !arg2:
                revert with 0, 17
            if not arg4:
                return stor6[address(arg1)].field_0 + arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3
            if not stor6[address(arg1)].field_0 + arg2:
                if arg3 > -1:
                    revert with 0, 17
                return stor6[address(arg1)].field_0 + arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3
            if not arg4:
                if arg3 > -1:
                    revert with 0, 17
                return stor6[address(arg1)].field_0 + arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3
            if not arg4:
                revert with 0, 18
            if stor6[address(arg1)].field_0 + arg2 > -5001 / arg4:
                revert with 0, '', 0
            if stor6[address(arg1)].field_0 + arg2 and arg4 > -1 / stor6[address(arg1)].field_0 + arg2:
                revert with 0, 17
            if (stor6[address(arg1)].field_0 * arg4) + (arg2 * arg4) > -5001:
                revert with 0, 17
            if arg3 > !((stor6[address(arg1)].field_0 * arg4) + (arg2 * arg4) + 5000 / 10000):
                revert with 0, 17
            return stor6[address(arg1)].field_0 + arg2, 
                   block.timestamp << 224,
                   bool(stor6[address(arg1)].field_0),
                   arg3 + ((stor6[address(arg1)].field_0 * arg4) + (arg2 * arg4) + 5000 / 10000)
    if not meltDownAt:
        if stor6[address(arg1)].field_0 < 0:
            if 0 < stor6[address(arg1)].field_0:
                revert with 0, 17
        if 0 > !arg2:
            revert with 0, 17
        if not arg4:
            return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3
        if not arg2:
            if arg3 > -1:
                revert with 0, 17
            return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3
        if not arg4:
            if arg3 > -1:
                revert with 0, 17
            return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3
        if not arg4:
            revert with 0, 18
        if arg2 > -5001 / arg4:
            revert with 0, '', 0
        if arg2 and arg4 > -1 / arg2:
            revert with 0, 17
        if arg2 * arg4 > -5001:
            revert with 0, 17
        if arg3 > !((arg2 * arg4) + 5000 / 10000):
            revert with 0, 17
        return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3 + ((arg2 * arg4) + 5000 / 10000)
    if not stor6[address(arg1)].field_0:
        if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0:
            if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0:
                revert with 0, 17
        if 0 > !arg2:
            revert with 0, 17
        if not arg4:
            return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3
        if not arg2:
            if arg3 > -1:
                revert with 0, 17
            return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3
        if not arg4:
            if arg3 > -1:
                revert with 0, 17
            return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3
        if not arg4:
            revert with 0, 18
        if arg2 > -5001 / arg4:
            revert with 0, '', 0
        if arg2 and arg4 > -1 / arg2:
            revert with 0, 17
        if arg2 * arg4 > -5001:
            revert with 0, 17
        if arg3 > !((arg2 * arg4) + 5000 / 10000):
            revert with 0, 17
        return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3 + ((arg2 * arg4) + 5000 / 10000)
    if meltDownAt < stor6[address(arg1)].field_224:
        revert with 0, 17
    if uint32(block.timestamp) < stor6[address(arg1)].field_224:
        revert with 0, 17
    if stor6[address(arg1)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) > -1 / stor6[address(arg1)].field_0:
        revert with 0, 17
    if not uint32(meltDownAt - stor6[address(arg1)].field_224):
        revert with 0, 18
    if not stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224):
        if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0:
            if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0:
                revert with 0, 17
        if 0 > !arg2:
            revert with 0, 17
        if not arg4:
            return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3
        if not arg2:
            if arg3 > -1:
                revert with 0, 17
            return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3
        if not arg4:
            if arg3 > -1:
                revert with 0, 17
            return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3
        if not arg4:
            revert with 0, 18
        if arg2 > -5001 / arg4:
            revert with 0, '', 0
        if arg2 and arg4 > -1 / arg2:
            revert with 0, 17
        if arg2 * arg4 > -5001:
            revert with 0, 17
        if arg3 > !((arg2 * arg4) + 5000 / 10000):
            revert with 0, 17
        return arg2, block.timestamp << 224, bool(stor6[address(arg1)].field_0), arg3 + ((arg2 * arg4) + 5000 / 10000)
    if 0 > !(stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)):
        revert with 0, 17
    if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224):
        revert with 0, 17
    stor6[address(arg1)].field_0 = Mask(224, 0, stor6[address(arg1)].field_0 - (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)))
    stor6[address(arg1)].field_224 = uint32(block.timestamp)
    if stor6[address(arg1)].field_0 < stor6[address(arg1)].field_0 - (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)):
        if stor6[address(arg1)].field_0 - (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) < stor6[address(arg1)].field_0:
            revert with 0, 17
    if stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224) > !arg2:
        revert with 0, 17
    if stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224):
        if not arg4:
            return (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2, 
                   block.timestamp << 224,
                   bool(stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)),
                   arg3
        if not (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2:
            if arg3 > -1:
                revert with 0, 17
            return (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2, 
                   block.timestamp << 224,
                   bool(stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)),
                   arg3
        if not arg4:
            if arg3 > -1:
                revert with 0, 17
            return (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2, 
                   block.timestamp << 224,
                   bool(stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)),
                   arg3
        if not arg4:
            revert with 0, 18
        if (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2 > -5001 / arg4:
            revert with 0, '', 0
        if (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2 and arg4 > -1 / (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2:
            revert with 0, 17
        if (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224) * arg4) + (arg2 * arg4) > -5001:
            revert with 0, 17
        if arg3 > !((stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224) * arg4) + (arg2 * arg4) + 5000 / 10000):
            revert with 0, 17
        return (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2, 
               block.timestamp << 224,
               bool(stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)),
               arg3 + ((stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224) * arg4) + (arg2 * arg4) + 5000 / 10000)
    if not arg4:
        return (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2, 
               block.timestamp << 224,
               bool(stor6[address(arg1)].field_0),
               arg3
    if not (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2:
        if arg3 > -1:
            revert with 0, 17
        return (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2, 
               block.timestamp << 224,
               bool(stor6[address(arg1)].field_0),
               arg3
    if not arg4:
        if arg3 > -1:
            revert with 0, 17
        return (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2, 
               block.timestamp << 224,
               bool(stor6[address(arg1)].field_0),
               arg3
    if not arg4:
        revert with 0, 18
    if (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2 > -5001 / arg4:
        revert with 0, '', 0
    if (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2 and arg4 > -1 / (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2:
        revert with 0, 17
    if (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224) * arg4) + (arg2 * arg4) > -5001:
        revert with 0, 17
    if arg3 > !((stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224) * arg4) + (arg2 * arg4) + 5000 / 10000):
        revert with 0, 17
    return (stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224)) + arg2, 
           block.timestamp << 224,
           bool(stor6[address(arg1)].field_0),
           arg3 + ((stor6[address(arg1)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg1)].field_224) / uint32(meltDownAt - stor6[address(arg1)].field_224) * arg4) + (arg2 * arg4) + 5000 / 10000)
}

function claimRewardByPermit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    if uint8(stor0.field_176):
        revert with 0, '', 0
    if not arg1:
        revert with 0, 'INVALID_PROVIDER'
    if not stor5[address(arg1)]:
        revert with 0, 'INVALID_PROVIDER'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(CLAIM_TYPEHASH, address(arg1), address(arg2), arg3, nonces[address(arg2)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'INVALID_SIGNATURE'
    if block.timestamp > arg4:
        revert with 0, 'INVALID_TIME'
    if 1 > !nonces[address(arg2)]:
        revert with 0, 17
    nonces[address(arg2)]++
    if arg3:
        if arg3 > attachedToRewardController:
            revert with 0, '', 0
        attachedToRewardController -= arg3
        emit RewardLimitUpdated((attachedToRewardController - arg3));
        if not meltDownAt:
            if stor7 >= 10000:
                if not meltDownAt:
                    if stor6[address(arg2)].field_0 < 0:
                        if 0 < stor6[address(arg2)].field_0:
                            revert with 0, 17
                    if stor6[address(arg2)].field_0:
                        if arg3:
                            require ext_code.size(rewardControllerAddress)
                            call rewardControllerAddress.0xb0286b18 with:
                                 gas gas_remaining wei
                                args address(arg2), arg3, block.timestamp << 224, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor6[address(arg2)].field_0:
                            if arg3:
                                require ext_code.size(rewardControllerAddress)
                                call rewardControllerAddress.0xb0286b18 with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3, block.timestamp << 224, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(rewardControllerAddress)
                            call rewardControllerAddress.0xb0286b18 with:
                                 gas gas_remaining wei
                                args address(arg2), arg3, block.timestamp << 224, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor6[address(arg2)].field_0:
                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                revert with 0, 17
                        if stor6[address(arg2)].field_0:
                            if arg3:
                                require ext_code.size(rewardControllerAddress)
                                call rewardControllerAddress.0xb0286b18 with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3, block.timestamp << 224, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor6[address(arg2)].field_0:
                                if arg3:
                                    require ext_code.size(rewardControllerAddress)
                                    call rewardControllerAddress.0xb0286b18 with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3, block.timestamp << 224, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(rewardControllerAddress)
                                call rewardControllerAddress.0xb0286b18 with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3, block.timestamp << 224, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if meltDownAt < stor6[address(arg2)].field_224:
                            revert with 0, 17
                        if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                            revert with 0, 17
                        if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                            revert with 0, 17
                        if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                            revert with 0, 18
                        if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                    revert with 0, 17
                            if stor6[address(arg2)].field_0:
                                if arg3:
                                    require ext_code.size(rewardControllerAddress)
                                    call rewardControllerAddress.0xb0286b18 with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3, block.timestamp << 224, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor6[address(arg2)].field_0:
                                    if arg3:
                                        require ext_code.size(rewardControllerAddress)
                                        call rewardControllerAddress.0xb0286b18 with:
                                             gas gas_remaining wei
                                            args address(arg2), arg3, block.timestamp << 224, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(rewardControllerAddress)
                                    call rewardControllerAddress.0xb0286b18 with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3, block.timestamp << 224, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg3 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                revert with 0, 17
                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                revert with 0, 17
                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                    revert with 0, 17
                            if stor6[address(arg2)].field_0:
                                if arg3 + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                    require ext_code.size(rewardControllerAddress)
                                    call rewardControllerAddress.0xb0286b18 with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3 + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor6[address(arg2)].field_0:
                                    if arg3 + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                        require ext_code.size(rewardControllerAddress)
                                        call rewardControllerAddress.0xb0286b18 with:
                                             gas gas_remaining wei
                                            args address(arg2), arg3 + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(rewardControllerAddress)
                                    call rewardControllerAddress.0xb0286b18 with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3 + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if not arg3:
                    if arg3 < 0:
                        revert with 0, 17
                    if not meltDownAt:
                        if not arg3:
                            if stor6[address(arg2)].field_0 < 0:
                                if 0 < stor6[address(arg2)].field_0:
                                    revert with 0, 17
                        else:
                            if stor6[address(arg2)].field_0 > !arg3:
                                revert with 0, 17
                            if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 'reward is too high'
                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                    revert with 0, 17
                        if not stor6[address(arg2)].field_0:
                            if stor6[address(arg2)].field_0:
                                require ext_code.size(rewardControllerAddress)
                                call rewardControllerAddress.0xb0286b18 with:
                                     gas gas_remaining wei
                                    args address(arg2), 0, block.timestamp << 224, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if arg3 <= 0:
                            if not stor6[address(arg2)].field_0:
                                if not arg3:
                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                            revert with 0, 17
                                else:
                                    if stor6[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'reward is too high'
                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                        if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                            revert with 0, 17
                                if not stor6[address(arg2)].field_0:
                                    if stor6[address(arg2)].field_0:
                                        require ext_code.size(rewardControllerAddress)
                                        call rewardControllerAddress.0xb0286b18 with:
                                             gas gas_remaining wei
                                            args address(arg2), 0, block.timestamp << 224, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if meltDownAt < stor6[address(arg2)].field_224:
                                    revert with 0, 17
                                if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                    revert with 0, 17
                                if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                    revert with 0, 17
                                if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                    revert with 0, 18
                                if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                    if not arg3:
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                    else:
                                        if stor6[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'reward is too high'
                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                            if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                    if not stor6[address(arg2)].field_0:
                                        if stor6[address(arg2)].field_0:
                                            require ext_code.size(rewardControllerAddress)
                                            call rewardControllerAddress.0xb0286b18 with:
                                                 gas gas_remaining wei
                                                args address(arg2), 0, block.timestamp << 224, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                        revert with 0, 17
                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                        revert with 0, 17
                                    if not arg3:
                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                    else:
                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'reward is too high'
                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                    if stor6[address(arg2)].field_0:
                                        if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            require ext_code.size(rewardControllerAddress)
                                            call rewardControllerAddress.0xb0286b18 with:
                                                 gas gas_remaining wei
                                                args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if not stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(rewardControllerAddress)
                                            call rewardControllerAddress.0xb0286b18 with:
                                                 gas gas_remaining wei
                                                args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not uint32(block.timestamp):
                                if not stor6[address(arg2)].field_0:
                                    if not arg3:
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                    else:
                                        if stor6[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'reward is too high'
                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                            if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                    if not stor6[address(arg2)].field_0:
                                        if stor6[address(arg2)].field_0:
                                            require ext_code.size(rewardControllerAddress)
                                            call rewardControllerAddress.0xb0286b18 with:
                                                 gas gas_remaining wei
                                                args address(arg2), 0, block.timestamp << 224, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if meltDownAt < stor6[address(arg2)].field_224:
                                        revert with 0, 17
                                    if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                        revert with 0, 17
                                    if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                        revert with 0, 17
                                    if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                        revert with 0, 18
                                    if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                        if not arg3:
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        else:
                                            if stor6[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'reward is too high'
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        if not stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 0, block.timestamp << 224, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            revert with 0, 17
                                        if not arg3:
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        else:
                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'reward is too high'
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        if stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if uint32(block.timestamp) >= uint32(block.timestamp):
                                    if not stor6[address(arg2)].field_0:
                                        if not arg3:
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        else:
                                            if stor6[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'reward is too high'
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        if not stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 0, block.timestamp << 224, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if meltDownAt < stor6[address(arg2)].field_224:
                                            revert with 0, 17
                                        if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                            revert with 0, 17
                                        if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            revert with 0, 18
                                        if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            if not arg3:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                    if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if not stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0, block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                revert with 0, 17
                                            if not arg3:
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if meltDownAt < uint32(block.timestamp):
                                        revert with 0, 17
                                    if uint32(block.timestamp) < uint32(block.timestamp):
                                        revert with 0, 17
                                    if arg3 and 0 > -1 / arg3:
                                        revert with 0, 17
                                    if not uint32(meltDownAt - uint32(block.timestamp)):
                                        revert with 0, 18
                                    if not 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                        if not stor6[address(arg2)].field_0:
                                            if not arg3:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                    if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if not stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0, block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if meltDownAt < stor6[address(arg2)].field_224:
                                                revert with 0, 17
                                            if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                            if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                revert with 0, 18
                                            if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                if not arg3:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                        if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if not stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0, block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    revert with 0, 17
                                                if not arg3:
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 0 > !(0 / uint32(meltDownAt - uint32(block.timestamp))):
                                            revert with 0, 17
                                        if arg3 < 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                            revert with 0, 17
                                        if not stor6[address(arg2)].field_0:
                                            if not arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 > !(arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                    if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if stor6[address(arg2)].field_0:
                                                if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not stor6[address(arg2)].field_0:
                                                    if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if meltDownAt < stor6[address(arg2)].field_224:
                                                revert with 0, 17
                                            if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                            if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                revert with 0, 18
                                            if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                if not arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 > !(arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                        if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if stor6[address(arg2)].field_0:
                                                    if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not stor6[address(arg2)].field_0:
                                                        if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 0 / uint32(meltDownAt - uint32(block.timestamp)) > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    revert with 0, 17
                                                if not arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !(arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if stor6[address(arg2)].field_0:
                                                    if (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not stor6[address(arg2)].field_0:
                                                        if (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not stor7:
                        if arg3 < 0:
                            revert with 0, 17
                        if not meltDownAt:
                            if not arg3:
                                if stor6[address(arg2)].field_0 < 0:
                                    if 0 < stor6[address(arg2)].field_0:
                                        revert with 0, 17
                            else:
                                if stor6[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'reward is too high'
                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                    if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                        revert with 0, 17
                            if not stor6[address(arg2)].field_0:
                                if stor6[address(arg2)].field_0:
                                    require ext_code.size(rewardControllerAddress)
                                    call rewardControllerAddress.0xb0286b18 with:
                                         gas gas_remaining wei
                                        args address(arg2), 0, block.timestamp << 224, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg3 <= 0:
                                if not stor6[address(arg2)].field_0:
                                    if not arg3:
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                    else:
                                        if stor6[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'reward is too high'
                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                            if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                    if not stor6[address(arg2)].field_0:
                                        if stor6[address(arg2)].field_0:
                                            require ext_code.size(rewardControllerAddress)
                                            call rewardControllerAddress.0xb0286b18 with:
                                                 gas gas_remaining wei
                                                args address(arg2), 0, block.timestamp << 224, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if meltDownAt < stor6[address(arg2)].field_224:
                                        revert with 0, 17
                                    if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                        revert with 0, 17
                                    if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                        revert with 0, 17
                                    if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                        revert with 0, 18
                                    if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                        if not arg3:
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        else:
                                            if stor6[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'reward is too high'
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        if not stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 0, block.timestamp << 224, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            revert with 0, 17
                                        if not arg3:
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        else:
                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'reward is too high'
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        if stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not uint32(block.timestamp):
                                    if not stor6[address(arg2)].field_0:
                                        if not arg3:
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        else:
                                            if stor6[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'reward is too high'
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        if not stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 0, block.timestamp << 224, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if meltDownAt < stor6[address(arg2)].field_224:
                                            revert with 0, 17
                                        if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                            revert with 0, 17
                                        if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            revert with 0, 18
                                        if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            if not arg3:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                    if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if not stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0, block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                revert with 0, 17
                                            if not arg3:
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if uint32(block.timestamp) >= uint32(block.timestamp):
                                        if not stor6[address(arg2)].field_0:
                                            if not arg3:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                    if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if not stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0, block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if meltDownAt < stor6[address(arg2)].field_224:
                                                revert with 0, 17
                                            if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                            if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                revert with 0, 18
                                            if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                if not arg3:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                        if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if not stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0, block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    revert with 0, 17
                                                if not arg3:
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if meltDownAt < uint32(block.timestamp):
                                            revert with 0, 17
                                        if uint32(block.timestamp) < uint32(block.timestamp):
                                            revert with 0, 17
                                        if arg3 and 0 > -1 / arg3:
                                            revert with 0, 17
                                        if not uint32(meltDownAt - uint32(block.timestamp)):
                                            revert with 0, 18
                                        if not 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                            if not stor6[address(arg2)].field_0:
                                                if not arg3:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                        if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if not stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0, block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if meltDownAt < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                                if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    revert with 0, 18
                                                if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    if not arg3:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 > !arg3:
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                            if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if not stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0, block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        revert with 0, 17
                                                    if not arg3:
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 > !(0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                revert with 0, 17
                                            if arg3 < 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                revert with 0, 17
                                            if not stor6[address(arg2)].field_0:
                                                if not arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 > !(arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                        if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if stor6[address(arg2)].field_0:
                                                    if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not stor6[address(arg2)].field_0:
                                                        if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if meltDownAt < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                                if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    revert with 0, 18
                                                if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    if not arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 > !(arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                            if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 0 / uint32(meltDownAt - uint32(block.timestamp)) > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        revert with 0, 17
                                                    if not arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !(arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor7:
                            revert with 0, 18
                        if arg3 > -5001 / stor7:
                            revert with 0, '', 0
                        if arg3 and stor7 > -1 / arg3:
                            revert with 0, 17
                        if arg3 * stor7 > -5001:
                            revert with 0, 17
                        if arg3 < (arg3 * stor7) + 5000 / 10000:
                            revert with 0, 17
                        if not meltDownAt:
                            if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                if stor6[address(arg2)].field_0 < 0:
                                    if 0 < stor6[address(arg2)].field_0:
                                        revert with 0, 17
                            else:
                                if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                    revert with 0, 17
                                if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'reward is too high'
                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                    if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                        revert with 0, 17
                            if stor6[address(arg2)].field_0:
                                if (arg3 * stor7) + 5000 / 10000:
                                    require ext_code.size(rewardControllerAddress)
                                    call rewardControllerAddress.0xb0286b18 with:
                                         gas gas_remaining wei
                                        args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor6[address(arg2)].field_0:
                                    if (arg3 * stor7) + 5000 / 10000:
                                        require ext_code.size(rewardControllerAddress)
                                        call rewardControllerAddress.0xb0286b18 with:
                                             gas gas_remaining wei
                                            args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(rewardControllerAddress)
                                    call rewardControllerAddress.0xb0286b18 with:
                                         gas gas_remaining wei
                                        args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg3 - ((arg3 * stor7) + 5000 / 10000) <= 0:
                                if not stor6[address(arg2)].field_0:
                                    if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                    else:
                                        if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'reward is too high'
                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                            if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                    if stor6[address(arg2)].field_0:
                                        if (arg3 * stor7) + 5000 / 10000:
                                            require ext_code.size(rewardControllerAddress)
                                            call rewardControllerAddress.0xb0286b18 with:
                                                 gas gas_remaining wei
                                                args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if not stor6[address(arg2)].field_0:
                                            if (arg3 * stor7) + 5000 / 10000:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(rewardControllerAddress)
                                            call rewardControllerAddress.0xb0286b18 with:
                                                 gas gas_remaining wei
                                                args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if meltDownAt < stor6[address(arg2)].field_224:
                                        revert with 0, 17
                                    if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                        revert with 0, 17
                                    if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                        revert with 0, 17
                                    if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                        revert with 0, 18
                                    if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                        if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        else:
                                            if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'reward is too high'
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        if stor6[address(arg2)].field_0:
                                            if (arg3 * stor7) + 5000 / 10000:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not stor6[address(arg2)].field_0:
                                                if (arg3 * stor7) + 5000 / 10000:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (arg3 * stor7) + 5000 / 10000 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            revert with 0, 17
                                        if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        else:
                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'reward is too high'
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        if stor6[address(arg2)].field_0:
                                            if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not stor6[address(arg2)].field_0:
                                                if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not uint32(block.timestamp):
                                    if not stor6[address(arg2)].field_0:
                                        if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        else:
                                            if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'reward is too high'
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        if stor6[address(arg2)].field_0:
                                            if (arg3 * stor7) + 5000 / 10000:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not stor6[address(arg2)].field_0:
                                                if (arg3 * stor7) + 5000 / 10000:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if meltDownAt < stor6[address(arg2)].field_224:
                                            revert with 0, 17
                                        if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                            revert with 0, 17
                                        if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            revert with 0, 18
                                        if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                    if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if stor6[address(arg2)].field_0:
                                                if (arg3 * stor7) + 5000 / 10000:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not stor6[address(arg2)].field_0:
                                                    if (arg3 * stor7) + 5000 / 10000:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if (arg3 * stor7) + 5000 / 10000 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                revert with 0, 17
                                            if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if stor6[address(arg2)].field_0:
                                                if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not stor6[address(arg2)].field_0:
                                                    if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if uint32(block.timestamp) >= uint32(block.timestamp):
                                        if not stor6[address(arg2)].field_0:
                                            if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                    if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if stor6[address(arg2)].field_0:
                                                if (arg3 * stor7) + 5000 / 10000:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not stor6[address(arg2)].field_0:
                                                    if (arg3 * stor7) + 5000 / 10000:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if meltDownAt < stor6[address(arg2)].field_224:
                                                revert with 0, 17
                                            if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                            if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                revert with 0, 18
                                            if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                        if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if stor6[address(arg2)].field_0:
                                                    if (arg3 * stor7) + 5000 / 10000:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not stor6[address(arg2)].field_0:
                                                        if (arg3 * stor7) + 5000 / 10000:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if (arg3 * stor7) + 5000 / 10000 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    revert with 0, 17
                                                if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if stor6[address(arg2)].field_0:
                                                    if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not stor6[address(arg2)].field_0:
                                                        if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if meltDownAt < uint32(block.timestamp):
                                            revert with 0, 17
                                        if uint32(block.timestamp) < uint32(block.timestamp):
                                            revert with 0, 17
                                        if arg3 - ((arg3 * stor7) + 5000 / 10000) and 0 > -1 / arg3 - ((arg3 * stor7) + 5000 / 10000):
                                            revert with 0, 17
                                        if not uint32(meltDownAt - uint32(block.timestamp)):
                                            revert with 0, 18
                                        if not 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                            if not stor6[address(arg2)].field_0:
                                                if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                        if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if stor6[address(arg2)].field_0:
                                                    if (arg3 * stor7) + 5000 / 10000:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not stor6[address(arg2)].field_0:
                                                        if (arg3 * stor7) + 5000 / 10000:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if meltDownAt < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                                if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    revert with 0, 18
                                                if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                            if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if (arg3 * stor7) + 5000 / 10000:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if (arg3 * stor7) + 5000 / 10000:
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if (arg3 * stor7) + 5000 / 10000 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        revert with 0, 17
                                                    if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if (arg3 * stor7) + 5000 / 10000 > !(0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                revert with 0, 17
                                            if arg3 - ((arg3 * stor7) + 5000 / 10000) < 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                revert with 0, 17
                                            if not stor6[address(arg2)].field_0:
                                                if not arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                        if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if stor6[address(arg2)].field_0:
                                                    if ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not stor6[address(arg2)].field_0:
                                                        if ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))), block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if meltDownAt < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                                if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    revert with 0, 18
                                                if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    if not arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                            if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))), block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))) > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        revert with 0, 17
                                                    if not arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !(arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
        else:
            if meltDownAt <= uint32(block.timestamp):
                if not stor6[address(arg2)].field_0:
                    if stor6[address(arg2)].field_0 < 0:
                        if 0 < stor6[address(arg2)].field_0:
                            revert with 0, 17
                    if stor6[address(arg2)].field_0:
                        if arg3:
                            require ext_code.size(rewardControllerAddress)
                            call rewardControllerAddress.0xb0286b18 with:
                                 gas gas_remaining wei
                                args address(arg2), arg3, block.timestamp << 224, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor6[address(arg2)].field_0:
                            if arg3:
                                require ext_code.size(rewardControllerAddress)
                                call rewardControllerAddress.0xb0286b18 with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3, block.timestamp << 224, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(rewardControllerAddress)
                            call rewardControllerAddress.0xb0286b18 with:
                                 gas gas_remaining wei
                                args address(arg2), arg3, block.timestamp << 224, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if arg3 > !stor6[address(arg2)].field_0:
                        revert with 0, 17
                    stor6[address(arg2)].field_0 = 0
                    if stor6[address(arg2)].field_0 < 0:
                        if 0 < stor6[address(arg2)].field_0:
                            revert with 0, 17
                    if stor6[address(arg2)].field_0:
                        if arg3 + stor6[address(arg2)].field_0:
                            require ext_code.size(rewardControllerAddress)
                            call rewardControllerAddress.0xb0286b18 with:
                                 gas gas_remaining wei
                                args address(arg2), arg3 + stor6[address(arg2)].field_0, block.timestamp << 224, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor6[address(arg2)].field_0:
                            if arg3 + stor6[address(arg2)].field_0:
                                require ext_code.size(rewardControllerAddress)
                                call rewardControllerAddress.0xb0286b18 with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3 + stor6[address(arg2)].field_0, block.timestamp << 224, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(rewardControllerAddress)
                            call rewardControllerAddress.0xb0286b18 with:
                                 gas gas_remaining wei
                                args address(arg2), arg3 + stor6[address(arg2)].field_0, block.timestamp << 224, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if stor7 >= 10000:
                    if not meltDownAt:
                        if stor6[address(arg2)].field_0 < 0:
                            if 0 < stor6[address(arg2)].field_0:
                                revert with 0, 17
                        if stor6[address(arg2)].field_0:
                            if arg3:
                                require ext_code.size(rewardControllerAddress)
                                call rewardControllerAddress.0xb0286b18 with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3, block.timestamp << 224, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor6[address(arg2)].field_0:
                                if arg3:
                                    require ext_code.size(rewardControllerAddress)
                                    call rewardControllerAddress.0xb0286b18 with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3, block.timestamp << 224, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require ext_code.size(rewardControllerAddress)
                                call rewardControllerAddress.0xb0286b18 with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3, block.timestamp << 224, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor6[address(arg2)].field_0:
                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                    revert with 0, 17
                            if stor6[address(arg2)].field_0:
                                if arg3:
                                    require ext_code.size(rewardControllerAddress)
                                    call rewardControllerAddress.0xb0286b18 with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3, block.timestamp << 224, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not stor6[address(arg2)].field_0:
                                    if arg3:
                                        require ext_code.size(rewardControllerAddress)
                                        call rewardControllerAddress.0xb0286b18 with:
                                             gas gas_remaining wei
                                            args address(arg2), arg3, block.timestamp << 224, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(rewardControllerAddress)
                                    call rewardControllerAddress.0xb0286b18 with:
                                         gas gas_remaining wei
                                        args address(arg2), arg3, block.timestamp << 224, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if meltDownAt < stor6[address(arg2)].field_224:
                                revert with 0, 17
                            if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                revert with 0, 17
                            if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                revert with 0, 17
                            if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                revert with 0, 18
                            if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                        revert with 0, 17
                                if stor6[address(arg2)].field_0:
                                    if arg3:
                                        require ext_code.size(rewardControllerAddress)
                                        call rewardControllerAddress.0xb0286b18 with:
                                             gas gas_remaining wei
                                            args address(arg2), arg3, block.timestamp << 224, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not stor6[address(arg2)].field_0:
                                        if arg3:
                                            require ext_code.size(rewardControllerAddress)
                                            call rewardControllerAddress.0xb0286b18 with:
                                                 gas gas_remaining wei
                                                args address(arg2), arg3, block.timestamp << 224, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(rewardControllerAddress)
                                        call rewardControllerAddress.0xb0286b18 with:
                                             gas gas_remaining wei
                                            args address(arg2), arg3, block.timestamp << 224, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if arg3 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                    revert with 0, 17
                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                    revert with 0, 17
                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                        revert with 0, 17
                                if stor6[address(arg2)].field_0:
                                    if arg3 + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                        require ext_code.size(rewardControllerAddress)
                                        call rewardControllerAddress.0xb0286b18 with:
                                             gas gas_remaining wei
                                            args address(arg2), arg3 + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not stor6[address(arg2)].field_0:
                                        if arg3 + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                            require ext_code.size(rewardControllerAddress)
                                            call rewardControllerAddress.0xb0286b18 with:
                                                 gas gas_remaining wei
                                                args address(arg2), arg3 + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(rewardControllerAddress)
                                        call rewardControllerAddress.0xb0286b18 with:
                                             gas gas_remaining wei
                                            args address(arg2), arg3 + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not arg3:
                        if arg3 < 0:
                            revert with 0, 17
                        if not meltDownAt:
                            if not arg3:
                                if stor6[address(arg2)].field_0 < 0:
                                    if 0 < stor6[address(arg2)].field_0:
                                        revert with 0, 17
                            else:
                                if stor6[address(arg2)].field_0 > !arg3:
                                    revert with 0, 17
                                if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 'reward is too high'
                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                    if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                        revert with 0, 17
                            if not stor6[address(arg2)].field_0:
                                if stor6[address(arg2)].field_0:
                                    require ext_code.size(rewardControllerAddress)
                                    call rewardControllerAddress.0xb0286b18 with:
                                         gas gas_remaining wei
                                        args address(arg2), 0, block.timestamp << 224, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg3 <= 0:
                                if not stor6[address(arg2)].field_0:
                                    if not arg3:
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                    else:
                                        if stor6[address(arg2)].field_0 > !arg3:
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 'reward is too high'
                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                            if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                    if not stor6[address(arg2)].field_0:
                                        if stor6[address(arg2)].field_0:
                                            require ext_code.size(rewardControllerAddress)
                                            call rewardControllerAddress.0xb0286b18 with:
                                                 gas gas_remaining wei
                                                args address(arg2), 0, block.timestamp << 224, 1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if meltDownAt < stor6[address(arg2)].field_224:
                                        revert with 0, 17
                                    if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                        revert with 0, 17
                                    if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                        revert with 0, 17
                                    if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                        revert with 0, 18
                                    if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                        if not arg3:
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        else:
                                            if stor6[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'reward is too high'
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        if not stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 0, block.timestamp << 224, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            revert with 0, 17
                                        if not arg3:
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        else:
                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'reward is too high'
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        if stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if not uint32(block.timestamp):
                                    if not stor6[address(arg2)].field_0:
                                        if not arg3:
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        else:
                                            if stor6[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'reward is too high'
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        if not stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 0, block.timestamp << 224, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if meltDownAt < stor6[address(arg2)].field_224:
                                            revert with 0, 17
                                        if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                            revert with 0, 17
                                        if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            revert with 0, 18
                                        if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            if not arg3:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                    if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if not stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0, block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                revert with 0, 17
                                            if not arg3:
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if uint32(block.timestamp) >= uint32(block.timestamp):
                                        if not stor6[address(arg2)].field_0:
                                            if not arg3:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                    if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if not stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0, block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if meltDownAt < stor6[address(arg2)].field_224:
                                                revert with 0, 17
                                            if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                            if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                revert with 0, 18
                                            if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                if not arg3:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                        if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if not stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0, block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    revert with 0, 17
                                                if not arg3:
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if meltDownAt < uint32(block.timestamp):
                                            revert with 0, 17
                                        if uint32(block.timestamp) < uint32(block.timestamp):
                                            revert with 0, 17
                                        if arg3 and 0 > -1 / arg3:
                                            revert with 0, 17
                                        if not uint32(meltDownAt - uint32(block.timestamp)):
                                            revert with 0, 18
                                        if not 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                            if not stor6[address(arg2)].field_0:
                                                if not arg3:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                        if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if not stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0, block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if meltDownAt < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                                if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    revert with 0, 18
                                                if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    if not arg3:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 > !arg3:
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                            if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if not stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0, block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        revert with 0, 17
                                                    if not arg3:
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 > !(0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                revert with 0, 17
                                            if arg3 < 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                revert with 0, 17
                                            if not stor6[address(arg2)].field_0:
                                                if not arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 > !(arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                        if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if stor6[address(arg2)].field_0:
                                                    if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not stor6[address(arg2)].field_0:
                                                        if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if meltDownAt < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                                if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    revert with 0, 18
                                                if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    if not arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 > !(arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                            if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 0 / uint32(meltDownAt - uint32(block.timestamp)) > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        revert with 0, 17
                                                    if not arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !(arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not stor7:
                            if arg3 < 0:
                                revert with 0, 17
                            if not meltDownAt:
                                if not arg3:
                                    if stor6[address(arg2)].field_0 < 0:
                                        if 0 < stor6[address(arg2)].field_0:
                                            revert with 0, 17
                                else:
                                    if stor6[address(arg2)].field_0 > !arg3:
                                        revert with 0, 17
                                    if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'reward is too high'
                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                        if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                            revert with 0, 17
                                if not stor6[address(arg2)].field_0:
                                    if stor6[address(arg2)].field_0:
                                        require ext_code.size(rewardControllerAddress)
                                        call rewardControllerAddress.0xb0286b18 with:
                                             gas gas_remaining wei
                                            args address(arg2), 0, block.timestamp << 224, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if arg3 <= 0:
                                    if not stor6[address(arg2)].field_0:
                                        if not arg3:
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        else:
                                            if stor6[address(arg2)].field_0 > !arg3:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'reward is too high'
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        if not stor6[address(arg2)].field_0:
                                            if stor6[address(arg2)].field_0:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 0, block.timestamp << 224, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if meltDownAt < stor6[address(arg2)].field_224:
                                            revert with 0, 17
                                        if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                            revert with 0, 17
                                        if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            revert with 0, 18
                                        if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            if not arg3:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                    if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if not stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0, block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                revert with 0, 17
                                            if not arg3:
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not uint32(block.timestamp):
                                        if not stor6[address(arg2)].field_0:
                                            if not arg3:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 > !arg3:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                    if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if not stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0, block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if meltDownAt < stor6[address(arg2)].field_224:
                                                revert with 0, 17
                                            if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                            if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                revert with 0, 18
                                            if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                if not arg3:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                        if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if not stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0, block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    revert with 0, 17
                                                if not arg3:
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint32(block.timestamp) >= uint32(block.timestamp):
                                            if not stor6[address(arg2)].field_0:
                                                if not arg3:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 > !arg3:
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                        if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if not stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0, block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if meltDownAt < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                                if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    revert with 0, 18
                                                if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    if not arg3:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 > !arg3:
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                            if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if not stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0, block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        revert with 0, 17
                                                    if not arg3:
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if meltDownAt < uint32(block.timestamp):
                                                revert with 0, 17
                                            if uint32(block.timestamp) < uint32(block.timestamp):
                                                revert with 0, 17
                                            if arg3 and 0 > -1 / arg3:
                                                revert with 0, 17
                                            if not uint32(meltDownAt - uint32(block.timestamp)):
                                                revert with 0, 18
                                            if not 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                if not stor6[address(arg2)].field_0:
                                                    if not arg3:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 > !arg3:
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                            if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if not stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0, block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if meltDownAt < stor6[address(arg2)].field_224:
                                                        revert with 0, 17
                                                    if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                                    if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        revert with 0, 18
                                                    if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        if not arg3:
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        else:
                                                            if stor6[address(arg2)].field_0 > !arg3:
                                                                revert with 0, 17
                                                            if stor6[address(arg2)].field_0 + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 'reward is too high'
                                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3)
                                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3:
                                                                if stor6[address(arg2)].field_0 + arg3 < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        if not stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0:
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), 0, block.timestamp << 224, 1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if 0 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                            revert with 0, 17
                                                        if not arg3:
                                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        else:
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !arg3:
                                                                revert with 0, 17
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 'reward is too high'
                                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3)
                                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3:
                                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        if stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not stor6[address(arg2)].field_0:
                                                                if stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                                    require ext_code.size(rewardControllerAddress)
                                                                    call rewardControllerAddress.0xb0286b18 with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224), block.timestamp << 224, 1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 0 > !(0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                    revert with 0, 17
                                                if arg3 < 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                    revert with 0, 17
                                                if not stor6[address(arg2)].field_0:
                                                    if not arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 > !(arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                            if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if meltDownAt < stor6[address(arg2)].field_224:
                                                        revert with 0, 17
                                                    if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                                    if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        revert with 0, 18
                                                    if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        if not arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        else:
                                                            if stor6[address(arg2)].field_0 > !(arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                                revert with 0, 17
                                                            if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 'reward is too high'
                                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                                if stor6[address(arg2)].field_0 + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        if stor6[address(arg2)].field_0:
                                                            if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not stor6[address(arg2)].field_0:
                                                                if 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                                    require ext_code.size(rewardControllerAddress)
                                                                    call rewardControllerAddress.0xb0286b18 with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), 0 / uint32(meltDownAt - uint32(block.timestamp)), block.timestamp << 224, 1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if 0 / uint32(meltDownAt - uint32(block.timestamp)) > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                            revert with 0, 17
                                                        if not arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        else:
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !(arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                                revert with 0, 17
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 'reward is too high'
                                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        if stor6[address(arg2)].field_0:
                                                            if (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not stor6[address(arg2)].field_0:
                                                                if (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                                    require ext_code.size(rewardControllerAddress)
                                                                    call rewardControllerAddress.0xb0286b18 with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not stor7:
                                revert with 0, 18
                            if arg3 > -5001 / stor7:
                                revert with 0, '', 0
                            if arg3 and stor7 > -1 / arg3:
                                revert with 0, 17
                            if arg3 * stor7 > -5001:
                                revert with 0, 17
                            if arg3 < (arg3 * stor7) + 5000 / 10000:
                                revert with 0, 17
                            if not meltDownAt:
                                if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                    if stor6[address(arg2)].field_0 < 0:
                                        if 0 < stor6[address(arg2)].field_0:
                                            revert with 0, 17
                                else:
                                    if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                        revert with 0, 17
                                    if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 'reward is too high'
                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                        if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                            revert with 0, 17
                                if stor6[address(arg2)].field_0:
                                    if (arg3 * stor7) + 5000 / 10000:
                                        require ext_code.size(rewardControllerAddress)
                                        call rewardControllerAddress.0xb0286b18 with:
                                             gas gas_remaining wei
                                            args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not stor6[address(arg2)].field_0:
                                        if (arg3 * stor7) + 5000 / 10000:
                                            require ext_code.size(rewardControllerAddress)
                                            call rewardControllerAddress.0xb0286b18 with:
                                                 gas gas_remaining wei
                                                args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(rewardControllerAddress)
                                        call rewardControllerAddress.0xb0286b18 with:
                                             gas gas_remaining wei
                                            args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if arg3 - ((arg3 * stor7) + 5000 / 10000) <= 0:
                                    if not stor6[address(arg2)].field_0:
                                        if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        else:
                                            if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 0, 'reward is too high'
                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                        if stor6[address(arg2)].field_0:
                                            if (arg3 * stor7) + 5000 / 10000:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if not stor6[address(arg2)].field_0:
                                                if (arg3 * stor7) + 5000 / 10000:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(rewardControllerAddress)
                                                call rewardControllerAddress.0xb0286b18 with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if meltDownAt < stor6[address(arg2)].field_224:
                                            revert with 0, 17
                                        if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                            revert with 0, 17
                                        if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                            revert with 0, 17
                                        if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            revert with 0, 18
                                        if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                            if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                    if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if stor6[address(arg2)].field_0:
                                                if (arg3 * stor7) + 5000 / 10000:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not stor6[address(arg2)].field_0:
                                                    if (arg3 * stor7) + 5000 / 10000:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if (arg3 * stor7) + 5000 / 10000 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                revert with 0, 17
                                            if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if stor6[address(arg2)].field_0:
                                                if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not stor6[address(arg2)].field_0:
                                                    if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if not uint32(block.timestamp):
                                        if not stor6[address(arg2)].field_0:
                                            if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            else:
                                                if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                    revert with 0, 'reward is too high'
                                                stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                    if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                            if stor6[address(arg2)].field_0:
                                                if (arg3 * stor7) + 5000 / 10000:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if not stor6[address(arg2)].field_0:
                                                    if (arg3 * stor7) + 5000 / 10000:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(rewardControllerAddress)
                                                    call rewardControllerAddress.0xb0286b18 with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if meltDownAt < stor6[address(arg2)].field_224:
                                                revert with 0, 17
                                            if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                revert with 0, 17
                                            if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                revert with 0, 17
                                            if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                revert with 0, 18
                                            if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                        if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if stor6[address(arg2)].field_0:
                                                    if (arg3 * stor7) + 5000 / 10000:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not stor6[address(arg2)].field_0:
                                                        if (arg3 * stor7) + 5000 / 10000:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if (arg3 * stor7) + 5000 / 10000 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    revert with 0, 17
                                                if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if stor6[address(arg2)].field_0:
                                                    if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not stor6[address(arg2)].field_0:
                                                        if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if uint32(block.timestamp) >= uint32(block.timestamp):
                                            if not stor6[address(arg2)].field_0:
                                                if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                else:
                                                    if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                        revert with 0, 'reward is too high'
                                                    stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                    stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                        if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                            revert with 0, 17
                                                if stor6[address(arg2)].field_0:
                                                    if (arg3 * stor7) + 5000 / 10000:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if not stor6[address(arg2)].field_0:
                                                        if (arg3 * stor7) + 5000 / 10000:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(rewardControllerAddress)
                                                        call rewardControllerAddress.0xb0286b18 with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if meltDownAt < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                    revert with 0, 17
                                                if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                    revert with 0, 17
                                                if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    revert with 0, 18
                                                if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                    if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                            if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if (arg3 * stor7) + 5000 / 10000:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if (arg3 * stor7) + 5000 / 10000:
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if (arg3 * stor7) + 5000 / 10000 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        revert with 0, 17
                                                    if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if meltDownAt < uint32(block.timestamp):
                                                revert with 0, 17
                                            if uint32(block.timestamp) < uint32(block.timestamp):
                                                revert with 0, 17
                                            if arg3 - ((arg3 * stor7) + 5000 / 10000) and 0 > -1 / arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                revert with 0, 17
                                            if not uint32(meltDownAt - uint32(block.timestamp)):
                                                revert with 0, 18
                                            if not 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                if not stor6[address(arg2)].field_0:
                                                    if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                            if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if (arg3 * stor7) + 5000 / 10000:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if (arg3 * stor7) + 5000 / 10000:
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if meltDownAt < stor6[address(arg2)].field_224:
                                                        revert with 0, 17
                                                    if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                                    if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        revert with 0, 18
                                                    if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        else:
                                                            if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                                revert with 0, 17
                                                            if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 'reward is too high'
                                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                                if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        if stor6[address(arg2)].field_0:
                                                            if (arg3 * stor7) + 5000 / 10000:
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not stor6[address(arg2)].field_0:
                                                                if (arg3 * stor7) + 5000 / 10000:
                                                                    require ext_code.size(rewardControllerAddress)
                                                                    call rewardControllerAddress.0xb0286b18 with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), (arg3 * stor7) + 5000 / 10000, block.timestamp << 224, 1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if (arg3 * stor7) + 5000 / 10000 > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                            revert with 0, 17
                                                        if not arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        else:
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !(arg3 - ((arg3 * stor7) + 5000 / 10000)):
                                                                revert with 0, 17
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 'reward is too high'
                                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000))
                                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000):
                                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        if stor6[address(arg2)].field_0:
                                                            if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not stor6[address(arg2)].field_0:
                                                                if ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                                    require ext_code.size(rewardControllerAddress)
                                                                    call rewardControllerAddress.0xb0286b18 with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if (arg3 * stor7) + 5000 / 10000 > !(0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                    revert with 0, 17
                                                if arg3 - ((arg3 * stor7) + 5000 / 10000) < 0 / uint32(meltDownAt - uint32(block.timestamp)):
                                                    revert with 0, 17
                                                if not stor6[address(arg2)].field_0:
                                                    if not arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    else:
                                                        if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                            revert with 0, 'reward is too high'
                                                        stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                        stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                            if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                                revert with 0, 17
                                                    if stor6[address(arg2)].field_0:
                                                        if ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))), block.timestamp << 224, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if not stor6[address(arg2)].field_0:
                                                            if ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(rewardControllerAddress)
                                                            call rewardControllerAddress.0xb0286b18 with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))), block.timestamp << 224, 1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if meltDownAt < stor6[address(arg2)].field_224:
                                                        revert with 0, 17
                                                    if uint32(block.timestamp) < stor6[address(arg2)].field_224:
                                                        revert with 0, 17
                                                    if stor6[address(arg2)].field_0 and uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) > -1 / stor6[address(arg2)].field_0:
                                                        revert with 0, 17
                                                    if not uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        revert with 0, 18
                                                    if not stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                        if not arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        else:
                                                            if stor6[address(arg2)].field_0 > !(arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                                revert with 0, 17
                                                            if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 'reward is too high'
                                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                                if stor6[address(arg2)].field_0 + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        if stor6[address(arg2)].field_0:
                                                            if ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not stor6[address(arg2)].field_0:
                                                                if ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                                    require ext_code.size(rewardControllerAddress)
                                                                    call rewardControllerAddress.0xb0286b18 with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))), block.timestamp << 224, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))), block.timestamp << 224, 1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))) > !(stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                            revert with 0, 17
                                                        if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224):
                                                            revert with 0, 17
                                                        if not arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)))
                                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        else:
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) > !(arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp)))):
                                                                revert with 0, 17
                                                            if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))) > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                                revert with 0, 'reward is too high'
                                                            stor6[address(arg2)].field_0 = Mask(224, 0, stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))))
                                                            stor6[address(arg2)].field_224 = uint32(block.timestamp)
                                                            if stor6[address(arg2)].field_0 < stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))):
                                                                if stor6[address(arg2)].field_0 - (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)) + arg3 - ((arg3 * stor7) + 5000 / 10000) - (0 / uint32(meltDownAt - uint32(block.timestamp))) < stor6[address(arg2)].field_0:
                                                                    revert with 0, 17
                                                        if stor6[address(arg2)].field_0:
                                                            if ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            if not stor6[address(arg2)].field_0:
                                                                if ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)):
                                                                    require ext_code.size(rewardControllerAddress)
                                                                    call rewardControllerAddress.0xb0286b18 with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(rewardControllerAddress)
                                                                call rewardControllerAddress.0xb0286b18 with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ((arg3 * stor7) + 5000 / 10000) + (0 / uint32(meltDownAt - uint32(block.timestamp))) + (stor6[address(arg2)].field_0 * uint32(uint32(block.timestamp) - stor6[address(arg2)].field_224) / uint32(meltDownAt - stor6[address(arg2)].field_224)), block.timestamp << 224, 1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
    emit RewardClaimedByPermit(arg3, nonces[address(arg2)], arg1, arg2);
}



}
