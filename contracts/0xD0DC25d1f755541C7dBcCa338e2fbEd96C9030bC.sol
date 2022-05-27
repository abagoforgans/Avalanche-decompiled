contract main {




// =====================  Runtime code  =====================


#
#  - sub_c168a402(?)
#  - withdraw(address arg1, address arg2, uint256 arg3)
#
address owner;
address sub_c63457a1Address;
address sub_d392eab1Address;
address mimAddress;
uint256 minAmount;
uint256 maxAmount;
uint256 salePrice;
uint256 startTimestamp;
uint256 endTimestamp;
uint256 sub_9e623ae4;
uint256 sellAmount;
uint256 sub_e58bf43a;
uint8 saleStarted;
uint256 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;

function sellAmount() {
    return sellAmount
}

function saleStarted() {
    return bool(uint8(saleStarted))
}

function maxAmount() {
    return maxAmount
}

function owner() {
    return owner
}

function minAmount() {
    return minAmount
}

function sub_9e623ae4(?) {
    return sub_9e623ae4
}

function mim() {
    return mimAddress
}

function endTimestamp() {
    return endTimestamp
}

function sub_c63457a1(?) {
    return sub_c63457a1Address
}

function sub_d392eab1(?) {
    return sub_d392eab1Address
}

function sub_e58bf43a(?) {
    return sub_e58bf43a
}

function startTimestamp() {
    return startTimestamp
}

function salePrice() {
    return salePrice
}

function whiteListed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function sub_fd44d96c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor13[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStart() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor12) = not bool(uint8(saleStarted)) or Mask(248, 8, uint256(stor12))
    return bool(uint8(saleStarted))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function calculateSaleQuote(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 'NH{q', 17
    if 10^9 * arg1 / 10^9 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if salePrice <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not salePrice:
        revert with 'NH{q', 18
    return (10^9 * arg1 / salePrice)
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10) {
    require calldata.size - 4 >= 320
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    require arg10 == arg10
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c63457a1Address = arg2
    mimAddress = arg3
    salePrice = arg7
    startTimestamp = arg8
    endTimestamp = arg9
    sub_d392eab1Address = arg1
    minAmount = arg4
    maxAmount = arg5
    sub_9e623ae4 = arg6
    sub_e58bf43a = arg10
    uint8(saleStarted) = 1
    return 1
}

function whiteListBuyers(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 14
        stor14[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 1
}



}
