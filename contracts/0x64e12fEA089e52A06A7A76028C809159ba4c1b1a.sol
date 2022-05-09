contract main {




// =====================  Runtime code  =====================


const sub_7378c2cf(?) = 'FNFT'

const sub_7f407235(?) = 'LOCK_MANAGER'

const sub_99ee24c6(?) = 'REVEST_TOKEN'

const sub_cb4966fb(?) = 'REVEST'

const sub_dd9795c6(?) = 'TOKEN_VAULT'

const sub_ee662922(?) = 'LIQUIDITY_TOKENS'

const ADMIN = 'ADMIN'

const METADATA = 'METADATA'

const ESCROW = 'ESCROW'


address owner;
uint256 sub_4a6c9235;
mapping of address sub_c8aa6ad6;
mapping of address sub_fe403304;
address lPsAddress;
address rewardsHandlerAddress;
address adminAddress;
address metadataHandlerAddress;
address revestTokenAddress;
address tokenVaultAddress;
address revestFNFTAddress;
address lockManagerAddress;
address revestAddress;

function getRevestToken() payable {
    return revestTokenAddress
}

function getMetadataHandler() payable {
    return metadataHandlerAddress
}

function getLockManager() payable {
    return lockManagerAddress
}

function getAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_c8aa6ad6[arg1]
}

function getDEX(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_fe403304[arg1]
}

function sub_4a6c9235(?) payable {
    return sub_4a6c9235
}

function getTokenVault() payable {
    return tokenVaultAddress
}

function getAdmin() payable {
    return adminAddress
}

function owner() payable {
    return owner
}

function getLPs() payable {
    return lPsAddress
}

function sub_c8aa6ad6(?) payable {
    require calldata.size - 4 >= 32
    return sub_c8aa6ad6[arg1]
}

function getRevestFNFT() payable {
    return revestFNFTAddress
}

function getRevest() payable {
    return revestAddress
}

function getRewardsHandler() payable {
    return rewardsHandlerAddress
}

function sub_fe403304(?) payable {
    require calldata.size - 4 >= 32
    return sub_fe403304[arg1]
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

function setLPs(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lPsAddress = arg1
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
}

function setRevest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    revestAddress = arg1
}

function setTokenVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenVaultAddress = arg1
}

function setRevestFNFT(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    revestFNFTAddress = arg1
}

function setRevestToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    revestTokenAddress = arg1
}

function setLockManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lockManagerAddress = arg1
}

function setRewardsHandler(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsHandlerAddress = arg1
}

function setMetadataHandler(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    metadataHandlerAddress = arg1
}

function setDex(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fe403304[stor1] = arg1
    if 1 > !sub_4a6c9235:
        revert with 'NH{q', 17
    sub_4a6c9235++
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

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8, address arg9) payable {
    require calldata.size - 4 >= 288
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg8
    lockManagerAddress = arg1
    revestTokenAddress = arg3
    tokenVaultAddress = arg4
    revestAddress = arg5
    revestFNFTAddress = arg6
    metadataHandlerAddress = arg7
    lPsAddress = arg2
    rewardsHandlerAddress = arg9
}



}
