contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#  - initialize(address arg1, address arg2, address arg3)
#
const decimals = 18


address owner;
uint256 stor101;
uint8 paused;
mapping of uint256 balanceOf;
uint256 totalSupply;
array of struct stor204;
array of struct stor205;
address sub_6af66772Address;
address sub_ed9a5540Address;
address nftAddress;
uint256 maxCap;
uint256 sub_7b1ba250;
uint256 sub_4e615a25;
address whitelistAddress;
mapping of struct sub_9bc8bf75;

function totalSupply() payable {
    return totalSupply
}

function maxCap() payable {
    return maxCap
}

function isUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(sub_9bc8bf75[address(arg1)].field_0)
}

function nft() payable {
    return nftAddress
}

function sub_4e615a25(?) payable {
    return sub_4e615a25
}

function paused() payable {
    return bool(paused)
}

function sub_6af66772(?) payable {
    return sub_6af66772Address
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7b1ba250(?) payable {
    return sub_7b1ba250
}

function owner() payable {
    return owner
}

function whitelist() payable {
    return whitelistAddress
}

function sub_9bc8bf75(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9bc8bf75[address(arg1)].field_0
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_9bc8bf75[arg1].field_0, sub_9bc8bf75[arg1].field_256, sub_9bc8bf75[arg1].field_512
}

function sub_ed9a5540(?) payable {
    return sub_ed9a5540Address
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

function setMaxCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'max cap cannot be zero'
    maxCap = arg1
}

function sub_282a1129(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'generation rate cannot be zero'
    sub_7b1ba250 = arg1
}

function sub_415fb1a0(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invVoteThreshold cannot be zero'
    sub_4e615a25 = arg1
}

function setNftAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'zero address'
    nftAddress = arg1
}

function setWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'zero address'
    whitelistAddress = arg1
}

function sub_20e68b3b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'zero address'
    sub_ed9a5540Address = address(arg1)
}

function sub_c321ea3a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_9bc8bf75[address(arg1)].field_512:
        revert with 0, 'not staking'
    if sub_9bc8bf75[address(arg1)].field_512 < 1:
        revert with 0, 17
    return (sub_9bc8bf75[address(arg1)].field_512 - 1)
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

function getVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_9bc8bf75[address(arg1)].field_0 and maxCap > -1 / sub_9bc8bf75[address(arg1)].field_0:
        revert with 0, 17
    if balanceOf[address(arg1)] and sub_4e615a25 > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    if balanceOf[address(arg1)] * sub_4e615a25 <= sub_9bc8bf75[address(arg1)].field_0 * maxCap:
        return 0
    if not sub_9bc8bf75[address(arg1)].field_0:
        return 0
    return balanceOf[address(arg1)]
}

