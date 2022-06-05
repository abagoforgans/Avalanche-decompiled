contract main {




// =====================  Runtime code  =====================


const MAX_NFTS = 100

const NFT_PRICE = 10^18


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 totalSold;
mapping of uint8 stor2;
array of address sub_6107896e;

function hasSaleStarted() {
    return bool(uint8(stor0.field_160))
}

function sub_6107896e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 100
    return sub_6107896e[arg1]
}

function owner() {
    return owner
}

function totalSold() {
    return totalSold
}

function minters(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function pauseSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = 0
}

function startSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function buyTicket() payable {
    if not uint8(stor0.field_160):
        revert with 0, 'Presale hasn't started'
    if totalSold >= 100:
        revert with 0, 'Presale has already ended'
    if 10^18 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AVAX value does not match expected price'
    if stor2[address(msg.sender)]:
        revert with 0, 'Address has already bought one'
    if totalSold >= 100:
        revert with 'NH{q', 50
    sub_6107896e[stor1] = msg.sender
    stor2[address(msg.sender)] = 1
    if totalSold > -2:
        revert with 'NH{q', 17
    totalSold++
}



}
