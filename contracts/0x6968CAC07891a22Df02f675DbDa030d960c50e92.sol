contract main {




// =====================  Runtime code  =====================


#
#  - purchase(uint256 arg1)
#
address owner;
address nftAddress;
uint256 sub_63492eaf;
uint256 sub_d213255b;
uint256 sub_2636b945;
uint256 soldAmount;
uint256 sub_35fea882;
uint256 sub_ebfb0854;
uint8 openPresale;
uint8 sub_3fc80006; offset 8
uint256 stor8; offset 8
mapping of uint256 owned;
mapping of uint8 stor10;
mapping of uint8 stor11;

function sub_2636b945(?) {
    return sub_2636b945
}

function sub_35fea882(?) {
    return sub_35fea882
}

function sub_3fc80006(?) {
    return bool(sub_3fc80006)
}

function nft() {
    return nftAddress
}

function sub_63492eaf(?) {
    return sub_63492eaf
}

function getOwned(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return owned[address(arg1)]
}

function owner() {
    return owner
}

function openPresale() {
    return bool(openPresale)
}

function sub_c23b5701(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return owned[arg1]
}

function sub_d213255b(?) {
    return sub_d213255b
}

function sub_ebfb0854(?) {
    return sub_ebfb0854
}

function soldAmount() {
    return soldAmount
}

function _fallback() payable {
    revert
}

function getMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor10[address(arg1)]:
        return 2
    return 4
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setOpen(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    openPresale = uint8(arg1)
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10[address(arg1)]:
        return bool(stor10[address(arg1)])
    return bool(stor11[address(arg1)])
}

function sub_f222af33(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = Mask(248, 0, bool(arg1))
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
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

function sub_4974a094(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        if not cd[36]:
            mem[32] = 11
            stor11[mem[(32 * idx) + 140 len 20]] = 0
        else:
            mem[32] = 10
            stor10[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_50f13709(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        if not cd[36]:
            mem[32] = 11
            stor11[mem[(32 * idx) + 140 len 20]] = 1
        else:
            mem[32] = 10
            stor10[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
