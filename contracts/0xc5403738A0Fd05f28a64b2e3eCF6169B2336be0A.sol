contract main {




// =====================  Runtime code  =====================


#
#  - initialize(uint256 arg1)
#
const targetSupply = -1

const decimals = 18

const cap = -1

const MAX_INT = -1


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
address owner;
mapping of uint8 stor151;
uint8 mintingFinished;
uint256 totalTxs;
uint256 players;
uint256 mintedSupply;
mapping of struct mintedBy;
address vaultAddress;
mapping of uint8 stor158;
mapping of uint8 stor159;
mapping of uint8 stor160;
array of address stor161;
array of address stor77282275189709367734651031388976690332233555452666916122967375672545332467832;

function mintingFinished() payable {
    return bool(mintingFinished)
}

function totalSupply() payable {
    return totalSupply
}

function mintedBy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return mintedBy[address(arg1)].field_256
}

function vaultAddress() payable {
    return vaultAddress
}

function totalTxs() payable {
    return totalTxs
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor151[arg1])
}

function mintedSupply() payable {
    return mintedSupply
}

function isExcluded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor160[address(arg1)])
}

function players() payable {
    return players
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function finishMinting() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not mintingFinished
    return 0
}

function remainingMintableSupply() payable {
    if mintedSupply > -1:
        revert with 0, 1
    if -1 < mintedSupply:
        revert with 0, 17
    return (-mintedSupply - 1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function statsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)], mintedBy[address(arg1)].field_0, mintedBy[address(arg1)].field_256
}

function setVaultAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddress = arg1
}

function removeAccountCustomTax(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor159[address(arg1)] = 0
}

function addAddressToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor151[address(arg1)]:
        return 0
    stor151[address(arg1)] = 1
    emit WhitelistedAddressAdded(arg1);
    return 1
}

function removeAddressFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor151[address(arg1)]:
        return 0
    stor151[address(arg1)] = 0
    emit WhitelistedAddressRemoved(arg1);
    return 1
}

function setAccountCustomTax(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 100:
        revert with 0, 'Invalid tax amount'
    stor159[address(arg1)] = 1
    stor158[address(arg1)] = arg2
}

function excludeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor160[address(arg1)]:
        revert with 0, 'Account is already excluded'
    stor160[address(arg1)] = 1
    stor161.length++
    storAADC[stor161.length] = arg1
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function includeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor160[address(arg1)]:
        revert with 0, 'Account is already excluded!'
    idx = 0
    while idx < stor161.length:
        mem[0] = 161
        if stor161[idx] - arg1:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor161.length < 1:
            revert with 0, 17
        if stor161.length - 1 >= stor161.length:
            revert with 0, 50
        if idx >= stor161.length:
            revert with 0, 50
        stor161[idx] = stor161[stor161.length]
        stor160[address(arg1)] = 0
        if stor161.length < 1:
            revert with 0, 17
        if stor161.length - 1 >= stor161.length:
            revert with 0, 50
        stor161[stor161.length] = 0
}

function sub_7bbbf58b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg2):
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !balanceOf[address(arg1)]:
        revert with 0, 17
    totalSupply += balanceOf[address(arg1)]
    if balanceOf[address(arg2)] > !balanceOf[address(arg1)]:
        revert with 0, 17
    balanceOf[address(arg2)] += balanceOf[address(arg1)]
    emit Transfer(balanceOf[address(arg1)], 0, address(arg2));
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] = 0
    if totalSupply < balanceOf[address(arg1)]:
        revert with 0, 17
    totalSupply -= balanceOf[address(arg1)]
    emit Transfer(balanceOf[address(arg1)], address(arg1), 0);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg2:
        return 0
    if mintedSupply > !arg2:
        revert with 0, 17
    if mintedSupply + arg2 < mintedSupply:
        revert with 0, 1
    if mintedSupply + arg2 > -1:
        return 0
    if not stor151[msg.sender]:
        revert with 0, 'not whitelisted'
    require not mintingFinished
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if mintedSupply > !arg2:
        revert with 0, 17
    if mintedSupply + arg2 < mintedSupply:
        revert with 0, 1
    mintedSupply += arg2
    if not mintedSupply + arg2 + 1:
        mintingFinished = 1
        emit MintFinished()
    if not -mintedBy[address(arg1)].field_0:
        if players > -2:
            revert with 0, 17
        players++
    if mintedBy[address(arg1)].field_0 > -2:
        revert with 0, 17
    mintedBy[address(arg1)].field_0++
    if mintedBy[address(arg1)].field_256 > !arg2:
        revert with 0, 17
    mintedBy[address(arg1)].field_256 += arg2
    if totalTxs > -2:
        revert with 0, 17
    totalTxs++
    return 1
}

function addAddressesToWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 151
        if stor151[mem[(32 * idx) + 140 len 20]]:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 151
        stor151[address(mem[(32 * idx) + 128])] = 1
        mem[ceil32(32 * arg1.length) + 97] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressAdded(mem[ceil32(32 * arg1.length) + 97]);
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function removeAddressesFromWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 151
        if not stor151[mem[(32 * idx) + 140 len 20]]:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 151
        stor151[address(mem[(32 * idx) + 128])] = 0
        mem[ceil32(32 * arg1.length) + 97] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressRemoved(mem[ceil32(32 * arg1.length) + 97]);
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function calculateTransferTaxes(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor160[address(arg1)]:
        return arg2, 0
    if not stor159[address(arg1)]:
        if not -arg2:
            if not -arg2:
                return 0
            if arg2 and 90 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 90 * arg2 / arg2 != 90:
                revert with 0, 1
            return 90 * arg2 / 100, 0
        if arg2 and 10 > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if 10 * arg2 / arg2 != 10:
            revert with 0, 1
        if not -arg2:
            return 0, 10 * arg2 / 100
        if arg2 and 90 > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if 90 * arg2 / arg2 != 90:
            revert with 0, 1
        return 90 * arg2 / 100, 10 * arg2 / 100
    if not -arg2:
        if stor158[address(arg1)] > 100:
            revert with 0, 1
        if 100 < stor158[address(arg1)]:
            revert with 0, 17
        if not -arg2:
            return 0
        if arg2 and -stor158[address(arg1)] + 100 > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if (100 * arg2) - (stor158[address(arg1)] * arg2) / arg2 != -stor158[address(arg1)] + 100:
            revert with 0, 1
        return (100 * arg2) - (stor158[address(arg1)] * arg2) / 100, 0
    if arg2 and stor158[address(arg1)] > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * stor158[address(arg1)] / arg2 != stor158[address(arg1)]:
        revert with 0, 1
    if stor158[address(arg1)] > 100:
        revert with 0, 1
    if 100 < stor158[address(arg1)]:
        revert with 0, 17
    if not -arg2:
        return 0, arg2 * stor158[address(arg1)] / 100
    if arg2 and -stor158[address(arg1)] + 100 > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if (100 * arg2) - (stor158[address(arg1)] * arg2) / arg2 != -stor158[address(arg1)] + 100:
        revert with 0, 1
    return (100 * arg2) - (stor158[address(arg1)] * arg2) / 100, arg2 * stor158[address(arg1)] / 100
}