function sub_6e0d3235(?) payable {
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not sub_9bc8bf75[address(msg.sender)].field_512:
        revert with 0, 'No NFT is staked'
    if sub_9bc8bf75[address(msg.sender)].field_512 < 1:
        revert with 0, 17
    require ext_code.size(nftAddress)
    call nftAddress.0xb88d4fde with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, sub_9bc8bf75[address(msg.sender)].field_512 - 1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_9bc8bf75[address(msg.sender)].field_512 = 0
    emit 0x907f42c5: msg.sender, sub_9bc8bf75[address(msg.sender)].field_512 - 1
    stor101 = 1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if nftAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only platypus NFT can be received'
    if not sub_9bc8bf75[address(arg2)].field_0:
        revert with 0, 'user has no stake'
    if sub_9bc8bf75[address(arg2)].field_512:
        if not sub_9bc8bf75[address(arg2)].field_512:
            revert with 0, 'No NFT is staked'
        if sub_9bc8bf75[address(arg2)].field_512 < 1:
            revert with 0, 17
        require ext_code.size(nftAddress)
        call nftAddress.0xb88d4fde with:
             gas gas_remaining wei
            args 0, uint32(this.address), address(arg2), sub_9bc8bf75[address(arg2)].field_512 - 1, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_9bc8bf75[address(arg2)].field_512 = 0
        emit 0x907f42c5: arg2, sub_9bc8bf75[address(arg2)].field_512 - 1
    if 1 > !arg3:
        revert with 0, 17
    sub_9bc8bf75[address(arg2)].field_512 = arg3 + 1
    emit 0x509de864: arg2, arg3
    stor101 = 1
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function claimable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'zero address'
    if block.timestamp < sub_9bc8bf75[address(arg1)].field_256:
        revert with 0, 17
    if block.timestamp - sub_9bc8bf75[address(arg1)].field_256 and sub_7b1ba250 > -1 / block.timestamp - sub_9bc8bf75[address(arg1)].field_256:
        revert with 0, 17
    if sub_9bc8bf75[address(arg1)].field_0 and (block.timestamp * sub_7b1ba250) - (sub_9bc8bf75[address(arg1)].field_256 * sub_7b1ba250) > -1 / sub_9bc8bf75[address(arg1)].field_0:
        revert with 0, 17
    if (block.timestamp * sub_7b1ba250 * sub_9bc8bf75[address(arg1)].field_0) - (sub_9bc8bf75[address(arg1)].field_256 * sub_7b1ba250 * sub_9bc8bf75[address(arg1)].field_0) > -500000000000000001:
        revert with 0, 17
    if sub_9bc8bf75[address(arg1)].field_0 and maxCap > -1 / sub_9bc8bf75[address(arg1)].field_0:
        revert with 0, 17
    if balanceOf[address(arg1)] >= sub_9bc8bf75[address(arg1)].field_0 * maxCap:
        return 0
    if balanceOf[address(arg1)] > !((block.timestamp * sub_7b1ba250 * sub_9bc8bf75[address(arg1)].field_0) + (-1 * sub_9bc8bf75[address(arg1)].field_256 * sub_7b1ba250 * sub_9bc8bf75[address(arg1)].field_0) + 5 * 10^17 / 10^18):
        revert with 0, 17
    if balanceOf[address(arg1)] + ((block.timestamp * sub_7b1ba250 * sub_9bc8bf75[address(arg1)].field_0) + (-1 * sub_9bc8bf75[address(arg1)].field_256 * sub_7b1ba250 * sub_9bc8bf75[address(arg1)].field_0) + 5 * 10^17 / 10^18) <= sub_9bc8bf75[address(arg1)].field_0 * maxCap:
        return ((block.timestamp * sub_7b1ba250 * sub_9bc8bf75[address(arg1)].field_0) + (-1 * sub_9bc8bf75[address(arg1)].field_256 * sub_7b1ba250 * sub_9bc8bf75[address(arg1)].field_0) + 5 * 10^17 / 10^18)
    if sub_9bc8bf75[address(arg1)].field_0 * maxCap < balanceOf[address(arg1)]:
        revert with 0, 17
    return ((sub_9bc8bf75[address(arg1)].field_0 * maxCap) - balanceOf[address(arg1)])
}

function name() payable {
    if bool(stor204.length):
        if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor204.length):
            if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor204.length):
                if 31 < uint255(stor204.length) * 0.5:
                    mem[128] = uint256(stor204.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor204.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor204[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor204.length), data=mem[128 len ceil32(uint255(stor204.length) * 0.5)])
                mem[128] = 256 * stor204.length.field_8
        else:
            if bool(stor204.length) == stor204.length.field_1 < 32:
                revert with 0, 34
            if stor204.length.field_1:
                if 31 < stor204.length.field_1:
                    mem[128] = uint256(stor204.field_0)
                    idx = 128
                    s = 0
                    while stor204.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor204[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor204.length), data=mem[128 len ceil32(uint255(stor204.length) * 0.5)])
                mem[128] = 256 * stor204.length.field_8
        mem[ceil32(uint255(stor204.length) * 0.5) + 192 len ceil32(uint255(stor204.length) * 0.5)] = mem[128 len ceil32(uint255(stor204.length) * 0.5)]
        if ceil32(uint255(stor204.length) * 0.5) > uint255(stor204.length) * 0.5:
            mem[(uint255(stor204.length) * 0.5) + ceil32(uint255(stor204.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor204.length), data=mem[128 len ceil32(uint255(stor204.length) * 0.5)], mem[(2 * ceil32(uint255(stor204.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor204.length) * 0.5)]), 
    if bool(stor204.length) == stor204.length.field_1 < 32:
        revert with 0, 34
    if bool(stor204.length):
        if bool(stor204.length) == uint255(stor204.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor204.length):
            if 31 < uint255(stor204.length) * 0.5:
                mem[128] = uint256(stor204.field_0)
                idx = 128
                s = 0
                while (uint255(stor204.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor204[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)])
            mem[128] = 256 * stor204.length.field_8
    else:
        if bool(stor204.length) == stor204.length.field_1 < 32:
            revert with 0, 34
        if stor204.length.field_1:
            if 31 < stor204.length.field_1:
                mem[128] = uint256(stor204.field_0)
                idx = 128
                s = 0
                while stor204.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor204[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)])
            mem[128] = 256 * stor204.length.field_8
    mem[ceil32(stor204.length.field_1) + 192 len ceil32(stor204.length.field_1)] = mem[128 len ceil32(stor204.length.field_1)]
    if ceil32(stor204.length.field_1) > stor204.length.field_1:
        mem[stor204.length.field_1 + ceil32(stor204.length.field_1) + 192] = 0
    return Array(len=stor204.length % 128, data=mem[128 len ceil32(stor204.length.field_1)], mem[(2 * ceil32(stor204.length.field_1)) + 192 len 2 * ceil32(stor204.length.field_1)]), 
}

