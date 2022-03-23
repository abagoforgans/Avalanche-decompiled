contract main {




// =====================  Runtime code  =====================


const name = 'ARGENT'

const decimals = 18

const feeParts = 10^6

const symbol = 'XAG'

const feeDecimals = 6


uint8 stor0;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
uint256 stor4;
uint8 paused; offset 160
address proposedOwner;
address assetProtectionRoleAddress;
mapping of uint8 stor7;
address supplyControllerAddress;
uint256 stor8;
uint256 feeRate;
address feeControllerAddress;
uint256 stor10;
address feeRecipientAddress;
uint256 stor11;

function assetProtectionRole() {
    return assetProtectionRoleAddress
}

function totalSupply() {
    return totalSupply
}

function feeRecipient() {
    return address(feeRecipientAddress)
}

function paused() {
    return bool(paused)
}

function feeController() {
    return address(feeControllerAddress)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return address(owner)
}

function feeRate() {
    return feeRate
}

function proposedOwner() {
    return proposedOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isFrozen(address arg1) {
    return bool(stor7[address(arg1)])
}

function supplyController() {
    return address(supplyControllerAddress)
}

function _fallback() payable {
    revert
}

function getFeeFor(uint256 arg1) {
    if 0 == feeRate:
        return 0
    if not arg1:
        return 0
    require feeRate * arg1 / arg1 == feeRate
    return (feeRate * arg1 / 10^6)
}

function claimOwnership() {
    if proposedOwner != msg.sender:
        revert with 0, 'onlyProposedOwner'
    address(owner) = proposedOwner
    proposedOwner = 0
    emit OwnershipTransferred(address(owner), proposedOwner);
}

function pause() {
    if address(owner) != msg.sender:
        revert with 0, 32, 9, 0xef6f6e6c794f776e657200000000000000000000000000000000000000000000
    if paused:
        revert with 0, 'already paused'
    paused = 1
    emit Pause()
}

function unpause() {
    if address(owner) != msg.sender:
        revert with 0, 32, 9, 0xef6f6e6c794f776e657200000000000000000000000000000000000000000000
    if not paused:
        revert with 0, 'already unpaused'
    paused = 0
    emit Unpause()
}

function setFeeRate(uint256 arg1) {
    if address(feeControllerAddress) != msg.sender:
        revert with 0, 'only FeeController'
    if arg1 > 10^6:
        revert with 0, 'cannot set fee rate above 100%'
    feeRate = arg1
    emit FeeRateSet(feeRate, arg1);
}

function freeze(address arg1) {
    if assetProtectionRoleAddress != msg.sender:
        revert with 0, 'onlyAssetProtectionRole'
    if stor7[address(arg1)]:
        revert with 0, 'address already frozen'
    stor7[address(arg1)] = 1
    emit AddressFrozen(arg1);
}

function unfreeze(address arg1) {
    if assetProtectionRoleAddress != msg.sender:
        revert with 0, 'onlyAssetProtectionRole'
    if not stor7[address(arg1)]:
        revert with 0, 'address already unfrozen'
    stor7[address(arg1)] = 0
    emit AddressUnfrozen(arg1);
}

function approve(address arg1, uint256 arg2) {
    if paused:
        revert with 0, 'whenNotPaused'
    if stor7[address(arg1)]:
        revert with 0, 'address frozen'
    if stor7[msg.sender]:
        revert with 0, 'address frozen'
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setAssetProtectionRole(address arg1) {
    if assetProtectionRoleAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only assetProtectionRole or Owner'
    emit AssetProtectionRoleSet(assetProtectionRoleAddress, arg1);
    assetProtectionRoleAddress = arg1
}

function setFeeRecipient(address arg1) {
    if address(feeControllerAddress) != msg.sender:
        revert with 0, 'only FeeController'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot set fee recipient to address zero'
    address(feeRecipientAddress) = arg1
    emit FeeRecipientSet(address(feeRecipientAddress), arg1);
}

function sub_1b21aed6(?) {
    if address(owner) != msg.sender:
        revert with 0, 32, 9, 0xef6f6e6c794f776e657200000000000000000000000000000000000000000000
    balanceOf[this.address] = 0
    require balanceOf[this.address] + balanceOf[address(stor4)] >= balanceOf[address(stor4)]
    balanceOf[address(stor4)] += balanceOf[this.address]
    emit Transfer(balanceOf[this.address], this.address, address(owner));
}

function disregardProposeOwner() {
    if proposedOwner != msg.sender:
        if address(owner) != msg.sender:
            revert with 0, 'only proposedOwner or owner'
    if not proposedOwner:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'can only disregard a proposed owner that was previously set'
    proposedOwner = 0
    emit OwnershipTransferDisregarded(proposedOwner);
}

function setFeeController(address arg1) {
    if address(feeControllerAddress) != msg.sender:
        if address(owner) != msg.sender:
            revert with 0, 'only FeeController or Owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot set fee controller to address zero'
    address(feeControllerAddress) = arg1
    emit FeeControllerSet(address(feeControllerAddress), arg1);
}

function increaseSupply(uint256 arg1) {
    if address(supplyControllerAddress) != msg.sender:
        revert with 0, 'onlySupplyController'
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    require arg1 + balanceOf[address(stor8)] >= balanceOf[address(stor8)]
    balanceOf[address(stor8)] += arg1
    emit SupplyIncreased(arg1, address(supplyControllerAddress));
    emit Transfer(arg1, 0, address(supplyControllerAddress));
    return 1
}

function setSupplyController(address arg1) {
    if address(supplyControllerAddress) != msg.sender:
        if address(owner) != msg.sender:
            revert with 0, 'only SupplyController or Owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot set supply controller to address zero'
    emit SupplyControllerSet(address(supplyControllerAddress), arg1);
    address(supplyControllerAddress) = arg1
}

function initialize() {
    if stor0:
        revert with 0, 'Contract is already initialized'
    uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
    proposedOwner = 0
    assetProtectionRoleAddress = 0
    totalSupply = 0
    uint256(stor8) = msg.sender or Mask(96, 160, uint256(stor8))
    feeRate = 0
    uint256(stor10) = msg.sender or Mask(96, 160, uint256(stor10))
    uint256(stor11) = msg.sender or Mask(96, 160, uint256(stor11))
    stor0 = 1
}

function proposeOwner(address arg1) {
    if address(owner) != msg.sender:
        revert with 0, 32, 9, 0xef6f6e6c794f776e657200000000000000000000000000000000000000000000
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot transfer ownership to address zero'
    if arg1 == msg.sender:
        revert with 0, 'caller already is owner'
    proposedOwner = arg1
    emit OwnershipTransferProposed(address(owner), arg1);
}

function wipeFrozenAddress(address arg1) {
    if assetProtectionRoleAddress != msg.sender:
        revert with 0, 'onlyAssetProtectionRole'
    if not stor7[address(arg1)]:
        revert with 0, 'address is not frozen'
    balanceOf[address(arg1)] = 0
    require balanceOf[address(arg1)] <= totalSupply
    totalSupply -= balanceOf[address(arg1)]
    emit FrozenAddressWiped(arg1);
    emit SupplyDecreased(balanceOf[address(arg1)], arg1);
    emit Transfer(balanceOf[address(arg1)], arg1, 0);
}

function decreaseSupply(uint256 arg1) {
    if address(supplyControllerAddress) != msg.sender:
        revert with 0, 'onlySupplyController'
    if arg1 > balanceOf[address(stor8)]:
        revert with 0, 'not enough supply'
    require arg1 <= balanceOf[address(stor8)]
    balanceOf[address(stor8)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit SupplyDecreased(arg1, address(supplyControllerAddress));
    emit Transfer(arg1, address(supplyControllerAddress), 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if paused:
        revert with 0, 'whenNotPaused'
    if not arg1:
        revert with 0, 'cannot transfer to address zero'
    if stor7[address(arg1)]:
        revert with 0, 'address frozen'
    if stor7[msg.sender]:
        revert with 0, 'address frozen'
    if arg2 > balanceOf[msg.sender]:
        revert with 0, 'insufficient funds'
    if 0 == feeRate:
        require 0 <= arg2
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
        emit Transfer(0, msg.sender, address(feeRecipientAddress));
    else:
        if not arg2:
            require 0 <= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
            emit Transfer(0, msg.sender, address(feeRecipientAddress));
        else:
            require feeRate * arg2 / arg2 == feeRate
            require feeRate * arg2 / 10^6 <= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require arg2 - (feeRate * arg2 / 10^6) + balanceOf[arg1] >= balanceOf[arg1]
            balanceOf[address(arg1)] = arg2 - (feeRate * arg2 / 10^6) + balanceOf[arg1]
            emit Transfer((arg2 - (feeRate * arg2 / 10^6)), msg.sender, arg1);
            emit Transfer((feeRate * arg2 / 10^6), msg.sender, address(feeRecipientAddress));
            if feeRate * arg2 / 10^6 > 0:
                require (feeRate * arg2 / 10^6) + balanceOf[address(stor11)] >= balanceOf[address(stor11)]
                balanceOf[address(stor11)] += feeRate * arg2 / 10^6
                emit FeeCollected((feeRate * arg2 / 10^6), msg.sender, address(feeRecipientAddress));
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if paused:
        revert with 0, 'whenNotPaused'
    if not arg2:
        revert with 0, 'cannot transfer to address zero'
    if stor7[address(arg2)]:
        revert with 0, 'address frozen'
    if stor7[address(arg1)]:
        revert with 0, 'address frozen'
    if stor7[msg.sender]:
        revert with 0, 'address frozen'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'insufficient funds'
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'insufficient allowance'
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    if 0 == feeRate:
        require 0 <= arg3
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require arg3 + balanceOf[arg2] >= balanceOf[arg2]
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        emit Transfer(0, arg1, address(feeRecipientAddress));
    else:
        if not arg3:
            require 0 <= arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require arg3 + balanceOf[arg2] >= balanceOf[arg2]
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            emit Transfer(arg3, arg1, arg2);
            emit Transfer(0, arg1, address(feeRecipientAddress));
        else:
            require feeRate * arg3 / arg3 == feeRate
            require feeRate * arg3 / 10^6 <= arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require arg3 - (feeRate * arg3 / 10^6) + balanceOf[arg2] >= balanceOf[arg2]
            balanceOf[address(arg2)] = arg3 - (feeRate * arg3 / 10^6) + balanceOf[arg2]
            emit Transfer((arg3 - (feeRate * arg3 / 10^6)), arg1, arg2);
            emit Transfer((feeRate * arg3 / 10^6), arg1, address(feeRecipientAddress));
            if feeRate * arg3 / 10^6 > 0:
                require (feeRate * arg3 / 10^6) + balanceOf[address(stor11)] >= balanceOf[address(stor11)]
                balanceOf[address(stor11)] += feeRate * arg3 / 10^6
                emit FeeCollected((feeRate * arg3 / 10^6), arg1, address(feeRecipientAddress));
    return 1
}



}
