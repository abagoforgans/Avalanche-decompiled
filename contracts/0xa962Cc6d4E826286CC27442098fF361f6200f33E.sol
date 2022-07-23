contract main {




// =====================  Runtime code  =====================


const name = 'Tsunami Token'

const targetSupply = -1

const decimals = 18

const cap = -1

const symbol = 'TSNMI'

const MAX_INT = -1


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
mapping of uint8 stor4;
uint8 mintingFinished;
uint256 totalTxs;
uint256 players;
uint256 mintedSupply;
mapping of struct mintedBy;
address vaultAddress;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
array of address stor14;

function mintingFinished() {
    return bool(mintingFinished)
}

function totalSupply() {
    return totalSupply
}

function mintedBy(address arg1) {
    return mintedBy[address(arg1)].field_256
}

function vaultAddress() {
    return vaultAddress
}

function totalTxs() {
    return totalTxs
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor4[arg1])
}

function mintedSupply() {
    return mintedSupply
}

function isExcluded(address arg1) {
    return bool(stor13[address(arg1)])
}

function players() {
    return players
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function remainingMintableSupply() {
    require mintedSupply <= -1
    return (-mintedSupply - 1)
}

function setVaultAddress(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    vaultAddress = arg1
}

function finishMinting() {
    if owner != msg.sender:
        revert with 0, 'only owner'
    require not mintingFinished
    return 0
}

function statsOf(address arg1) {
    return balanceOf[address(arg1)], mintedBy[address(arg1)].field_0, mintedBy[address(arg1)].field_256
}

function removeAccountCustomTax(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    stor12[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addAddressToWhitelist(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    if stor4[address(arg1)]:
        return 0
    stor4[address(arg1)] = 1
    emit WhitelistedAddressAdded(arg1);
    return 1
}

function removeAddressFromWhitelist(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    if not stor4[address(arg1)]:
        return 0
    stor4[address(arg1)] = 0
    emit WhitelistedAddressRemoved(arg1);
    return 1
}

function excludeAccount(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    if stor13[address(arg1)]:
        revert with 0, 'Account is already excluded'
    stor13[address(arg1)] = 1
    stor14.length++
    stor14[stor14.length] = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function setAccountCustomTax(address arg1, uint8 arg2) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    if arg2 < 0:
        revert with 0, 'Invalid tax amount'
    if arg2 > 100:
        revert with 0, 'Invalid tax amount'
    stor12[address(arg1)] = 1
    stor11[address(arg1)] = arg2
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function includeAccount(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only owner'
    if not stor13[address(arg1)]:
        revert with 0, 'Account is already excluded!'
    idx = 0
    while idx < stor14.length:
        mem[0] = 14
        if stor14[idx] != arg1:
            idx = idx + 1
            continue 
        require stor14.length - 1 < stor14.length
        require idx < stor14.length
        stor14[idx] = stor14[stor14.length]
        stor13[address(arg1)] = 0
        require stor14.length - 1 < stor14.length
        stor14[stor14.length] = 0
}

function addAddressesToWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if owner != msg.sender:
        revert with 0, 'only owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, 'only owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if stor4[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[address(mem[(32 * idx) + 128])] = 1
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressAdded(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function removeAddressesFromWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if owner != msg.sender:
        revert with 0, 'only owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, 'only owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if not stor4[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[address(mem[(32 * idx) + 128])] = 0
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressRemoved(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function mint(address arg1, uint256 arg2) {
    if not arg2:
        return 0
    require arg2 + mintedSupply >= mintedSupply
    if arg2 + mintedSupply > -1:
        return 0
    if not stor4[msg.sender]:
        revert with 0, 'not whitelisted'
    require not mintingFinished
    require arg1
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    require arg2 + mintedSupply >= mintedSupply
    mintedSupply += arg2
    if -1 == arg2 + mintedSupply:
        mintingFinished = 1
        emit MintFinished()
    if not mintedBy[address(arg1)].field_0:
        players++
    mintedBy[address(arg1)].field_0++
    mintedBy[address(arg1)].field_256 += arg2
    totalTxs++
    return 1
}

function calculateTransferTaxes(address arg1, uint256 arg2) {
    if stor13[address(arg1)]:
        return arg2, 0
    if not stor12[address(arg1)]:
        if not arg2:
            if not arg2:
                return 0
            if 90 * arg2 / arg2 == 90:
                return 90 * arg2 / 100, 0
        else:
            if 10 * arg2 / arg2 == 10:
                if not arg2:
                    return 0, 10 * arg2 / 100
                if 90 * arg2 / arg2 == 90:
                    return 90 * arg2 / 100, 10 * arg2 / 100
    else:
        if not arg2:
            if stor11[address(arg1)] <= 100:
                if not arg2:
                    return 0
                if (100 * arg2) - (stor11[address(arg1)] * arg2) / arg2 == -stor11[address(arg1)] + 100:
                    return (100 * arg2) - (stor11[address(arg1)] * arg2) / 100, 0
        else:
            if stor11[address(arg1)] * arg2 / arg2 == stor11[address(arg1)]:
                if stor11[address(arg1)] <= 100:
                    if not arg2:
                        return 0, stor11[address(arg1)] * arg2 / 100
                    if (100 * arg2) - (stor11[address(arg1)] * arg2) / arg2 == -stor11[address(arg1)] + 100:
                        return (100 * arg2) - (stor11[address(arg1)] * arg2) / 100, stor11[address(arg1)] * arg2 / 100
    revert
}

function transfer(address arg1, uint256 arg2) {
    if stor13[address(msg.sender)]:
        require arg1
        require arg2 <= balanceOf[msg.sender]
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not stor12[address(msg.sender)]:
            if not arg2:
                if not arg2:
                    require arg1
                    require 0 <= balanceOf[msg.sender]
                    require 0 <= balanceOf[msg.sender]
                    require balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = balanceOf[arg1]
                    emit Transfer(0, msg.sender, arg1);
                else:
                    require 90 * arg2 / arg2 == 90
                    require arg1
                    require 90 * arg2 / 100 <= balanceOf[msg.sender]
                    require 90 * arg2 / 100 <= balanceOf[msg.sender]
                    balanceOf[msg.sender] -= 90 * arg2 / 100
                    require (90 * arg2 / 100) + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = (90 * arg2 / 100) + balanceOf[arg1]
                    emit Transfer((90 * arg2 / 100), msg.sender, arg1);
            else:
                require 10 * arg2 / arg2 == 10
                if not arg2:
                    if 10 * arg2 / 100 > 0:
                        require vaultAddress
                        require 10 * arg2 / 100 <= balanceOf[msg.sender]
                        require 10 * arg2 / 100 <= balanceOf[msg.sender]
                        balanceOf[msg.sender] -= 10 * arg2 / 100
                        require (10 * arg2 / 100) + balanceOf[stor10] >= balanceOf[stor10]
                        balanceOf[stor10] += 10 * arg2 / 100
                        emit Transfer((10 * arg2 / 100), msg.sender, vaultAddress);
                        emit TaxPayed(msg.sender, vaultAddress, 10 * arg2 / 100);
                    require arg1
                    require 0 <= balanceOf[msg.sender]
                    require 0 <= balanceOf[msg.sender]
                    require balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = balanceOf[arg1]
                    emit Transfer(0, msg.sender, arg1);
                else:
                    require 90 * arg2 / arg2 == 90
                    if 10 * arg2 / 100 > 0:
                        require vaultAddress
                        require 10 * arg2 / 100 <= balanceOf[msg.sender]
                        require 10 * arg2 / 100 <= balanceOf[msg.sender]
                        balanceOf[msg.sender] -= 10 * arg2 / 100
                        require (10 * arg2 / 100) + balanceOf[stor10] >= balanceOf[stor10]
                        balanceOf[stor10] += 10 * arg2 / 100
                        emit Transfer((10 * arg2 / 100), msg.sender, vaultAddress);
                        emit TaxPayed(msg.sender, vaultAddress, 10 * arg2 / 100);
                    require arg1
                    require 90 * arg2 / 100 <= balanceOf[msg.sender]
                    require 90 * arg2 / 100 <= balanceOf[msg.sender]
                    balanceOf[msg.sender] -= 90 * arg2 / 100
                    require (90 * arg2 / 100) + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = (90 * arg2 / 100) + balanceOf[arg1]
                    emit Transfer((90 * arg2 / 100), msg.sender, arg1);
        else:
            if not arg2:
                require stor11[address(msg.sender)] <= 100
                if not arg2:
                    require arg1
                    require 0 <= balanceOf[msg.sender]
                    require 0 <= balanceOf[msg.sender]
                    require balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = balanceOf[arg1]
                    emit Transfer(0, msg.sender, arg1);
                else:
                    require (100 * arg2) - (stor11[address(msg.sender)] * arg2) / arg2 == -stor11[address(msg.sender)] + 100
                    require arg1
                    require (100 * arg2) - (stor11[address(msg.sender)] * arg2) / 100 <= balanceOf[msg.sender]
                    require (100 * arg2) - (stor11[address(msg.sender)] * arg2) / 100 <= balanceOf[msg.sender]
                    balanceOf[msg.sender] -= (100 * arg2) - (stor11[address(msg.sender)] * arg2) / 100
                    require ((100 * arg2) - (stor11[address(msg.sender)] * arg2) / 100) + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = ((100 * arg2) - (stor11[address(msg.sender)] * arg2) / 100) + balanceOf[arg1]
                    emit Transfer(((100 * arg2) - (stor11[address(msg.sender)] * arg2) / 100), msg.sender, arg1);
            else:
                require stor11[address(msg.sender)] * arg2 / arg2 == stor11[address(msg.sender)]
                require stor11[address(msg.sender)] <= 100
                if not arg2:
                    if stor11[address(msg.sender)] * arg2 / 100 > 0:
                        require vaultAddress
                        require stor11[address(msg.sender)] * arg2 / 100 <= balanceOf[msg.sender]
                        require stor11[address(msg.sender)] * arg2 / 100 <= balanceOf[msg.sender]
                        balanceOf[msg.sender] -= stor11[address(msg.sender)] * arg2 / 100
                        require (stor11[address(msg.sender)] * arg2 / 100) + balanceOf[stor10] >= balanceOf[stor10]
                        balanceOf[stor10] += stor11[address(msg.sender)] * arg2 / 100
                        emit Transfer((stor11[address(msg.sender)] * arg2 / 100), msg.sender, vaultAddress);
                        emit TaxPayed(msg.sender, vaultAddress, stor11[address(msg.sender)] * arg2 / 100);
                    require arg1
                    require 0 <= balanceOf[msg.sender]
                    require 0 <= balanceOf[msg.sender]
                    require balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = balanceOf[arg1]
                    emit Transfer(0, msg.sender, arg1);
                else:
                    require (100 * arg2) - (stor11[address(msg.sender)] * arg2) / arg2 == -stor11[address(msg.sender)] + 100
                    if stor11[address(msg.sender)] * arg2 / 100 > 0:
                        require vaultAddress
                        require stor11[address(msg.sender)] * arg2 / 100 <= balanceOf[msg.sender]
                        require stor11[address(msg.sender)] * arg2 / 100 <= balanceOf[msg.sender]
                        balanceOf[msg.sender] -= stor11[address(msg.sender)] * arg2 / 100
                        require (stor11[address(msg.sender)] * arg2 / 100) + balanceOf[stor10] >= balanceOf[stor10]
                        balanceOf[stor10] += stor11[address(msg.sender)] * arg2 / 100
                        emit Transfer((stor11[address(msg.sender)] * arg2 / 100), msg.sender, vaultAddress);
                        emit TaxPayed(msg.sender, vaultAddress, stor11[address(msg.sender)] * arg2 / 100);
                    require arg1
                    require (100 * arg2) - (stor11[address(msg.sender)] * arg2) / 100 <= balanceOf[msg.sender]
                    require (100 * arg2) - (stor11[address(msg.sender)] * arg2) / 100 <= balanceOf[msg.sender]
                    balanceOf[msg.sender] -= (100 * arg2) - (stor11[address(msg.sender)] * arg2) / 100
                    require ((100 * arg2) - (stor11[address(msg.sender)] * arg2) / 100) + balanceOf[arg1] >= balanceOf[arg1]
                    balanceOf[address(arg1)] = ((100 * arg2) - (stor11[address(msg.sender)] * arg2) / 100) + balanceOf[arg1]
                    emit Transfer(((100 * arg2) - (stor11[address(msg.sender)] * arg2) / 100), msg.sender, arg1);
    if not mintedBy[address(arg1)].field_0:
        players++
    mintedBy[address(arg1)].field_0++
    mintedBy[msg.sender].field_0++
    totalTxs++
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor13[address(arg1)]:
        require arg2
        require arg3 <= balanceOf[address(arg1)]
        require arg3 <= allowance[address(arg1)][msg.sender]
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require arg3 + balanceOf[arg2] >= balanceOf[arg2]
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        require arg3 <= allowance[address(arg1)][msg.sender]
        allowance[address(arg1)][msg.sender] -= arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if not stor12[address(arg1)]:
            if not arg3:
                if not arg3:
                    require arg2
                    require 0 <= balanceOf[address(arg1)]
                    require 0 <= allowance[address(arg1)][msg.sender]
                    require 0 <= balanceOf[address(arg1)]
                    require balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = balanceOf[arg2]
                    require 0 <= allowance[address(arg1)][msg.sender]
                    emit Transfer(0, arg1, arg2);
                else:
                    require 90 * arg3 / arg3 == 90
                    require arg2
                    require 90 * arg3 / 100 <= balanceOf[address(arg1)]
                    require 90 * arg3 / 100 <= allowance[address(arg1)][msg.sender]
                    require 90 * arg3 / 100 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= 90 * arg3 / 100
                    require (90 * arg3 / 100) + balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = (90 * arg3 / 100) + balanceOf[arg2]
                    require 90 * arg3 / 100 <= allowance[address(arg1)][msg.sender]
                    allowance[address(arg1)][msg.sender] -= 90 * arg3 / 100
                    emit Transfer((90 * arg3 / 100), arg1, arg2);
            else:
                require 10 * arg3 / arg3 == 10
                if not arg3:
                    if 10 * arg3 / 100 > 0:
                        require vaultAddress
                        require 10 * arg3 / 100 <= balanceOf[address(arg1)]
                        require 10 * arg3 / 100 <= allowance[address(arg1)][msg.sender]
                        require 10 * arg3 / 100 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= 10 * arg3 / 100
                        require (10 * arg3 / 100) + balanceOf[stor10] >= balanceOf[stor10]
                        balanceOf[stor10] += 10 * arg3 / 100
                        require 10 * arg3 / 100 <= allowance[address(arg1)][msg.sender]
                        allowance[address(arg1)][msg.sender] -= 10 * arg3 / 100
                        emit Transfer((10 * arg3 / 100), arg1, vaultAddress);
                        emit TaxPayed(address(arg1), vaultAddress, 10 * arg3 / 100);
                    require arg2
                    require 0 <= balanceOf[address(arg1)]
                    require 0 <= allowance[address(arg1)][msg.sender]
                    require 0 <= balanceOf[address(arg1)]
                    require balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = balanceOf[arg2]
                    require 0 <= allowance[address(arg1)][msg.sender]
                    emit Transfer(0, arg1, arg2);
                else:
                    require 90 * arg3 / arg3 == 90
                    if 10 * arg3 / 100 > 0:
                        require vaultAddress
                        require 10 * arg3 / 100 <= balanceOf[address(arg1)]
                        require 10 * arg3 / 100 <= allowance[address(arg1)][msg.sender]
                        require 10 * arg3 / 100 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= 10 * arg3 / 100
                        require (10 * arg3 / 100) + balanceOf[stor10] >= balanceOf[stor10]
                        balanceOf[stor10] += 10 * arg3 / 100
                        require 10 * arg3 / 100 <= allowance[address(arg1)][msg.sender]
                        allowance[address(arg1)][msg.sender] -= 10 * arg3 / 100
                        emit Transfer((10 * arg3 / 100), arg1, vaultAddress);
                        emit TaxPayed(address(arg1), vaultAddress, 10 * arg3 / 100);
                    require arg2
                    require 90 * arg3 / 100 <= balanceOf[address(arg1)]
                    require 90 * arg3 / 100 <= allowance[address(arg1)][msg.sender]
                    require 90 * arg3 / 100 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= 90 * arg3 / 100
                    require (90 * arg3 / 100) + balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = (90 * arg3 / 100) + balanceOf[arg2]
                    require 90 * arg3 / 100 <= allowance[address(arg1)][msg.sender]
                    allowance[address(arg1)][msg.sender] -= 90 * arg3 / 100
                    emit Transfer((90 * arg3 / 100), arg1, arg2);
        else:
            if not arg3:
                require stor11[address(arg1)] <= 100
                if not arg3:
                    require arg2
                    require 0 <= balanceOf[address(arg1)]
                    require 0 <= allowance[address(arg1)][msg.sender]
                    require 0 <= balanceOf[address(arg1)]
                    require balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = balanceOf[arg2]
                    require 0 <= allowance[address(arg1)][msg.sender]
                    emit Transfer(0, arg1, arg2);
                else:
                    require (100 * arg3) - (stor11[address(arg1)] * arg3) / arg3 == -stor11[address(arg1)] + 100
                    require arg2
                    require (100 * arg3) - (stor11[address(arg1)] * arg3) / 100 <= balanceOf[address(arg1)]
                    require (100 * arg3) - (stor11[address(arg1)] * arg3) / 100 <= allowance[address(arg1)][msg.sender]
                    require (100 * arg3) - (stor11[address(arg1)] * arg3) / 100 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= (100 * arg3) - (stor11[address(arg1)] * arg3) / 100
                    require ((100 * arg3) - (stor11[address(arg1)] * arg3) / 100) + balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = ((100 * arg3) - (stor11[address(arg1)] * arg3) / 100) + balanceOf[arg2]
                    require (100 * arg3) - (stor11[address(arg1)] * arg3) / 100 <= allowance[address(arg1)][msg.sender]
                    allowance[address(arg1)][msg.sender] -= (100 * arg3) - (stor11[address(arg1)] * arg3) / 100
                    emit Transfer(((100 * arg3) - (stor11[address(arg1)] * arg3) / 100), arg1, arg2);
            else:
                require stor11[address(arg1)] * arg3 / arg3 == stor11[address(arg1)]
                require stor11[address(arg1)] <= 100
                if not arg3:
                    if stor11[address(arg1)] * arg3 / 100 > 0:
                        require vaultAddress
                        require stor11[address(arg1)] * arg3 / 100 <= balanceOf[address(arg1)]
                        require stor11[address(arg1)] * arg3 / 100 <= allowance[address(arg1)][msg.sender]
                        require stor11[address(arg1)] * arg3 / 100 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= stor11[address(arg1)] * arg3 / 100
                        require (stor11[address(arg1)] * arg3 / 100) + balanceOf[stor10] >= balanceOf[stor10]
                        balanceOf[stor10] += stor11[address(arg1)] * arg3 / 100
                        require stor11[address(arg1)] * arg3 / 100 <= allowance[address(arg1)][msg.sender]
                        allowance[address(arg1)][msg.sender] -= stor11[address(arg1)] * arg3 / 100
                        emit Transfer((stor11[address(arg1)] * arg3 / 100), arg1, vaultAddress);
                        emit TaxPayed(address(arg1), vaultAddress, stor11[address(arg1)] * arg3 / 100);
                    require arg2
                    require 0 <= balanceOf[address(arg1)]
                    require 0 <= allowance[address(arg1)][msg.sender]
                    require 0 <= balanceOf[address(arg1)]
                    require balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = balanceOf[arg2]
                    require 0 <= allowance[address(arg1)][msg.sender]
                    emit Transfer(0, arg1, arg2);
                else:
                    require (100 * arg3) - (stor11[address(arg1)] * arg3) / arg3 == -stor11[address(arg1)] + 100
                    if stor11[address(arg1)] * arg3 / 100 > 0:
                        require vaultAddress
                        require stor11[address(arg1)] * arg3 / 100 <= balanceOf[address(arg1)]
                        require stor11[address(arg1)] * arg3 / 100 <= allowance[address(arg1)][msg.sender]
                        require stor11[address(arg1)] * arg3 / 100 <= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] -= stor11[address(arg1)] * arg3 / 100
                        require (stor11[address(arg1)] * arg3 / 100) + balanceOf[stor10] >= balanceOf[stor10]
                        balanceOf[stor10] += stor11[address(arg1)] * arg3 / 100
                        require stor11[address(arg1)] * arg3 / 100 <= allowance[address(arg1)][msg.sender]
                        allowance[address(arg1)][msg.sender] -= stor11[address(arg1)] * arg3 / 100
                        emit Transfer((stor11[address(arg1)] * arg3 / 100), arg1, vaultAddress);
                        emit TaxPayed(address(arg1), vaultAddress, stor11[address(arg1)] * arg3 / 100);
                    require arg2
                    require (100 * arg3) - (stor11[address(arg1)] * arg3) / 100 <= balanceOf[address(arg1)]
                    require (100 * arg3) - (stor11[address(arg1)] * arg3) / 100 <= allowance[address(arg1)][msg.sender]
                    require (100 * arg3) - (stor11[address(arg1)] * arg3) / 100 <= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] -= (100 * arg3) - (stor11[address(arg1)] * arg3) / 100
                    require ((100 * arg3) - (stor11[address(arg1)] * arg3) / 100) + balanceOf[arg2] >= balanceOf[arg2]
                    balanceOf[address(arg2)] = ((100 * arg3) - (stor11[address(arg1)] * arg3) / 100) + balanceOf[arg2]
                    require (100 * arg3) - (stor11[address(arg1)] * arg3) / 100 <= allowance[address(arg1)][msg.sender]
                    allowance[address(arg1)][msg.sender] -= (100 * arg3) - (stor11[address(arg1)] * arg3) / 100
                    emit Transfer(((100 * arg3) - (stor11[address(arg1)] * arg3) / 100), arg1, arg2);
    if not mintedBy[address(arg2)].field_0:
        players++
    mintedBy[address(arg2)].field_0++
    mintedBy[arg1].field_0++
    totalTxs++
    return 1
}



}
