contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of struct stor151;
array of struct stor152;
uint8 decimals;
uint256 _totalSupply;
mapping of uint256 allowance;
address vaultAddress;
mapping of uint256 stor157;
uint256 rebasingCredits;
uint256 rebasingCreditsPerToken;
uint256 nonRebasingSupply;
mapping of uint256 nonRebasingCreditsPerToken;
mapping of uint8 rebaseState;
mapping of uint256 sub_95ef84b9;
address stor1973;
uint256 stor1973;
address governorAddress;
uint256 storEFFE;
uint256 storFE21;

function rebasingCredits() payable {
    return rebasingCredits
}

function governor() payable {
    return address(governorAddress)
}

function totalSupply() payable {
    return _totalSupply
}

function decimals() payable {
    return decimals
}

function _totalSupply() payable {
    return _totalSupply
}

function vaultAddress() payable {
    return vaultAddress
}

function rebaseState(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if rebaseState[arg1] >= 3:
        revert with 0, 33
    return rebaseState[arg1]
}

function nonRebasingCreditsPerToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonRebasingCreditsPerToken[arg1]
}

function rebasingCreditsPerToken() payable {
    return rebasingCreditsPerToken
}

function sub_95ef84b9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_95ef84b9[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function nonRebasingSupply() payable {
    return nonRebasingSupply
}

function _fallback() payable {
    revert
}

function isGovernor() payable {
    return (msg.sender == address(governorAddress))
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function creditsBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not nonRebasingCreditsPerToken[address(arg1)]:
        return stor157[address(arg1)], rebasingCreditsPerToken
    return stor157[address(arg1)], nonRebasingCreditsPerToken[address(arg1)]
}

function transferGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    uint256(stor1973) = arg1
    emit PendingGovernorshipTransfer(address(governorAddress), arg1);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function claimGovernance() payable {
    if address(stor1973) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the pending Governor can complete the claim'
    if not msg.sender:
        revert with 0, 'New Governor is address(0)'
    emit GovernorshipTransferred(address(governorAddress), msg.sender);
    uint256(storEFFE) = msg.sender
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        if allowance[msg.sender][address(arg1)] < arg2:
            revert with 0, 17
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor157[address(arg1)]:
        return 0
    if stor157[address(arg1)] and 10^18 > -1 / stor157[address(arg1)]:
        revert with 0, 17
    if not nonRebasingCreditsPerToken[address(arg1)]:
        if not rebasingCreditsPerToken:
            revert with 0, 18
        return (10^18 * stor157[address(arg1)] / rebasingCreditsPerToken)
    if not nonRebasingCreditsPerToken[address(arg1)]:
        revert with 0, 18
    return (10^18 * stor157[address(arg1)] / nonRebasingCreditsPerToken[address(arg1)])
}

function changeSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if vaultAddress != msg.sender:
        revert with 0, 'Caller is not the Vault'
    if storFE21 == 2:
        revert with 0, 'Reentrant call'
    storFE21 = 2
    if _totalSupply <= 0:
        revert with 0, 'Cannot increase 0 supply'
    if _totalSupply == arg1:
        emit TotalSupplyUpdated(_totalSupply, rebasingCredits, rebasingCreditsPerToken);
    else:
        if arg1 > test266151307():
            _totalSupply = test266151307()
            if test266151307() < nonRebasingSupply:
                revert with 0, 17
            if rebasingCredits and 10^18 > -1 / rebasingCredits:
                revert with 0, 17
            if not -nonRebasingSupply + test266151307():
                revert with 0, 18
            rebasingCreditsPerToken = 10^18 * rebasingCredits / -nonRebasingSupply + test266151307()
            if not 10^18 * rebasingCredits / -nonRebasingSupply + test266151307():
                revert with 0, 'Invalid change in supply'
        else:
            _totalSupply = arg1
            if arg1 < nonRebasingSupply:
                revert with 0, 17
            if rebasingCredits and 10^18 > -1 / rebasingCredits:
                revert with 0, 17
            if not arg1 - nonRebasingSupply:
                revert with 0, 18
            rebasingCreditsPerToken = 10^18 * rebasingCredits / arg1 - nonRebasingSupply
            if not 10^18 * rebasingCredits / arg1 - nonRebasingSupply:
                revert with 0, 'Invalid change in supply'
        if rebasingCredits and 10^18 > -1 / rebasingCredits:
            revert with 0, 17
        if not rebasingCreditsPerToken:
            revert with 0, 18
        if 10^18 * rebasingCredits / rebasingCreditsPerToken > !nonRebasingSupply:
            revert with 0, 17
        _totalSupply = (10^18 * rebasingCredits / rebasingCreditsPerToken) + nonRebasingSupply
        emit TotalSupplyUpdated((10^18 * rebasingCredits / rebasingCreditsPerToken) + nonRebasingSupply, rebasingCredits, rebasingCreditsPerToken);
    storFE21 = 1
}

