contract main {




// =====================  Runtime code  =====================


address owner;
array of address collections;
uint256 royalty;
uint256 marketing;
uint256 marketingFee;
array of struct sub_27bf56e5;
mapping of uint256 sub_6df2e0b5;
mapping of uint8 stor7;

function sub_27bf56e5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_27bf56e5[address(arg1)].field_0
}

function royalty() {
    return royalty
}

function marketing() {
    return marketing
}

function sub_3472e193(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_27bf56e5[arg1].field_0
    return sub_27bf56e5[arg1][arg2].field_0, 
           sub_27bf56e5[arg1][arg2].field_256,
           sub_27bf56e5[arg1][arg2].field_512,
           sub_27bf56e5[arg1][arg2].field_768,
           bool(sub_27bf56e5[arg1][arg2].field_1024)
}

function sub_50d03611(?) {
    return collections.length
}

function marketingFee() {
    return marketingFee
}

function sub_6df2e0b5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6df2e0b5[address(arg1)]
}

function sub_8728f59a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return bool(stor7[arg1][arg2])
}

function owner() {
    return owner
}

function sub_c07a2820(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6df2e0b5[arg1]
}

function collections(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < collections.length
    return collections[arg1]
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

function setRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    royalty = arg1
}

function sub_bc4a7b67(?) {
    if sub_6df2e0b5[address(msg.sender)] <= 0:
        revert with 0, 'Claim Amount is not enough.'
    call msg.sender with:
       value sub_6df2e0b5[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_6df2e0b5[address(msg.sender)] = 0
    return 1
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

function sub_39788bde(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if marketingFee <= 0:
        revert with 0, 'Marketing fee is not enough.'
    call msg.sender with:
       value marketingFee wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    marketingFee = 0
}

function addCollection(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < collections.length:
        mem[0] = 1
        if idx == -1:
            revert with 'NH{q', 17
        if collections[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if s:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Item is already deployed on market.'
    collections.length++
    collections[collections.length] = arg1
    emit 0x6077476a: arg1
}

function removeCollection(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < collections.length:
        mem[0] = 1
        if collections[idx] == arg1:
            if collections.length < 1:
                revert with 'NH{q', 17
            if collections.length - 1 >= collections.length:
                revert with 'NH{q', 50
            if idx >= collections.length:
                revert with 'NH{q', 50
            collections[idx] = collections[collections.length]
            if not collections.length:
                revert with 'NH{q', 49
            mem[0] = 1
            collections[collections.length] = 0
            collections.length--
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    emit 0xeff1f285: arg1
}

function sub_2aa78b73(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == bool(arg3)
    require arg4 == arg4
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 0, 'Could not find item'
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    if sub_27bf56e5[address(arg1)][arg2].field_0 != arg2:
        revert with 0, 'Could not find item'
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    staticcall address(arg1).0x6352211e with:
            gas gas_remaining wei
           args sub_27bf56e5[address(arg1)][arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender does not own the item'
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    if arg4 <= 0:
        if bool(arg3) == bool(sub_27bf56e5[address(arg1)][arg2].field_1024):
            revert with 0, 'price must be bigger than 0 or you don't feel to need update for sale.'
    else:
        if arg4 == sub_27bf56e5[address(arg1)][arg2].field_768:
            if arg2 >= sub_27bf56e5[address(arg1)].field_0:
                revert with 'NH{q', 50
            if bool(arg3) == bool(sub_27bf56e5[address(arg1)][arg2].field_1024):
                revert with 0, 'price must be bigger than 0 or you don't feel to need update for sale.'
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    sub_27bf56e5[address(arg1)][arg2].field_768 = arg4
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    sub_27bf56e5[address(arg1)][arg2].field_1024 = uint8(bool(arg3))
    emit 0xceba6f72: address(arg1), arg2, sub_27bf56e5[address(arg1)][arg2].field_256, bool(arg3), arg4
}

function sub_3f1aeea4(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    idx = 0
    s = 0
    while idx < collections.length:
        mem[0] = 1
        if idx == -1:
            revert with 'NH{q', 17
        if collections[idx] != address(arg1):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Collection is not deployed on market-place.'
    staticcall address(arg1).0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender does not own the item'
    staticcall address(arg1).getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Market is not approved'
    if stor7[address(arg1)][arg2]:
        revert with 0, 'This token is already deployed.'
    sub_27bf56e5[address(arg1)].field_0++
    sub_27bf56e5[address(arg1)][sub_27bf56e5[address(arg1)].field_0].field_0 = sub_27bf56e5[address(arg1)].field_0
    sub_27bf56e5[address(arg1)][sub_27bf56e5[address(arg1)].field_0].field_256 = arg2
    sub_27bf56e5[address(arg1)][sub_27bf56e5[address(arg1)].field_0].field_512 = msg.sender
    sub_27bf56e5[address(arg1)][sub_27bf56e5[address(arg1)].field_0].field_768 = arg3
    sub_27bf56e5[address(arg1)][sub_27bf56e5[address(arg1)].field_0].field_1024 = 1
    if sub_27bf56e5[address(arg1)].field_0 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    if sub_27bf56e5[address(arg1)][sub_27bf56e5[address(arg1)].field_0].field_0 != sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 1
    stor7[address(arg1)][arg2] = 1
    emit 0x3665e1cc: address(arg1), sub_27bf56e5[address(arg1)].field_0, arg2, msg.sender, arg3
    return sub_27bf56e5[address(arg1)].field_0
}

function buyItem(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 0, 'Could not find item'
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    if sub_27bf56e5[address(arg1)][arg2].field_0 != arg2:
        revert with 0, 'Could not find item'
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    if not sub_27bf56e5[address(arg1)][arg2].field_1024:
        revert with 0, 'Item is not for sale.'
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    staticcall arg1.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args sub_27bf56e5[address(arg1)][arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Market is not approved'
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    if msg.value < sub_27bf56e5[address(arg1)][arg2].field_768:
        revert with 0, 'Not enough funds sent.'
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args sub_27bf56e5[address(arg1)][arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        revert with 0, 'Owner of item can't buy item.'
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    staticcall arg1.0x6352211e with:
            gas gas_remaining wei
           args sub_27bf56e5[address(arg1)][arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.value and royalty > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value and marketing > -1 / msg.value:
        revert with 'NH{q', 17
    if marketingFee > -(msg.value * marketing / 10^6) - 1:
        revert with 'NH{q', 17
    marketingFee += msg.value * marketing / 10^6
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    if sub_6df2e0b5[stor5[address(arg1)][arg2].field_512] > -(msg.value * royalty / 10^6) - 1:
        revert with 'NH{q', 17
    sub_6df2e0b5[stor5[address(arg1)][arg2].field_512] += msg.value * royalty / 10^6
    if msg.value < msg.value * royalty / 10^6:
        revert with 'NH{q', 17
    if msg.value - (msg.value * royalty / 10^6) < msg.value * marketing / 10^6:
        revert with 'NH{q', 17
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    sub_27bf56e5[address(arg1)][arg2].field_1024 = 0
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    if arg2 >= sub_27bf56e5[address(arg1)].field_0:
        revert with 'NH{q', 50
    require ext_code.size(arg1)
    call arg1.0x42842e0e with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender, sub_27bf56e5[address(arg1)][arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(ext_call.return_data[0]) with:
       value msg.value - (msg.value * royalty / 10^6) - (msg.value * marketing / 10^6) wei
         gas 2300 * is_zero(value) wei
    emit 0x401a80d4: address(arg1), arg2, sub_27bf56e5[address(arg1)][arg2].field_256, sub_27bf56e5[address(arg1)][arg2].field_512, msg.sender, sub_27bf56e5[address(arg1)][arg2].field_768
}



}
