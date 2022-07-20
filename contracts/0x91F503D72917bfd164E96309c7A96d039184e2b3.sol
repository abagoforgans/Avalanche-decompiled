contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
uint256 sub_45747072;
mapping of struct sub_c2fe9002;
mapping of uint256 sub_2e4c7e88;
mapping of uint256 sub_868374bd;
mapping of uint256 sub_acc8dcae;

function sub_2e4c7e88(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2e4c7e88[arg1]
}

function sub_45747072(?) {
    return sub_45747072
}

function sub_868374bd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_868374bd[arg1]
}

function owner() {
    return owner
}

function sub_acc8dcae(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_acc8dcae[arg1]
}

function sub_c2fe9002(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_c2fe9002[arg1][arg2].field_0, 
           sub_c2fe9002[arg1][arg2].field_256,
           sub_c2fe9002[arg1][arg2].field_512,
           sub_c2fe9002[arg1][arg2].field_768,
           sub_c2fe9002[arg1][arg2].field_1024,
           bool(sub_c2fe9002[arg1][arg2].field_1280),
           bool(sub_c2fe9002[arg1][arg2].field_1288)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function setRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'cannot setup bellow zero'
    if arg1 > 100:
        revert with 0, 'cannot setup more than 100'
    sub_45747072 = arg1
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

function sub_c0b1c35c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not sub_c2fe9002[address(arg1)][arg2].field_1288:
        revert with 0, 'Token not listed'
    if sub_c2fe9002[address(arg1)][arg2].field_512 != msg.sender:
        revert with 0, 'Please delist your own token'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_c2fe9002[address(arg1)][arg2].field_0 = address(arg1)
    sub_c2fe9002[address(arg1)][arg2].field_256 = arg2
    sub_c2fe9002[address(arg1)][arg2].field_512 = 0
    sub_c2fe9002[address(arg1)][arg2].field_768 = 0
    sub_c2fe9002[address(arg1)][arg2].field_768 = 0
    sub_c2fe9002[address(arg1)][arg2].field_1024 = 0
    sub_c2fe9002[address(arg1)][arg2].field_1024 = 0
    sub_c2fe9002[address(arg1)][arg2].field_1280 = 0
    sub_c2fe9002[address(arg1)][arg2].field_1288 = 0
    emit 0x65f680fb: 0, address(arg1), arg2
    stor0 = 1
}

function listItem(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg3 <= 0:
        revert with 0, 'Price must be at least 1 wei'
    require ext_code.size(arg1)
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Please list your own token'
    sub_c2fe9002[address(arg1)][arg2].field_0 = arg1
    sub_c2fe9002[address(arg1)][arg2].field_256 = arg2
    sub_c2fe9002[address(arg1)][arg2].field_512 = msg.sender
    sub_c2fe9002[address(arg1)][arg2].field_768 = 0
    sub_c2fe9002[address(arg1)][arg2].field_1024 = 0
    sub_c2fe9002[address(arg1)][arg2].field_1024 = arg3
    sub_c2fe9002[address(arg1)][arg2].field_1280 = 0
    sub_c2fe9002[address(arg1)][arg2].field_1288 = 1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x586de7d6: msg.sender, 0, arg3, 0, arg1, arg2
    stor0 = 1
}

function buyItem(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not sub_c2fe9002[address(arg1)][arg2].field_1288:
        revert with 0, 'Token not listed'
    if sub_c2fe9002[address(arg1)][arg2].field_512 == msg.sender:
        revert with 0, 'Cannot buy own token'
    if sub_c2fe9002[address(arg1)][arg2].field_1024 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Please submit the asking price in order to complete the purchase'
    if msg.value and sub_45747072 > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value < msg.value * sub_45747072 / 100:
        revert with 'NH{q', 17
    call sub_c2fe9002[address(arg1)][arg2].field_512 with:
       value msg.value - (msg.value * sub_45747072 / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_c2fe9002[address(arg1)][arg2].field_768 = msg.sender
    sub_c2fe9002[address(arg1)][arg2].field_512 = 0
    sub_c2fe9002[address(arg1)][arg2].field_1280 = 1
    sub_c2fe9002[address(arg1)][arg2].field_1288 = 0
    if sub_2e4c7e88[address(arg1)] > -2:
        revert with 'NH{q', 17
    sub_2e4c7e88[address(arg1)]++
    if sub_acc8dcae[address(arg1)] > -sub_c2fe9002[address(arg1)][arg2].field_1024 - 1:
        revert with 'NH{q', 17
    sub_acc8dcae[address(arg1)] += sub_c2fe9002[address(arg1)][arg2].field_1024
    if sub_868374bd[address(arg1)] < sub_c2fe9002[address(arg1)][arg2].field_1024:
        sub_868374bd[address(arg1)] = sub_c2fe9002[address(arg1)][arg2].field_1024
    emit 0x65f680fb: 0, arg1, arg2
    emit ItemBought(sub_c2fe9002[address(arg1)][arg2].field_1024, arg1, arg2);
    stor0 = 1
}



}