function name() payable {
    if bool(stor54.length):
        if not bool(stor54.length) - (uint255(stor54.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor54.length):
            if not bool(stor54.length) - (uint255(stor54.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if not bool(stor54.length) - (stor54.length.field_1 < 32):
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[ceil32(uint255(stor54.length) * 0.5) + (uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if not bool(stor54.length) - (stor54.length.field_1 < 32):
        revert with 0, 34
    if bool(stor54.length):
        if not bool(stor54.length) - (uint255(stor54.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if not bool(stor54.length) - (stor54.length.field_1 < 32):
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() payable {
    if bool(stor55.length):
        if not bool(stor55.length) - (uint255(stor55.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor55.length):
            if not bool(stor55.length) - (uint255(stor55.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if not bool(stor55.length) - (stor55.length.field_1 < 32):
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[ceil32(uint255(stor55.length) * 0.5) + (uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if not bool(stor55.length) - (stor55.length.field_1 < 32):
        revert with 0, 34
    if bool(stor55.length):
        if not bool(stor55.length) - (uint255(stor55.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if not bool(stor55.length) - (stor55.length.field_1 < 32):
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor160[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not stor159[address(msg.sender)]:
            if not -arg2:
                if not -arg2:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    if balanceOf[arg1] > -1:
                        revert with 0, 17
                    emit Transfer(0, msg.sender, arg1);
                else:
                    if arg2 and 90 > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if 90 * arg2 / arg2 != 90:
                        revert with 0, 1
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 90 * arg2 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 90 * arg2 / 100
                    if balanceOf[arg1] > !(90 * arg2 / 100):
                        revert with 0, 17
                    balanceOf[arg1] += 90 * arg2 / 100
                    emit Transfer((90 * arg2 / 100), msg.sender, arg1);
            else:
                if arg2 and 10 > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if 10 * arg2 / arg2 != 10:
                    revert with 0, 1
                if not -arg2:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if 10 * arg2 / 100:
                        if not vaultAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < 10 * arg2 / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= 10 * arg2 / 100
                        if balanceOf[stor157] > !(10 * arg2 / 100):
                            revert with 0, 17
                        balanceOf[stor157] += 10 * arg2 / 100
                        emit Transfer((10 * arg2 / 100), msg.sender, vaultAddress);
                        emit TaxPayed(msg.sender, vaultAddress, 10 * arg2 / 100);
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    if balanceOf[arg1] > -1:
                        revert with 0, 17
                    emit Transfer(0, msg.sender, arg1);
                else:
                    if arg2 and 90 > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if 90 * arg2 / arg2 != 90:
                        revert with 0, 1
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if 10 * arg2 / 100:
                        if not vaultAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < 10 * arg2 / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= 10 * arg2 / 100
                        if balanceOf[stor157] > !(10 * arg2 / 100):
                            revert with 0, 17
                        balanceOf[stor157] += 10 * arg2 / 100
                        emit Transfer((10 * arg2 / 100), msg.sender, vaultAddress);
                        emit TaxPayed(msg.sender, vaultAddress, 10 * arg2 / 100);
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 90 * arg2 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= 90 * arg2 / 100
                    if balanceOf[arg1] > !(90 * arg2 / 100):
                        revert with 0, 17
                    balanceOf[arg1] += 90 * arg2 / 100
                    emit Transfer((90 * arg2 / 100), msg.sender, arg1);
        else:
            if not -arg2:
                if stor158[address(msg.sender)] > 100:
                    revert with 0, 1
                if 100 < stor158[address(msg.sender)]:
                    revert with 0, 17
                if not -arg2:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    if balanceOf[arg1] > -1:
                        revert with 0, 17
                    emit Transfer(0, msg.sender, arg1);
                else:
                    if arg2 and -stor158[address(msg.sender)] + 100 > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if (100 * arg2) - (stor158[address(msg.sender)] * arg2) / arg2 != -stor158[address(msg.sender)] + 100:
                        revert with 0, 1
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < (100 * arg2) - (stor158[address(msg.sender)] * arg2) / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= (100 * arg2) - (stor158[address(msg.sender)] * arg2) / 100
                    if balanceOf[arg1] > !((100 * arg2) - (stor158[address(msg.sender)] * arg2) / 100):
                        revert with 0, 17
                    balanceOf[arg1] += (100 * arg2) - (stor158[address(msg.sender)] * arg2) / 100
                    emit Transfer(((100 * arg2) - (stor158[address(msg.sender)] * arg2) / 100), msg.sender, arg1);
            else:
                if arg2 and stor158[address(msg.sender)] > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * stor158[address(msg.sender)] / arg2 != stor158[address(msg.sender)]:
                    revert with 0, 1
                if stor158[address(msg.sender)] > 100:
                    revert with 0, 1
                if 100 < stor158[address(msg.sender)]:
                    revert with 0, 17
                if not -arg2:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if arg2 * stor158[address(msg.sender)] / 100:
                        if not vaultAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 * stor158[address(msg.sender)] / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * stor158[address(msg.sender)] / 100
                        if balanceOf[stor157] > !(arg2 * stor158[address(msg.sender)] / 100):
                            revert with 0, 17
                        balanceOf[stor157] += arg2 * stor158[address(msg.sender)] / 100
                        emit Transfer((arg2 * stor158[address(msg.sender)] / 100), msg.sender, vaultAddress);
                        emit TaxPayed(msg.sender, vaultAddress, arg2 * stor158[address(msg.sender)] / 100);
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    if balanceOf[arg1] > -1:
                        revert with 0, 17
                    emit Transfer(0, msg.sender, arg1);
                else:
                    if arg2 and -stor158[address(msg.sender)] + 100 > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if (100 * arg2) - (stor158[address(msg.sender)] * arg2) / arg2 != -stor158[address(msg.sender)] + 100:
                        revert with 0, 1
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if arg2 * stor158[address(msg.sender)] / 100:
                        if not vaultAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < arg2 * stor158[address(msg.sender)] / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] -= arg2 * stor158[address(msg.sender)] / 100
                        if balanceOf[stor157] > !(arg2 * stor158[address(msg.sender)] / 100):
                            revert with 0, 17
                        balanceOf[stor157] += arg2 * stor158[address(msg.sender)] / 100
                        emit Transfer((arg2 * stor158[address(msg.sender)] / 100), msg.sender, vaultAddress);
                        emit TaxPayed(msg.sender, vaultAddress, arg2 * stor158[address(msg.sender)] / 100);
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < (100 * arg2) - (stor158[address(msg.sender)] * arg2) / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= (100 * arg2) - (stor158[address(msg.sender)] * arg2) / 100
                    if balanceOf[arg1] > !((100 * arg2) - (stor158[address(msg.sender)] * arg2) / 100):
                        revert with 0, 17
                    balanceOf[arg1] += (100 * arg2) - (stor158[address(msg.sender)] * arg2) / 100
                    emit Transfer(((100 * arg2) - (stor158[address(msg.sender)] * arg2) / 100), msg.sender, arg1);
    if not -mintedBy[address(arg1)].field_0:
        if players > -2:
            revert with 0, 17
        players++
    if mintedBy[address(arg1)].field_0 > -2:
        revert with 0, 17
    mintedBy[address(arg1)].field_0++
    if mintedBy[msg.sender].field_0 > -2:
        revert with 0, 17
    mintedBy[msg.sender].field_0++
    if totalTxs > -2:
        revert with 0, 17
    totalTxs++
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor160[address(arg1)]:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 'ERC20: insufficient allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[arg2] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if not stor159[address(arg1)]:
            if not -arg3:
                if not -arg3:
                    if allowance[address(arg1)][address(msg.sender)] != -1:
                        if allowance[address(arg1)][address(msg.sender)] < 0:
                            revert with 0, 'ERC20: insufficient allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    if balanceOf[arg2] > -1:
                        revert with 0, 17
                    emit Transfer(0, arg1, arg2);
                else:
                    if arg3 and 90 > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if 90 * arg3 / arg3 != 90:
                        revert with 0, 1
                    if allowance[address(arg1)][address(msg.sender)] != -1:
                        if allowance[address(arg1)][address(msg.sender)] < 90 * arg3 / 100:
                            revert with 0, 'ERC20: insufficient allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] -= 90 * arg3 / 100
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - (90 * arg3 / 100)), arg1, msg.sender);
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < 90 * arg3 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= 90 * arg3 / 100
                    if balanceOf[arg2] > !(90 * arg3 / 100):
                        revert with 0, 17
                    balanceOf[arg2] += 90 * arg3 / 100
                    emit Transfer((90 * arg3 / 100), arg1, arg2);
            else:
                if arg3 and 10 > -1 / arg3:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                if 10 * arg3 / arg3 != 10:
                    revert with 0, 1
                if not -arg3:
                    if 10 * arg3 / 100:
                        if allowance[address(arg1)][address(msg.sender)] != -1:
                            if allowance[address(arg1)][address(msg.sender)] < 10 * arg3 / 100:
                                revert with 0, 'ERC20: insufficient allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            allowance[address(arg1)][address(msg.sender)] -= 10 * arg3 / 100
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - (10 * arg3 / 100)), arg1, msg.sender);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not vaultAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < 10 * arg3 / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= 10 * arg3 / 100
                        if balanceOf[stor157] > !(10 * arg3 / 100):
                            revert with 0, 17
                        balanceOf[stor157] += 10 * arg3 / 100
                        emit Transfer((10 * arg3 / 100), arg1, vaultAddress);
                        emit TaxPayed(address(arg1), vaultAddress, 10 * arg3 / 100);
                    if allowance[address(arg1)][address(msg.sender)] != -1:
                        if allowance[address(arg1)][address(msg.sender)] < 0:
                            revert with 0, 'ERC20: insufficient allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    if balanceOf[arg2] > -1:
                        revert with 0, 17
                    emit Transfer(0, arg1, arg2);
                else:
                    if arg3 and 90 > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if 90 * arg3 / arg3 != 90:
                        revert with 0, 1
                    if 10 * arg3 / 100:
                        if allowance[address(arg1)][address(msg.sender)] != -1:
                            if allowance[address(arg1)][address(msg.sender)] < 10 * arg3 / 100:
                                revert with 0, 'ERC20: insufficient allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            allowance[address(arg1)][address(msg.sender)] -= 10 * arg3 / 100
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - (10 * arg3 / 100)), arg1, msg.sender);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not vaultAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < 10 * arg3 / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= 10 * arg3 / 100
                        if balanceOf[stor157] > !(10 * arg3 / 100):
                            revert with 0, 17
                        balanceOf[stor157] += 10 * arg3 / 100
                        emit Transfer((10 * arg3 / 100), arg1, vaultAddress);
                        emit TaxPayed(address(arg1), vaultAddress, 10 * arg3 / 100);
                    if allowance[address(arg1)][address(msg.sender)] != -1:
                        if allowance[address(arg1)][address(msg.sender)] < 90 * arg3 / 100:
                            revert with 0, 'ERC20: insufficient allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] -= 90 * arg3 / 100
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - (90 * arg3 / 100)), arg1, msg.sender);
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < 90 * arg3 / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= 90 * arg3 / 100
                    if balanceOf[arg2] > !(90 * arg3 / 100):
                        revert with 0, 17
                    balanceOf[arg2] += 90 * arg3 / 100
                    emit Transfer((90 * arg3 / 100), arg1, arg2);
        else:
            if not -arg3:
                if stor158[address(arg1)] > 100:
                    revert with 0, 1
                if 100 < stor158[address(arg1)]:
                    revert with 0, 17
                if not -arg3:
                    if allowance[address(arg1)][address(msg.sender)] != -1:
                        if allowance[address(arg1)][address(msg.sender)] < 0:
                            revert with 0, 'ERC20: insufficient allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    if balanceOf[arg2] > -1:
                        revert with 0, 17
                    emit Transfer(0, arg1, arg2);
                else:
                    if arg3 and -stor158[address(arg1)] + 100 > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if (100 * arg3) - (stor158[address(arg1)] * arg3) / arg3 != -stor158[address(arg1)] + 100:
                        revert with 0, 1
                    if allowance[address(arg1)][address(msg.sender)] != -1:
                        if allowance[address(arg1)][address(msg.sender)] < (100 * arg3) - (stor158[address(arg1)] * arg3) / 100:
                            revert with 0, 'ERC20: insufficient allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] -= (100 * arg3) - (stor158[address(arg1)] * arg3) / 100
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - ((100 * arg3) - (stor158[address(arg1)] * arg3) / 100)), arg1, msg.sender);
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < (100 * arg3) - (stor158[address(arg1)] * arg3) / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= (100 * arg3) - (stor158[address(arg1)] * arg3) / 100
                    if balanceOf[arg2] > !((100 * arg3) - (stor158[address(arg1)] * arg3) / 100):
                        revert with 0, 17
                    balanceOf[arg2] += (100 * arg3) - (stor158[address(arg1)] * arg3) / 100
                    emit Transfer(((100 * arg3) - (stor158[address(arg1)] * arg3) / 100), arg1, arg2);
            else:
                if arg3 and stor158[address(arg1)] > -1 / arg3:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                if arg3 * stor158[address(arg1)] / arg3 != stor158[address(arg1)]:
                    revert with 0, 1
                if stor158[address(arg1)] > 100:
                    revert with 0, 1
                if 100 < stor158[address(arg1)]:
                    revert with 0, 17
                if not -arg3:
                    if arg3 * stor158[address(arg1)] / 100:
                        if allowance[address(arg1)][address(msg.sender)] != -1:
                            if allowance[address(arg1)][address(msg.sender)] < arg3 * stor158[address(arg1)] / 100:
                                revert with 0, 'ERC20: insufficient allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            allowance[address(arg1)][address(msg.sender)] -= arg3 * stor158[address(arg1)] / 100
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - (arg3 * stor158[address(arg1)] / 100)), arg1, msg.sender);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not vaultAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 * stor158[address(arg1)] / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3 * stor158[address(arg1)] / 100
                        if balanceOf[stor157] > !(arg3 * stor158[address(arg1)] / 100):
                            revert with 0, 17
                        balanceOf[stor157] += arg3 * stor158[address(arg1)] / 100
                        emit Transfer((arg3 * stor158[address(arg1)] / 100), arg1, vaultAddress);
                        emit TaxPayed(address(arg1), vaultAddress, arg3 * stor158[address(arg1)] / 100);
                    if allowance[address(arg1)][address(msg.sender)] != -1:
                        if allowance[address(arg1)][address(msg.sender)] < 0:
                            revert with 0, 'ERC20: insufficient allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    if balanceOf[arg2] > -1:
                        revert with 0, 17
                    emit Transfer(0, arg1, arg2);
                else:
                    if arg3 and -stor158[address(arg1)] + 100 > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if (100 * arg3) - (stor158[address(arg1)] * arg3) / arg3 != -stor158[address(arg1)] + 100:
                        revert with 0, 1
                    if arg3 * stor158[address(arg1)] / 100:
                        if allowance[address(arg1)][address(msg.sender)] != -1:
                            if allowance[address(arg1)][address(msg.sender)] < arg3 * stor158[address(arg1)] / 100:
                                revert with 0, 'ERC20: insufficient allowance'
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            allowance[address(arg1)][address(msg.sender)] -= arg3 * stor158[address(arg1)] / 100
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - (arg3 * stor158[address(arg1)] / 100)), arg1, msg.sender);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not vaultAddress:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < arg3 * stor158[address(arg1)] / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] -= arg3 * stor158[address(arg1)] / 100
                        if balanceOf[stor157] > !(arg3 * stor158[address(arg1)] / 100):
                            revert with 0, 17
                        balanceOf[stor157] += arg3 * stor158[address(arg1)] / 100
                        emit Transfer((arg3 * stor158[address(arg1)] / 100), arg1, vaultAddress);
                        emit TaxPayed(address(arg1), vaultAddress, arg3 * stor158[address(arg1)] / 100);
                    if allowance[address(arg1)][address(msg.sender)] != -1:
                        if allowance[address(arg1)][address(msg.sender)] < (100 * arg3) - (stor158[address(arg1)] * arg3) / 100:
                            revert with 0, 'ERC20: insufficient allowance'
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        allowance[address(arg1)][address(msg.sender)] -= (100 * arg3) - (stor158[address(arg1)] * arg3) / 100
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - ((100 * arg3) - (stor158[address(arg1)] * arg3) / 100)), arg1, msg.sender);
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < (100 * arg3) - (stor158[address(arg1)] * arg3) / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= (100 * arg3) - (stor158[address(arg1)] * arg3) / 100
                    if balanceOf[arg2] > !((100 * arg3) - (stor158[address(arg1)] * arg3) / 100):
                        revert with 0, 17
                    balanceOf[arg2] += (100 * arg3) - (stor158[address(arg1)] * arg3) / 100
                    emit Transfer(((100 * arg3) - (stor158[address(arg1)] * arg3) / 100), arg1, arg2);
    if not -mintedBy[address(arg2)].field_0:
        if players > -2:
            revert with 0, 17
        players++
    if mintedBy[address(arg2)].field_0 > -2:
        revert with 0, 17
    mintedBy[address(arg2)].field_0++
    if mintedBy[address(arg1)].field_0 > -2:
        revert with 0, 17
    mintedBy[address(arg1)].field_0++
    if totalTxs > -2:
        revert with 0, 17
    totalTxs++
    return 1
}



}
