contract main {




// =====================  Runtime code  =====================


const checkContractBalance = eth.balance(this.address)


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address tokenAddress; offset 16
uint256 presalePrice;
address owner;
uint256 stor2;
mapping of uint8 stor3;
mapping of uint256 sub_d8797262;
uint256 sub_36c75d19;
uint8 stor6;

function presalePrice() {
    return presalePrice
}

function sub_36c75d19(?) {
    return sub_36c75d19
}

function paused() {
    return bool(stor6)
}

function owner() {
    return address(owner)
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function sub_d8797262(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d8797262[arg1]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function unpause() {
    if address(owner) != msg.sender:
        revert with 0, 'you are not owner'
    require stor6
    stor6 = 0
    emit Unpause()
}

function pause() {
    if address(owner) != msg.sender:
        revert with 0, 'you are not owner'
    require not stor6
    stor6 = 1
    emit Pause()
}

function sub_4f7fbdde(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'you are not owner'
    sub_36c75d19 = arg1
}

function updatePresalePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'you are not owner'
    presalePrice = arg1
}

function addAddressToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'you are not owner'
    if stor3[address(arg1)]:
        return 0
    stor3[address(arg1)] = 1
    emit WhitelistedAddressAdded(arg1);
    return 1
}

function sub_6f96e022(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'you are not owner'
    if eth.balance(this.address) < arg1:
        revert with 0, 'contract have not enough balance'
    call address(owner) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_862335b9(?) {
    require calldata.size - 4 >= 32
    if not -presalePrice:
        return 0
    if presalePrice and arg1 > -1 / presalePrice:
        revert with 0, 17
    if not presalePrice:
        revert with 0, 18
    if presalePrice * arg1 / presalePrice != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (presalePrice * arg1)
}

function sub_a15e50e4(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'you are not owner'
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        tokenAddress = arg1
        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
        sub_36c75d19 = 750 * 10^18
        presalePrice = 17647058823529400
        stor6 = 0
    else:
        uint16(stor0.field_0) = 257
        tokenAddress = arg1
        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
        sub_36c75d19 = 750 * 10^18
        presalePrice = 17647058823529400
        stor6 = 0
        uint8(stor0.field_8) = 0
}

function Buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not stor6
    if sub_d8797262[msg.sender] > !arg1:
        revert with 0, 17
    if sub_d8797262[msg.sender] + arg1 < sub_d8797262[msg.sender]:
        revert with 0, 'SafeMath: addition overflow!'
    if sub_d8797262[msg.sender] + arg1 > sub_36c75d19:
        revert with 0, 'Limit exceeded'
    if not stor3[msg.sender]:
        revert with 0, 'You are not Whitelist!'
    if not -presalePrice:
        if msg.value < 0:
            revert with 0, 'low price'
    else:
        if presalePrice and arg1 > -1 / presalePrice:
            revert with 0, 17
        if not presalePrice:
            revert with 0, 18
        if presalePrice * arg1 / presalePrice != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if msg.value < presalePrice * arg1 / 10^18:
            revert with 0, 'low price'
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_d8797262[msg.sender] > !arg1:
        revert with 0, 17
    sub_d8797262[msg.sender] += arg1
}

function addAddressesToWhitelist(address[] arg1) {
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
    if address(owner) != msg.sender:
        revert with 0, 'you are not owner'
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        if address(owner) != msg.sender:
            revert with 0, 'you are not owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        if stor3[mem[(32 * idx) + 140 len 20]]:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[address(mem[(32 * idx) + 128])] = 1
        mem[ceil32(32 * arg1.length) + 97] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressAdded(mem[ceil32(32 * arg1.length) + 97]);
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}



}
