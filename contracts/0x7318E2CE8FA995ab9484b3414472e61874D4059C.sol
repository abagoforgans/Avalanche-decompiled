contract main {




// =====================  Runtime code  =====================


#
#  - rescue(address arg1, address arg2, uint256 arg3)
#  - mint(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address vaultAddress;
address usdtAddress;
uint256 price;
uint256 sub_4a92743e;
mapping of uint256 sub_2b733e93;
array of address users;

function sub_2b733e93(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2b733e93[arg1]
}

function usdt() payable {
    return usdtAddress
}

function users(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= users.length:
        revert with 0, 50
    return users[arg1]
}

function sub_4a92743e(?) payable {
    return sub_4a92743e
}

function owner() payable {
    return owner
}

function price() payable {
    return price
}

function usersLength() payable {
    return users.length
}

function vault() payable {
    return vaultAddress
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

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function sub_f2096daa(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4a92743e = arg1
}

function setUsdt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    usdtAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddress = arg1
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

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    vaultAddress = arg1
    usdtAddress = arg2
    price = arg3
    sub_4a92743e = arg4
}



}