function initialize(string arg1, string arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if bool(stor151.length):
        if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor151[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor151.length = 0
            idx = 0
            while (uint255(stor151.length) * 0.5) + 31 / 32 > idx:
                stor151[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor151.length) == stor151.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor151[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor151.length = 0
            idx = 0
            while stor151.length.field_1 + 31 / 32 > idx:
                stor151[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor152.length):
        if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor152[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor152.length = 0
            idx = 0
            while (uint255(stor152.length) * 0.5) + 31 / 32 > idx:
                stor152[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor152.length) == stor152.length.field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor152[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor152.length = 0
            idx = 0
            while stor152.length.field_1 + 31 / 32 > idx:
                stor152[idx].field_0 = 0
                idx = idx + 1
                continue 
    decimals = 18
    rebasingCreditsPerToken = 10^18
    vaultAddress = arg3
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function rebaseOptOut() payable {
    if storFE21 == 2:
        revert with 0, 'Reentrant call'
    storFE21 = 2
    if ext_code.size(msg.sender):
        if rebaseState[address(msg.sender)] > 2:
            revert with 0, 33
        if not rebaseState[address(msg.sender)]:
            if not nonRebasingCreditsPerToken[address(msg.sender)]:
                if not stor157[address(msg.sender)]:
                    nonRebasingCreditsPerToken[address(msg.sender)] = 1000000000 * 10^18
                else:
                    nonRebasingCreditsPerToken[address(msg.sender)] = rebasingCreditsPerToken
                    if not stor157[address(msg.sender)]:
                        if nonRebasingSupply > -1:
                            revert with 0, 17
                    else:
                        if stor157[address(msg.sender)] and 10^18 > -1 / stor157[address(msg.sender)]:
                            revert with 0, 17
                        if not nonRebasingCreditsPerToken[address(msg.sender)]:
                            if not rebasingCreditsPerToken:
                                revert with 0, 18
                            if nonRebasingSupply > !(10^18 * stor157[address(msg.sender)] / rebasingCreditsPerToken):
                                revert with 0, 17
                            nonRebasingSupply += 10^18 * stor157[address(msg.sender)] / rebasingCreditsPerToken
                        else:
                            if not nonRebasingCreditsPerToken[address(msg.sender)]:
                                revert with 0, 18
                            if nonRebasingSupply > !(10^18 * stor157[address(msg.sender)] / nonRebasingCreditsPerToken[address(msg.sender)]):
                                revert with 0, 17
                            nonRebasingSupply += 10^18 * stor157[address(msg.sender)] / nonRebasingCreditsPerToken[address(msg.sender)]
                    if rebasingCredits < stor157[address(msg.sender)]:
                        revert with 0, 17
                    rebasingCredits -= stor157[address(msg.sender)]
    if nonRebasingCreditsPerToken[address(msg.sender)]:
        revert with 0, 'Account has not opted in'
    if not stor157[address(msg.sender)]:
        if nonRebasingSupply > -1:
            revert with 0, 17
    else:
        if stor157[address(msg.sender)] and 10^18 > -1 / stor157[address(msg.sender)]:
            revert with 0, 17
        if not nonRebasingCreditsPerToken[address(msg.sender)]:
            if not rebasingCreditsPerToken:
                revert with 0, 18
            if nonRebasingSupply > !(10^18 * stor157[address(msg.sender)] / rebasingCreditsPerToken):
                revert with 0, 17
            nonRebasingSupply += 10^18 * stor157[address(msg.sender)] / rebasingCreditsPerToken
        else:
            if not nonRebasingCreditsPerToken[address(msg.sender)]:
                revert with 0, 18
            if nonRebasingSupply > !(10^18 * stor157[address(msg.sender)] / nonRebasingCreditsPerToken[address(msg.sender)]):
                revert with 0, 17
            nonRebasingSupply += 10^18 * stor157[address(msg.sender)] / nonRebasingCreditsPerToken[address(msg.sender)]
    nonRebasingCreditsPerToken[msg.sender] = rebasingCreditsPerToken
    if rebasingCredits < stor157[msg.sender]:
        revert with 0, 17
    rebasingCredits -= stor157[msg.sender]
    rebaseState[msg.sender] = 1
    storFE21 = 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if vaultAddress != msg.sender:
        revert with 0, 'Caller is not the Vault'
    if storFE21 == 2:
        revert with 0, 'Reentrant call'
    storFE21 = 2
    if not arg1:
        revert with 0, 'Mint to the zero address'
    if ext_code.size(arg1):
        if rebaseState[address(arg1)] > 2:
            revert with 0, 33
        if not rebaseState[address(arg1)]:
            if not nonRebasingCreditsPerToken[address(arg1)]:
                if not stor157[address(arg1)]:
                    nonRebasingCreditsPerToken[address(arg1)] = 1000000000 * 10^18
                else:
                    nonRebasingCreditsPerToken[address(arg1)] = rebasingCreditsPerToken
                    if not stor157[address(arg1)]:
                        if nonRebasingSupply > -1:
                            revert with 0, 17
                    else:
                        if stor157[address(arg1)] and 10^18 > -1 / stor157[address(arg1)]:
                            revert with 0, 17
                        if not nonRebasingCreditsPerToken[address(arg1)]:
                            if not rebasingCreditsPerToken:
                                revert with 0, 18
                            if nonRebasingSupply > !(10^18 * stor157[address(arg1)] / rebasingCreditsPerToken):
                                revert with 0, 17
                            nonRebasingSupply += 10^18 * stor157[address(arg1)] / rebasingCreditsPerToken
                        else:
                            if not nonRebasingCreditsPerToken[address(arg1)]:
                                revert with 0, 18
                            if nonRebasingSupply > !(10^18 * stor157[address(arg1)] / nonRebasingCreditsPerToken[address(arg1)]):
                                revert with 0, 17
                            nonRebasingSupply += 10^18 * stor157[address(arg1)] / nonRebasingCreditsPerToken[address(arg1)]
                    if rebasingCredits < stor157[address(arg1)]:
                        revert with 0, 17
                    rebasingCredits -= stor157[address(arg1)]
    if not nonRebasingCreditsPerToken[address(arg1)]:
        if arg2 and rebasingCreditsPerToken > -1 / arg2:
            revert with 0, 17
        if stor157[address(arg1)] > !(arg2 * rebasingCreditsPerToken / 10^18):
            revert with 0, 17
        stor157[address(arg1)] += arg2 * rebasingCreditsPerToken / 10^18
        if not nonRebasingCreditsPerToken[address(arg1)]:
            if rebasingCredits > !(arg2 * rebasingCreditsPerToken / 10^18):
                revert with 0, 17
            rebasingCredits += arg2 * rebasingCreditsPerToken / 10^18
        else:
            if nonRebasingSupply > !arg2:
                revert with 0, 17
            nonRebasingSupply += arg2
    else:
        if arg2 and nonRebasingCreditsPerToken[address(arg1)] > -1 / arg2:
            revert with 0, 17
        if stor157[address(arg1)] > !(arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18):
            revert with 0, 17
        stor157[address(arg1)] += arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18
        if not nonRebasingCreditsPerToken[address(arg1)]:
            if rebasingCredits > !(arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18):
                revert with 0, 17
            rebasingCredits += arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18
        else:
            if nonRebasingSupply > !arg2:
                revert with 0, 17
            nonRebasingSupply += arg2
    if _totalSupply > !arg2:
        revert with 0, 17
    _totalSupply += arg2
    if test266151307() <= _totalSupply + arg2:
        revert with 0, 'Max supply'
    emit 0x65ddf252: arg2, 0, arg1
    storFE21 = 1
}

function name() payable {
    if bool(stor151.length):
        if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor151.length):
            if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor151.length):
                if 31 < uint255(stor151.length) * 0.5:
                    mem[128] = uint256(stor151.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor151.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor151[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor151.length), data=mem[128 len ceil32(uint255(stor151.length) * 0.5)])
                mem[128] = 256 * stor151.length.field_8
        else:
            if bool(stor151.length) == stor151.length.field_1 < 32:
                revert with 0, 34
            if stor151.length.field_1:
                if 31 < stor151.length.field_1:
                    mem[128] = uint256(stor151.field_0)
                    idx = 128
                    s = 0
                    while stor151.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor151[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor151.length), data=mem[128 len ceil32(uint255(stor151.length) * 0.5)])
                mem[128] = 256 * stor151.length.field_8
        mem[ceil32(uint255(stor151.length) * 0.5) + 192 len ceil32(uint255(stor151.length) * 0.5)] = mem[128 len ceil32(uint255(stor151.length) * 0.5)]
        if ceil32(uint255(stor151.length) * 0.5) > uint255(stor151.length) * 0.5:
            mem[ceil32(uint255(stor151.length) * 0.5) + (uint255(stor151.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor151.length), data=mem[128 len ceil32(uint255(stor151.length) * 0.5)], mem[(2 * ceil32(uint255(stor151.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor151.length) * 0.5)]), 
    if bool(stor151.length) == stor151.length.field_1 < 32:
        revert with 0, 34
    if bool(stor151.length):
        if bool(stor151.length) == uint255(stor151.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor151.length):
            if 31 < uint255(stor151.length) * 0.5:
                mem[128] = uint256(stor151.field_0)
                idx = 128
                s = 0
                while (uint255(stor151.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor151[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1)])
            mem[128] = 256 * stor151.length.field_8
    else:
        if bool(stor151.length) == stor151.length.field_1 < 32:
            revert with 0, 34
        if stor151.length.field_1:
            if 31 < stor151.length.field_1:
                mem[128] = uint256(stor151.field_0)
                idx = 128
                s = 0
                while stor151.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor151[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1)])
            mem[128] = 256 * stor151.length.field_8
    mem[ceil32(stor151.length.field_1) + 192 len ceil32(stor151.length.field_1)] = mem[128 len ceil32(stor151.length.field_1)]
    if ceil32(stor151.length.field_1) > stor151.length.field_1:
        mem[ceil32(stor151.length.field_1) + stor151.length.field_1 + 192] = 0
    return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1)], mem[(2 * ceil32(stor151.length.field_1)) + 192 len 2 * ceil32(stor151.length.field_1)]), 
}

