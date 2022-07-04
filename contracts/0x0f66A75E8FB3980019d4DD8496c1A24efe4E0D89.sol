contract main {




// =====================  Runtime code  =====================


#
#  - sub_60072b11(?)
#  - sub_617a3cd8(?)
#
const getChainName = 'Avalanche', 0


address owner;
uint256 tokenDecimals;

function tokenDecimals() payable {
    return tokenDecimals
}

function owner() payable {
    return owner
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

function setTokenDecimals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenDecimals = arg1
    emit 0x3843ff36: arg1
}

function sub_d94017b2(?) payable {
    require calldata.size - 4 >= 64
    return 32, 151, 
           'This NFT represents your positio', 'n as Liquidity Provider on Hyphe', 0, 'Avalanche', '. To visit the bridge, visit [Hy', 'phen](https://hyphen.biconomy.io', 10542, 0 >> 952,
           0
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



}