function symbol() payable {
    if bool(stor205.length):
        if bool(stor205.length) == uint255(stor205.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor205.length):
            if bool(stor205.length) == uint255(stor205.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor205.length):
                if 31 < uint255(stor205.length) * 0.5:
                    mem[128] = uint256(stor205.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor205.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor205[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor205.length), data=mem[128 len ceil32(uint255(stor205.length) * 0.5)])
                mem[128] = 256 * stor205.length.field_8
        else:
            if bool(stor205.length) == stor205.length.field_1 < 32:
                revert with 0, 34
            if stor205.length.field_1:
                if 31 < stor205.length.field_1:
                    mem[128] = uint256(stor205.field_0)
                    idx = 128
                    s = 0
                    while stor205.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor205[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor205.length), data=mem[128 len ceil32(uint255(stor205.length) * 0.5)])
                mem[128] = 256 * stor205.length.field_8
        mem[ceil32(uint255(stor205.length) * 0.5) + 192 len ceil32(uint255(stor205.length) * 0.5)] = mem[128 len ceil32(uint255(stor205.length) * 0.5)]
        if ceil32(uint255(stor205.length) * 0.5) > uint255(stor205.length) * 0.5:
            mem[(uint255(stor205.length) * 0.5) + ceil32(uint255(stor205.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor205.length), data=mem[128 len ceil32(uint255(stor205.length) * 0.5)], mem[(2 * ceil32(uint255(stor205.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor205.length) * 0.5)]), 
    if bool(stor205.length) == stor205.length.field_1 < 32:
        revert with 0, 34
    if bool(stor205.length):
        if bool(stor205.length) == uint255(stor205.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor205.length):
            if 31 < uint255(stor205.length) * 0.5:
                mem[128] = uint256(stor205.field_0)
                idx = 128
                s = 0
                while (uint255(stor205.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor205[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor205.length % 128, data=mem[128 len ceil32(stor205.length.field_1)])
            mem[128] = 256 * stor205.length.field_8
    else:
        if bool(stor205.length) == stor205.length.field_1 < 32:
            revert with 0, 34
        if stor205.length.field_1:
            if 31 < stor205.length.field_1:
                mem[128] = uint256(stor205.field_0)
                idx = 128
                s = 0
                while stor205.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor205[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor205.length % 128, data=mem[128 len ceil32(stor205.length.field_1)])
            mem[128] = 256 * stor205.length.field_8
    mem[ceil32(stor205.length.field_1) + 192 len ceil32(stor205.length.field_1)] = mem[128 len ceil32(stor205.length.field_1)]
    if ceil32(stor205.length.field_1) > stor205.length.field_1:
        mem[stor205.length.field_1 + ceil32(stor205.length.field_1) + 192] = 0
    return Array(len=stor205.length % 128, data=mem[128 len ceil32(stor205.length.field_1)], mem[(2 * ceil32(stor205.length.field_1)) + 192 len 2 * ceil32(stor205.length.field_1)]), 
}

function claim() payable {
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not sub_9bc8bf75[msg.sender].field_0:
        revert with 0, 'user has no stake'
    if block.timestamp < sub_9bc8bf75[address(msg.sender)].field_256:
        revert with 0, 17
    if block.timestamp - sub_9bc8bf75[address(msg.sender)].field_256 and sub_7b1ba250 > -1 / block.timestamp - sub_9bc8bf75[address(msg.sender)].field_256:
        revert with 0, 17
    if sub_9bc8bf75[address(msg.sender)].field_0 and (block.timestamp * sub_7b1ba250) - (sub_9bc8bf75[address(msg.sender)].field_256 * sub_7b1ba250) > -1 / sub_9bc8bf75[address(msg.sender)].field_0:
        revert with 0, 17
    if (block.timestamp * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) - (sub_9bc8bf75[address(msg.sender)].field_256 * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) > -500000000000000001:
        revert with 0, 17
    if sub_9bc8bf75[address(msg.sender)].field_0 and maxCap > -1 / sub_9bc8bf75[address(msg.sender)].field_0:
        revert with 0, 17
    if balanceOf[address(msg.sender)] >= sub_9bc8bf75[address(msg.sender)].field_0 * maxCap:
        sub_9bc8bf75[address(msg.sender)].field_256 = block.timestamp
    else:
        if balanceOf[address(msg.sender)] > !((block.timestamp * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + (-1 * sub_9bc8bf75[address(msg.sender)].field_256 * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + 5 * 10^17 / 10^18):
            revert with 0, 17
        if balanceOf[address(msg.sender)] + ((block.timestamp * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + (-1 * sub_9bc8bf75[address(msg.sender)].field_256 * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + 5 * 10^17 / 10^18) <= sub_9bc8bf75[address(msg.sender)].field_0 * maxCap:
            sub_9bc8bf75[address(msg.sender)].field_256 = block.timestamp
            if (block.timestamp * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + (-1 * sub_9bc8bf75[address(msg.sender)].field_256 * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + 5 * 10^17 / 10^18:
                emit Claimed(msg.sender, (block.timestamp * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + (-1 * sub_9bc8bf75[address(msg.sender)].field_256 * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + 5 * 10^17 / 10^18);
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !((block.timestamp * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + (-1 * sub_9bc8bf75[address(msg.sender)].field_256 * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                totalSupply += (block.timestamp * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + (-1 * sub_9bc8bf75[address(msg.sender)].field_256 * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + 5 * 10^17 / 10^18
                if balanceOf[address(msg.sender)] > !((block.timestamp * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + (-1 * sub_9bc8bf75[address(msg.sender)].field_256 * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + 5 * 10^17 / 10^18):
                    revert with 0, 17
                balanceOf[address(msg.sender)] += (block.timestamp * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + (-1 * sub_9bc8bf75[address(msg.sender)].field_256 * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + 5 * 10^17 / 10^18
                emit Mint(((block.timestamp * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + (-1 * sub_9bc8bf75[address(msg.sender)].field_256 * sub_7b1ba250 * sub_9bc8bf75[address(msg.sender)].field_0) + 5 * 10^17 / 10^18), msg.sender);
                require ext_code.size(sub_ed9a5540Address)
                call sub_ed9a5540Address.0x4f00a93e with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if sub_9bc8bf75[address(msg.sender)].field_0 * maxCap < balanceOf[address(msg.sender)]:
                revert with 0, 17
            sub_9bc8bf75[address(msg.sender)].field_256 = block.timestamp
            if (sub_9bc8bf75[address(msg.sender)].field_0 * maxCap) - balanceOf[address(msg.sender)]:
                emit Claimed(msg.sender, (sub_9bc8bf75[address(msg.sender)].field_0 * maxCap) - balanceOf[address(msg.sender)]);
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !((sub_9bc8bf75[address(msg.sender)].field_0 * maxCap) - balanceOf[address(msg.sender)]):
                    revert with 0, 17
                totalSupply = totalSupply + (sub_9bc8bf75[address(msg.sender)].field_0 * maxCap) - balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > !((sub_9bc8bf75[address(msg.sender)].field_0 * maxCap) - balanceOf[address(msg.sender)]):
                    revert with 0, 17
                balanceOf[address(msg.sender)] = sub_9bc8bf75[address(msg.sender)].field_0 * maxCap
                emit Mint(((sub_9bc8bf75[address(msg.sender)].field_0 * maxCap) - balanceOf[address(msg.sender)]), msg.sender);
                require ext_code.size(sub_ed9a5540Address)
                call sub_ed9a5540Address.0x4f00a93e with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}



}