function symbol() payable {
    if bool(stor152.length):
        if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor152.length):
            if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor152.length):
                if 31 < uint255(stor152.length) * 0.5:
                    mem[128] = uint256(stor152.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor152.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor152[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor152.length), data=mem[128 len ceil32(uint255(stor152.length) * 0.5)])
                mem[128] = 256 * stor152.length.field_8
        else:
            if bool(stor152.length) == stor152.length.field_1 < 32:
                revert with 0, 34
            if stor152.length.field_1:
                if 31 < stor152.length.field_1:
                    mem[128] = uint256(stor152.field_0)
                    idx = 128
                    s = 0
                    while stor152.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor152[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor152.length), data=mem[128 len ceil32(uint255(stor152.length) * 0.5)])
                mem[128] = 256 * stor152.length.field_8
        mem[ceil32(uint255(stor152.length) * 0.5) + 192 len ceil32(uint255(stor152.length) * 0.5)] = mem[128 len ceil32(uint255(stor152.length) * 0.5)]
        if ceil32(uint255(stor152.length) * 0.5) > uint255(stor152.length) * 0.5:
            mem[ceil32(uint255(stor152.length) * 0.5) + (uint255(stor152.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor152.length), data=mem[128 len ceil32(uint255(stor152.length) * 0.5)], mem[(2 * ceil32(uint255(stor152.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor152.length) * 0.5)]), 
    if bool(stor152.length) == stor152.length.field_1 < 32:
        revert with 0, 34
    if bool(stor152.length):
        if bool(stor152.length) == uint255(stor152.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor152.length):
            if 31 < uint255(stor152.length) * 0.5:
                mem[128] = uint256(stor152.field_0)
                idx = 128
                s = 0
                while (uint255(stor152.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor152[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1)])
            mem[128] = 256 * stor152.length.field_8
    else:
        if bool(stor152.length) == stor152.length.field_1 < 32:
            revert with 0, 34
        if stor152.length.field_1:
            if 31 < stor152.length.field_1:
                mem[128] = uint256(stor152.field_0)
                idx = 128
                s = 0
                while stor152.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor152[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1)])
            mem[128] = 256 * stor152.length.field_8
    mem[ceil32(stor152.length.field_1) + 192 len ceil32(stor152.length.field_1)] = mem[128 len ceil32(stor152.length.field_1)]
    if ceil32(stor152.length.field_1) > stor152.length.field_1:
        mem[ceil32(stor152.length.field_1) + stor152.length.field_1 + 192] = 0
    return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1)], mem[(2 * ceil32(stor152.length.field_1)) + 192 len 2 * ceil32(stor152.length.field_1)]), 
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if vaultAddress != msg.sender:
        revert with 0, 'Caller is not the Vault'
    if storFE21 == 2:
        revert with 0, 'Reentrant call'
    storFE21 = 2
    if not arg1:
        revert with 0, 'Burn from the zero address'
    if arg2:
        if ext_code.size(arg1):
            if rebaseState[address(arg1)] > 2:
                revert with 0, 33
            if not rebaseState[address(arg1)]:
                if not nonRebasingCreditsPerToken[address(arg1)]:
                    if not stor157[address(arg1)]:
                        nonRebasingCreditsPerToken[address(arg1)] = 1000000000 * 10^18
                    else:
                        nonRebasingCreditsPerToken[address(arg1)] = rebasingCreditsPerToken
                        if not stor157[address(arg1)]:
                            if nonRebasingSupply > -1:
                                revert with 0, 17
                        else:
                            if stor157[address(arg1)] and 10^18 > -1 / stor157[address(arg1)]:
                                revert with 0, 17
                            if not nonRebasingCreditsPerToken[address(arg1)]:
                                if not rebasingCreditsPerToken:
                                    revert with 0, 18
                                if nonRebasingSupply > !(10^18 * stor157[address(arg1)] / rebasingCreditsPerToken):
                                    revert with 0, 17
                                nonRebasingSupply += 10^18 * stor157[address(arg1)] / rebasingCreditsPerToken
                            else:
                                if not nonRebasingCreditsPerToken[address(arg1)]:
                                    revert with 0, 18
                                if nonRebasingSupply > !(10^18 * stor157[address(arg1)] / nonRebasingCreditsPerToken[address(arg1)]):
                                    revert with 0, 17
                                nonRebasingSupply += 10^18 * stor157[address(arg1)] / nonRebasingCreditsPerToken[address(arg1)]
                        if rebasingCredits < stor157[address(arg1)]:
                            revert with 0, 17
                        rebasingCredits -= stor157[address(arg1)]
        if not nonRebasingCreditsPerToken[address(arg1)]:
            if arg2 and rebasingCreditsPerToken > -1 / arg2:
                revert with 0, 17
            if arg2 * rebasingCreditsPerToken / 10^18 == stor157[address(arg1)]:
                stor157[address(arg1)] = 0
            else:
                if stor157[address(arg1)] < 1:
                    revert with 0, 17
                if stor157[address(arg1)] - 1 == arg2 * rebasingCreditsPerToken / 10^18:
                    stor157[address(arg1)] = 0
                else:
                    if stor157[address(arg1)] <= arg2 * rebasingCreditsPerToken / 10^18:
                        revert with 0, 'Remove exceeds balance'
                    if stor157[address(arg1)] < arg2 * rebasingCreditsPerToken / 10^18:
                        revert with 0, 17
                    stor157[address(arg1)] -= arg2 * rebasingCreditsPerToken / 10^18
            if not nonRebasingCreditsPerToken[address(arg1)]:
                if rebasingCredits < arg2 * rebasingCreditsPerToken / 10^18:
                    revert with 0, 17
                rebasingCredits -= arg2 * rebasingCreditsPerToken / 10^18
            else:
                if nonRebasingSupply < arg2:
                    revert with 0, 17
                nonRebasingSupply -= arg2
        else:
            if arg2 and nonRebasingCreditsPerToken[address(arg1)] > -1 / arg2:
                revert with 0, 17
            if arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18 == stor157[address(arg1)]:
                stor157[address(arg1)] = 0
            else:
                if stor157[address(arg1)] < 1:
                    revert with 0, 17
                if stor157[address(arg1)] - 1 == arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18:
                    stor157[address(arg1)] = 0
                else:
                    if stor157[address(arg1)] <= arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18:
                        revert with 0, 'Remove exceeds balance'
                    if stor157[address(arg1)] < arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18:
                        revert with 0, 17
                    stor157[address(arg1)] -= arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18
            if not nonRebasingCreditsPerToken[address(arg1)]:
                if rebasingCredits < arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18:
                    revert with 0, 17
                rebasingCredits -= arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18
            else:
                if nonRebasingSupply < arg2:
                    revert with 0, 17
                nonRebasingSupply -= arg2
        if _totalSupply < arg2:
            revert with 0, 17
        _totalSupply -= arg2
        emit 0x65ddf252: arg2, arg1, 0
    storFE21 = 1
}

