contract main {




// =====================  Runtime code  =====================


address owner;
address lockedLiquidityAddress;
address devWalletAddress;
address marketingWalletAddress;
address buybackWalletAddress;
mapping of uint8 stor5;

function marketingWallet() payable {
    return marketingWalletAddress
}

function owner() payable {
    return owner
}

function devWallet() payable {
    return devWalletAddress
}

function lockedLiquidity() payable {
    return lockedLiquidityAddress
}

function buybackWallet() payable {
    return buybackWalletAddress
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
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

function authorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[address(arg1)]:
        revert with 0, 'Address is already authorized'
    stor5[address(arg1)] = 1
    emit AuthorizationGranted(arg1);
}

function setDevWalletAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must supply a non-zero address'
    emit 0x2a22d8de: devWalletAddress, arg1
    devWalletAddress = arg1
}

function unauthorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is already NOT authorized'
    stor5[address(arg1)] = 0
    emit AuthorizationRevoked(arg1);
}

function setBuybackWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must supply a non-zero address'
    emit 0x3b6e60c5: buybackWalletAddress, arg1
    buybackWalletAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    stor5[address(arg1)] = 1
    emit OwnershipTransferred(owner, arg1);
}

function setMarketingWalletAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must supply a non-zero address'
    emit MarketingWalletChanged(marketingWalletAddress, arg1);
    marketingWalletAddress = arg1
}

function setLockedLiquidityAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1 - lockedLiquidityAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The same liquidity address is used'
    emit 0x1e611235: lockedLiquidityAddress, arg1
    lockedLiquidityAddress = arg1
}



}