function rebaseOptIn() payable {
    if storFE21 == 2:
        revert with 0, 'Reentrant call'
    storFE21 = 2
    if ext_code.size(msg.sender):
        if rebaseState[address(msg.sender)] > 2:
            revert with 0, 33
        if not rebaseState[address(msg.sender)]:
            if not nonRebasingCreditsPerToken[address(msg.sender)]:
                if not stor157[address(msg.sender)]:
                    nonRebasingCreditsPerToken[address(msg.sender)] = 1000000000 * 10^18
                else:
                    nonRebasingCreditsPerToken[address(msg.sender)] = rebasingCreditsPerToken
                    if not stor157[address(msg.sender)]:
                        if nonRebasingSupply > -1:
                            revert with 0, 17
                    else:
                        if stor157[address(msg.sender)] and 10^18 > -1 / stor157[address(msg.sender)]:
                            revert with 0, 17
                        if not nonRebasingCreditsPerToken[address(msg.sender)]:
                            if not rebasingCreditsPerToken:
                                revert with 0, 18
                            if nonRebasingSupply > !(10^18 * stor157[address(msg.sender)] / rebasingCreditsPerToken):
                                revert with 0, 17
                            nonRebasingSupply += 10^18 * stor157[address(msg.sender)] / rebasingCreditsPerToken
                        else:
                            if not nonRebasingCreditsPerToken[address(msg.sender)]:
                                revert with 0, 18
                            if nonRebasingSupply > !(10^18 * stor157[address(msg.sender)] / nonRebasingCreditsPerToken[address(msg.sender)]):
                                revert with 0, 17
                            nonRebasingSupply += 10^18 * stor157[address(msg.sender)] / nonRebasingCreditsPerToken[address(msg.sender)]
                    if rebasingCredits < stor157[address(msg.sender)]:
                        revert with 0, 17
                    rebasingCredits -= stor157[address(msg.sender)]
    if not nonRebasingCreditsPerToken[address(msg.sender)]:
        revert with 0, 'Account has not opted out'
    if stor157[msg.sender] and rebasingCreditsPerToken > -1 / stor157[msg.sender]:
        revert with 0, 17
    if not nonRebasingCreditsPerToken[address(msg.sender)]:
        if not rebasingCreditsPerToken:
            revert with 0, 18
        if not stor157[address(msg.sender)]:
            if nonRebasingSupply < 0:
                revert with 0, 17
        else:
            if stor157[address(msg.sender)] and 10^18 > -1 / stor157[address(msg.sender)]:
                revert with 0, 17
            if not nonRebasingCreditsPerToken[address(msg.sender)]:
                if not rebasingCreditsPerToken:
                    revert with 0, 18
                if nonRebasingSupply < 10^18 * stor157[address(msg.sender)] / rebasingCreditsPerToken:
                    revert with 0, 17
                nonRebasingSupply -= 10^18 * stor157[address(msg.sender)] / rebasingCreditsPerToken
            else:
                if not nonRebasingCreditsPerToken[address(msg.sender)]:
                    revert with 0, 18
                if nonRebasingSupply < 10^18 * stor157[address(msg.sender)] / nonRebasingCreditsPerToken[address(msg.sender)]:
                    revert with 0, 17
                nonRebasingSupply -= 10^18 * stor157[address(msg.sender)] / nonRebasingCreditsPerToken[address(msg.sender)]
        stor157[msg.sender] = stor157[msg.sender] * rebasingCreditsPerToken / rebasingCreditsPerToken
        if rebasingCredits > !(stor157[msg.sender] * rebasingCreditsPerToken / rebasingCreditsPerToken):
            revert with 0, 17
        rebasingCredits += stor157[msg.sender] * rebasingCreditsPerToken / rebasingCreditsPerToken
    else:
        if not nonRebasingCreditsPerToken[address(msg.sender)]:
            revert with 0, 18
        if not stor157[address(msg.sender)]:
            if nonRebasingSupply < 0:
                revert with 0, 17
        else:
            if stor157[address(msg.sender)] and 10^18 > -1 / stor157[address(msg.sender)]:
                revert with 0, 17
            if not nonRebasingCreditsPerToken[address(msg.sender)]:
                if not rebasingCreditsPerToken:
                    revert with 0, 18
                if nonRebasingSupply < 10^18 * stor157[address(msg.sender)] / rebasingCreditsPerToken:
                    revert with 0, 17
                nonRebasingSupply -= 10^18 * stor157[address(msg.sender)] / rebasingCreditsPerToken
            else:
                if not nonRebasingCreditsPerToken[address(msg.sender)]:
                    revert with 0, 18
                if nonRebasingSupply < 10^18 * stor157[address(msg.sender)] / nonRebasingCreditsPerToken[address(msg.sender)]:
                    revert with 0, 17
                nonRebasingSupply -= 10^18 * stor157[address(msg.sender)] / nonRebasingCreditsPerToken[address(msg.sender)]
        stor157[msg.sender] = stor157[msg.sender] * rebasingCreditsPerToken / nonRebasingCreditsPerToken[address(msg.sender)]
        if rebasingCredits > !(stor157[msg.sender] * rebasingCreditsPerToken / nonRebasingCreditsPerToken[address(msg.sender)]):
            revert with 0, 17
        rebasingCredits += stor157[msg.sender] * rebasingCreditsPerToken / nonRebasingCreditsPerToken[address(msg.sender)]
    rebaseState[msg.sender] = 2
    nonRebasingCreditsPerToken[msg.sender] = 0
    storFE21 = 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Transfer to zero address'
    if not stor157[address(msg.sender)]:
        if arg2 > 0:
            revert with 0, 'Transfer greater than balance'
    else:
        if stor157[address(msg.sender)] and 10^18 > -1 / stor157[address(msg.sender)]:
            revert with 0, 17
        if not nonRebasingCreditsPerToken[address(msg.sender)]:
            if not rebasingCreditsPerToken:
                revert with 0, 18
            if arg2 > 10^18 * stor157[address(msg.sender)] / rebasingCreditsPerToken:
                revert with 0, 'Transfer greater than balance'
        else:
            if not nonRebasingCreditsPerToken[address(msg.sender)]:
                revert with 0, 18
            if arg2 > 10^18 * stor157[address(msg.sender)] / nonRebasingCreditsPerToken[address(msg.sender)]:
                revert with 0, 'Transfer greater than balance'
    if ext_code.size(arg1):
        if rebaseState[address(arg1)] > 2:
            revert with 0, 33
        if not rebaseState[address(arg1)]:
            if not nonRebasingCreditsPerToken[address(arg1)]:
                if not stor157[address(arg1)]:
                    nonRebasingCreditsPerToken[address(arg1)] = 1000000000 * 10^18
                else:
                    nonRebasingCreditsPerToken[address(arg1)] = rebasingCreditsPerToken
                    if not stor157[address(arg1)]:
                        if nonRebasingSupply > -1:
                            revert with 0, 17
                    else:
                        if stor157[address(arg1)] and 10^18 > -1 / stor157[address(arg1)]:
                            revert with 0, 17
                        if not nonRebasingCreditsPerToken[address(arg1)]:
                            if not rebasingCreditsPerToken:
                                revert with 0, 18
                            if nonRebasingSupply > !(10^18 * stor157[address(arg1)] / rebasingCreditsPerToken):
                                revert with 0, 17
                            nonRebasingSupply += 10^18 * stor157[address(arg1)] / rebasingCreditsPerToken
                        else:
                            if not nonRebasingCreditsPerToken[address(arg1)]:
                                revert with 0, 18
                            if nonRebasingSupply > !(10^18 * stor157[address(arg1)] / nonRebasingCreditsPerToken[address(arg1)]):
                                revert with 0, 17
                            nonRebasingSupply += 10^18 * stor157[address(arg1)] / nonRebasingCreditsPerToken[address(arg1)]
                    if rebasingCredits < stor157[address(arg1)]:
                        revert with 0, 17
                    rebasingCredits -= stor157[address(arg1)]
    if ext_code.size(msg.sender):
        if rebaseState[address(msg.sender)] > 2:
            revert with 0, 33
        if not rebaseState[address(msg.sender)]:
            if not nonRebasingCreditsPerToken[address(msg.sender)]:
                if not stor157[address(msg.sender)]:
                    nonRebasingCreditsPerToken[address(msg.sender)] = 1000000000 * 10^18
                else:
                    nonRebasingCreditsPerToken[address(msg.sender)] = rebasingCreditsPerToken
                    if not stor157[address(msg.sender)]:
                        if nonRebasingSupply > -1:
                            revert with 0, 17
                    else:
                        if stor157[address(msg.sender)] and 10^18 > -1 / stor157[address(msg.sender)]:
                            revert with 0, 17
                        if not nonRebasingCreditsPerToken[address(msg.sender)]:
                            if not rebasingCreditsPerToken:
                                revert with 0, 18
                            if nonRebasingSupply > !(10^18 * stor157[address(msg.sender)] / rebasingCreditsPerToken):
                                revert with 0, 17
                            nonRebasingSupply += 10^18 * stor157[address(msg.sender)] / rebasingCreditsPerToken
                        else:
                            if not nonRebasingCreditsPerToken[address(msg.sender)]:
                                revert with 0, 18
                            if nonRebasingSupply > !(10^18 * stor157[address(msg.sender)] / nonRebasingCreditsPerToken[address(msg.sender)]):
                                revert with 0, 17
                            nonRebasingSupply += 10^18 * stor157[address(msg.sender)] / nonRebasingCreditsPerToken[address(msg.sender)]
                    if rebasingCredits < stor157[address(msg.sender)]:
                        revert with 0, 17
                    rebasingCredits -= stor157[address(msg.sender)]
    if not nonRebasingCreditsPerToken[address(arg1)]:
        if arg2 and rebasingCreditsPerToken > -1 / arg2:
            revert with 0, 17
        if not nonRebasingCreditsPerToken[address(msg.sender)]:
            if arg2 and rebasingCreditsPerToken > -1 / arg2:
                revert with 0, 17
            if arg2 * rebasingCreditsPerToken / 10^18 > stor157[address(msg.sender)]:
                revert with 0, 'Transfer amount exceeds balance', 0
            stor157[address(msg.sender)] -= arg2 * rebasingCreditsPerToken / 10^18
            if stor157[arg1] > !(arg2 * rebasingCreditsPerToken / 10^18):
                revert with 0, 17
            stor157[address(arg1)] = stor157[arg1] + (arg2 * rebasingCreditsPerToken / 10^18)
            if not nonRebasingCreditsPerToken[address(arg1)]:
                if nonRebasingCreditsPerToken[address(msg.sender)]:
                    if nonRebasingSupply < arg2:
                        revert with 0, 17
                    nonRebasingSupply -= arg2
                    if rebasingCredits > !(arg2 * rebasingCreditsPerToken / 10^18):
                        revert with 0, 17
                    rebasingCredits += arg2 * rebasingCreditsPerToken / 10^18
            else:
                if not nonRebasingCreditsPerToken[address(msg.sender)]:
                    if nonRebasingSupply > !arg2:
                        revert with 0, 17
                    nonRebasingSupply += arg2
                    if rebasingCredits < arg2 * rebasingCreditsPerToken / 10^18:
                        revert with 0, 17
                    rebasingCredits -= arg2 * rebasingCreditsPerToken / 10^18
                else:
                    if not nonRebasingCreditsPerToken[address(arg1)]:
                        if nonRebasingCreditsPerToken[address(msg.sender)]:
                            if nonRebasingSupply < arg2:
                                revert with 0, 17
                            nonRebasingSupply -= arg2
                            if rebasingCredits > !(arg2 * rebasingCreditsPerToken / 10^18):
                                revert with 0, 17
                            rebasingCredits += arg2 * rebasingCreditsPerToken / 10^18
        else:
            if arg2 and nonRebasingCreditsPerToken[address(msg.sender)] > -1 / arg2:
                revert with 0, 17
            if arg2 * nonRebasingCreditsPerToken[address(msg.sender)] / 10^18 > stor157[address(msg.sender)]:
                revert with 0, 'Transfer amount exceeds balance', 0
            stor157[address(msg.sender)] -= arg2 * nonRebasingCreditsPerToken[address(msg.sender)] / 10^18
            if stor157[arg1] > !(arg2 * rebasingCreditsPerToken / 10^18):
                revert with 0, 17
            stor157[address(arg1)] = stor157[arg1] + (arg2 * rebasingCreditsPerToken / 10^18)
            if not nonRebasingCreditsPerToken[address(arg1)]:
                if nonRebasingCreditsPerToken[address(msg.sender)]:
                    if nonRebasingSupply < arg2:
                        revert with 0, 17
                    nonRebasingSupply -= arg2
                    if rebasingCredits > !(arg2 * rebasingCreditsPerToken / 10^18):
                        revert with 0, 17
                    rebasingCredits += arg2 * rebasingCreditsPerToken / 10^18
            else:
                if not nonRebasingCreditsPerToken[address(msg.sender)]:
                    if nonRebasingSupply > !arg2:
                        revert with 0, 17
                    nonRebasingSupply += arg2
                    if rebasingCredits < arg2 * nonRebasingCreditsPerToken[address(msg.sender)] / 10^18:
                        revert with 0, 17
                    rebasingCredits -= arg2 * nonRebasingCreditsPerToken[address(msg.sender)] / 10^18
                else:
                    if not nonRebasingCreditsPerToken[address(arg1)]:
                        if nonRebasingCreditsPerToken[address(msg.sender)]:
                            if nonRebasingSupply < arg2:
                                revert with 0, 17
                            nonRebasingSupply -= arg2
                            if rebasingCredits > !(arg2 * rebasingCreditsPerToken / 10^18):
                                revert with 0, 17
                            rebasingCredits += arg2 * rebasingCreditsPerToken / 10^18
    else:
        if arg2 and nonRebasingCreditsPerToken[address(arg1)] > -1 / arg2:
            revert with 0, 17
        if not nonRebasingCreditsPerToken[address(msg.sender)]:
            if arg2 and rebasingCreditsPerToken > -1 / arg2:
                revert with 0, 17
            if arg2 * rebasingCreditsPerToken / 10^18 > stor157[address(msg.sender)]:
                revert with 0, 'Transfer amount exceeds balance', 0
            stor157[address(msg.sender)] -= arg2 * rebasingCreditsPerToken / 10^18
            if stor157[arg1] > !(arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18):
                revert with 0, 17
            stor157[address(arg1)] = stor157[arg1] + (arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18)
            if not nonRebasingCreditsPerToken[address(arg1)]:
                if nonRebasingCreditsPerToken[address(msg.sender)]:
                    if nonRebasingSupply < arg2:
                        revert with 0, 17
                    nonRebasingSupply -= arg2
                    if rebasingCredits > !(arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18):
                        revert with 0, 17
                    rebasingCredits += arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18
            else:
                if not nonRebasingCreditsPerToken[address(msg.sender)]:
                    if nonRebasingSupply > !arg2:
                        revert with 0, 17
                    nonRebasingSupply += arg2
                    if rebasingCredits < arg2 * rebasingCreditsPerToken / 10^18:
                        revert with 0, 17
                    rebasingCredits -= arg2 * rebasingCreditsPerToken / 10^18
                else:
                    if not nonRebasingCreditsPerToken[address(arg1)]:
                        if nonRebasingCreditsPerToken[address(msg.sender)]:
                            if nonRebasingSupply < arg2:
                                revert with 0, 17
                            nonRebasingSupply -= arg2
                            if rebasingCredits > !(arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18):
                                revert with 0, 17
                            rebasingCredits += arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18
        else:
            if arg2 and nonRebasingCreditsPerToken[address(msg.sender)] > -1 / arg2:
                revert with 0, 17
            if arg2 * nonRebasingCreditsPerToken[address(msg.sender)] / 10^18 > stor157[address(msg.sender)]:
                revert with 0, 'Transfer amount exceeds balance', 0
            stor157[address(msg.sender)] -= arg2 * nonRebasingCreditsPerToken[address(msg.sender)] / 10^18
            if stor157[arg1] > !(arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18):
                revert with 0, 17
            stor157[address(arg1)] = stor157[arg1] + (arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18)
            if not nonRebasingCreditsPerToken[address(arg1)]:
                if nonRebasingCreditsPerToken[address(msg.sender)]:
                    if nonRebasingSupply < arg2:
                        revert with 0, 17
                    nonRebasingSupply -= arg2
                    if rebasingCredits > !(arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18):
                        revert with 0, 17
                    rebasingCredits += arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18
            else:
                if not nonRebasingCreditsPerToken[address(msg.sender)]:
                    if nonRebasingSupply > !arg2:
                        revert with 0, 17
                    nonRebasingSupply += arg2
                    if rebasingCredits < arg2 * nonRebasingCreditsPerToken[address(msg.sender)] / 10^18:
                        revert with 0, 17
                    rebasingCredits -= arg2 * nonRebasingCreditsPerToken[address(msg.sender)] / 10^18
                else:
                    if not nonRebasingCreditsPerToken[address(arg1)]:
                        if nonRebasingCreditsPerToken[address(msg.sender)]:
                            if nonRebasingSupply < arg2:
                                revert with 0, 17
                            nonRebasingSupply -= arg2
                            if rebasingCredits > !(arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18):
                                revert with 0, 17
                            rebasingCredits += arg2 * nonRebasingCreditsPerToken[address(arg1)] / 10^18
    emit 0x65ddf252: arg2, msg.sender, arg1
    return 1
}



}
