contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
mapping of uint256 stor6;
uint256 sub_e2c50b4b;
uint256 stor8;
uint256 sub_e51c8922;
uint256 B;
address PAddress;
array of uint256 stor15;
address sub_60c7c34aAddress;
address stor24;
uint256 sub_fac70e23;
uint256 sub_df56b490;
uint256 sub_ebef4f0e;
uint256 sub_eda98299;
uint256 sub_ebb6be1c;
uint256 sub_e2903f9e;
mapping of uint8 stor31;
uint256 stor32;
uint8 brick;
uint8 closed; offset 8
uint8 stor33; offset 16
uint256 sub_ffa7b7a5;
uint256 sub_76795411;
uint256 stor39;
address stor40;

function clone() {
    return sub_60c7c34aAddress
}

function totalSupply() {
    return totalSupply
}

function sub_29722a86(?) {
    return sub_ffa7b7a5
}

function B() {
    return B
}

function brick() {
    return bool(brick)
}

function sub_4409559a(?) {
    return sub_60c7c34aAddress
}

function closed() {
    return bool(closed)
}

function sub_60c7c34a(?) {
    return sub_60c7c34aAddress
}

function sub_61414358(?) {
    return sub_e2c50b4b
}

function sub_6a35205e(?) {
    return sub_df56b490
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_76795411(?) {
    return sub_76795411
}

function sub_78182d03(?) {
    return sub_fac70e23
}

function getAddon(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor31[address(arg1)])
}

function P() {
    return PAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_df56b490(?) {
    return sub_df56b490
}

function sub_e2903f9e(?) {
    return sub_e2903f9e
}

function sub_e2c50b4b(?) {
    return sub_e2c50b4b
}

function sub_e51c8922(?) {
    return sub_e51c8922
}

function sub_ebb6be1c(?) {
    return sub_ebb6be1c
}

function sub_ebef4f0e(?) {
    return sub_ebef4f0e
}

function sub_eda98299(?) {
    return sub_eda98299
}

function sub_fac70e23(?) {
    return sub_fac70e23
}

function sub_ffa7b7a5(?) {
    return sub_ffa7b7a5
}

function _fallback() payable {
    revert
}

function getSeed() {
    emit 0xd1c8fe98: stor40
}

function sub_305601bc(?) {
    if sub_ebef4f0e < sub_ebb6be1c:
        revert with 0, 17
    return (sub_ebef4f0e - sub_ebb6be1c)
}

function sub_44874f4a(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_60c7c34aAddress
    sub_fac70e23 = arg1
}

function sub_b19a207f(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_60c7c34aAddress
    sub_df56b490 = arg1
}

function sub_fa144964(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_60c7c34aAddress
    sub_ebef4f0e = arg1
}

function sub_f18e673d(?) {
    require calldata.size - 4 >= 64
    require msg.sender == sub_60c7c34aAddress
    sub_fac70e23 = arg1
    sub_df56b490 = arg2
}

function sub_8761dc5f(?) {
    require calldata.size - 4 >= 32
    if sub_60c7c34aAddress != msg.sender:
        revert with 0, 'Sorry, no.'
    sub_e2c50b4b = arg1
}

function sub_179b7742(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor32 > -2:
        revert with 0, 17
    stor32++
    return 0
}

function pay() payable {
    if brick:
        revert with 0, 'Brick.'
    if closed:
        revert with 0, 'Closed.'
    emit 0x19cdfbbc: msg.value
    if B > !msg.value:
        revert with 0, 17
    B += msg.value
}

function sub_6d714b68(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if sub_60c7c34aAddress != msg.sender:
        revert with 0, 'Admin only.'
    stor31[address(arg1)] = uint8(bool(arg2))
}

function sub_8b0390e8(?) {
    require calldata.size - 4 >= 32
    if sub_60c7c34aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the administrator may set the changer rate.'
    sub_e51c8922 = arg1
}

function debug() {
    if stor32 > -2:
        revert with 0, 17
    stor32++
    emit 0x2af7ee6c: 64, 128, 6, 0x44454255473a0000000000000000000000000000000000000000000000000000, 52, 'clownsearch() was called and was', 0x206e6f742070617961626c652e2059696b65732e000000000000000000000000
    emit 0x19cdfbbc: stor32
}

function sub_01e99296(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if msg.value > stor39:
        stor24 = address(arg1)
        if stor39 > !msg.value:
            revert with 0, 17
        stor39 += msg.value
    if B > !msg.value:
        revert with 0, 17
    B += msg.value
}

function sub_db2bed7b(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
}

function recover(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not sub_60c7c34aAddress:
        revert with 0, 'Only cCA!'
    call sub_60c7c34aAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if B < arg1:
        revert with 0, 17
    B -= arg1
}

function sub_3f31c3d4(?) {
    require calldata.size - 4 >= 32
    if sub_60c7c34aAddress != msg.sender:
        revert with 0, 'You are a clone.'
    call sub_60c7c34aAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if B < arg1:
        revert with 0, 17
    B -= arg1
}

function sub_6c3c84f7(?) {
    if sub_60c7c34aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You do not have the power to change the future, only I do.'
    emit code.data[23940 len 32]: 'Please welcome our first brick of all time, bricked but not a brick but still a brick.'
    brick = 0
    emit code.data[23940 len 32]: 'I am also learning that this is not the first brick of all time. Okay, there you have it, folks.'
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function register(string arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg3 == arg3
    emit DebugAddress(arg3);
    if B > !msg.value:
        revert with 0, 17
    B += msg.value
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_a4544648(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if sub_60c7c34aAddress != msg.sender:
        revert with 0, 'Only the CultureCoin administrator may flag a coin as DOA.'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 19
    uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = 0
}

function sub_89ccd6c8(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    if sub_60c7c34aAddress != msg.sender:
        revert with 0, 'Ask your clone to do this for you, maybe?'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 38
    address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = address(arg2)
}

function sub_736ad58c(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 22) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * arg1.length) - 256) == sha3('CCTJSMarketToTheHungry'):
        return stor24
    return address(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 38)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 22) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256])
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function compareStrings(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len arg2.length] = arg2[all]
    mem[ceil32(ceil32(arg1.length)) + arg2.length + 129] = 0
    return (sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * arg1.length) - 256) == sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 129 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256))
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function sub_e3f56af4(?) {
    require calldata.size - 4 >= 32
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    if brick:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This is not register anymore. It is a brick.'
    if sub_df56b490 <= 0:
        revert with 0, 'Set rate.'
    if arg1 and sub_df56b490 > -1 / arg1:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    call msg.sender with:
       value arg1 * sub_df56b490 / 10^18 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if B < arg1 * sub_df56b490 / 10^18:
        revert with 0, 17
    B -= arg1 * sub_df56b490 / 10^18
    if sub_ebb6be1c > !(arg1 * sub_df56b490 / 10^18):
        revert with 0, 17
    sub_ebb6be1c += arg1 * sub_df56b490 / 10^18
    if sub_ebb6be1c > sub_ebef4f0e:
        revert with 0, 'Current max reached.'
    stor8 = 1
    return (arg1 * sub_df56b490 / 10^18)
}

function sub_2017fb74(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 18
    if ceil32(arg1.length) <= arg1.length:
        _31 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 20
        return address(stor[_31]), uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])])
    _33 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 20
    return address(stor[_33]), uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])])
}

function sub_935418fc(?) payable {
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    if brick:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This is not register anymore. It is a brick.'
    if sub_fac70e23 <= 0:
        revert with 0, 'Set rate.'
    if msg.value and sub_fac70e23 > -1 / msg.value:
        revert with 0, 17
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(this.address)] < msg.value * sub_fac70e23 / 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(this.address)] -= msg.value * sub_fac70e23 / 10^18
    if balanceOf[msg.sender] > !(msg.value * sub_fac70e23 / 10^18):
        revert with 0, 17
    balanceOf[msg.sender] += msg.value * sub_fac70e23 / 10^18
    emit Transfer((msg.value * sub_fac70e23 / 10^18), this.address, msg.sender);
    if B > !msg.value:
        revert with 0, 17
    B += msg.value
    if sub_e2903f9e > !(msg.value * sub_fac70e23 / 10^18):
        revert with 0, 17
    sub_e2903f9e += msg.value * sub_fac70e23 / 10^18
    if sub_e2903f9e > sub_eda98299:
        revert with 0, 'Current max reached.'
    stor8 = 1
    return (msg.value * sub_fac70e23 / 10^18)
}

function sub_9bc255f8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if brick:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This is not a register anymore. It is a brick.'
    if sub_df56b490 <= 0:
        revert with 0, 'Set rate.'
    if not stor31[msg.sender]:
        revert with 0, 'You can't use this function yet.'
    if arg2 and sub_df56b490 > -1 / arg2:
        revert with 0, 17
    if arg2 * sub_df56b490 / 10^18 > B:
        revert with 0, 'Not enough funds.'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, address(arg1), 0);
    require ext_code.size(msg.sender)
    call msg.sender.0x495057be with:
       value arg2 * sub_df56b490 / 10^18 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if B < arg2 * sub_df56b490 / 10^18:
        revert with 0, 17
    B -= arg2 * sub_df56b490 / 10^18
    if sub_ebb6be1c > !(arg2 * sub_df56b490 / 10^18):
        revert with 0, 17
    sub_ebb6be1c += arg2 * sub_df56b490 / 10^18
    if sub_ebb6be1c > sub_ebef4f0e:
        revert with 0, 'Current max reached.'
    return (arg2 * sub_df56b490 / 10^18)
}

function sub_d18b34fc(?) payable {
    mem[192] = 'ne. Bet you didn't know that.'
    emit code.data[23940 len 32]: Array(len=61, data='This meme coin is actually a clo', 'ne. Bet you didn't know that.')
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor15.length):
            emit 0xa2ceb0ea: Array(len=2 * Mask(256, -1, stor15.length), data=Mask(248, 8, stor15.length)), msg.value
        else:
            if bool(stor15.length) != 1:
                emit 0xa2ceb0ea: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < uint255(stor15.length) * 0.5:
                    mem[idx + 192] = uint256(stor15[s].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xa2ceb0ea: Array(len=2 * Mask(256, -1, stor15.length), data=mem[192 len ceil32(uint255(stor15.length) * 0.5)]), msg.value
    else:
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor15.length):
            emit 0xa2ceb0ea: Array(len=stor15.length % 128, data=Mask(248, 8, stor15.length)), msg.value
        else:
            if bool(stor15.length) != 1:
                emit 0xa2ceb0ea: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor15.length.field_1 % 128:
                    mem[idx + 192] = uint256(stor15[s].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xa2ceb0ea: Array(len=stor15.length % 128, data=mem[192 len ceil32(stor15.length.field_1 % 128)]), msg.value
    if B > !msg.value:
        revert with 0, 17
    B += msg.value
}

function sane() payable {
    if msg.value < sub_76795411:
        revert with 0, 'Please.'
    if brick:
        mem[192] = 0x636b2e0000000000000000000000000000000000000000000000000000000000
        emit code.data[23940 len 32]: 'This meme coin thinks it's a brick.'
    if closed:
        mem[192] = 0x6420666f7220627573696e6573732e0000000000000000000000000000000000
        emit code.data[23940 len 32]: 'This meme coin thinks it's closed for business.'
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor15.length):
            emit 0xa2ceb0ea: Array(len=2 * Mask(256, -1, stor15.length), data=Mask(248, 8, stor15.length)), msg.value
        else:
            if bool(stor15.length) != 1:
                emit 0xa2ceb0ea: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < uint255(stor15.length) * 0.5:
                    mem[idx + 192] = uint256(stor15[s].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xa2ceb0ea: Array(len=2 * Mask(256, -1, stor15.length), data=mem[192 len ceil32(uint255(stor15.length) * 0.5)]), msg.value
    else:
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor15.length):
            emit 0xa2ceb0ea: Array(len=stor15.length % 128, data=Mask(248, 8, stor15.length)), msg.value
        else:
            if bool(stor15.length) != 1:
                emit 0xa2ceb0ea: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor15.length.field_1 % 128:
                    mem[idx + 192] = uint256(stor15[s].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xa2ceb0ea: Array(len=stor15.length % 128, data=mem[192 len ceil32(stor15.length.field_1 % 128)]), msg.value
    if B > !msg.value:
        revert with 0, 17
    B += msg.value
}

function close() payable {
    if brick:
        revert with 0, 'You can not close a brick.'
    if closed:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can not close: Already closed.'
    if stor33:
        revert with 0, 'You can not close: Metastaked.'
    if sub_60c7c34aAddress != msg.sender:
        revert with 0, 'Not owner.'
    if sub_ffa7b7a5 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must pay the closing cost to close coin down.'
    closed = 1
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor15.length):
            emit 0xa2ceb0ea: Array(len=2 * Mask(256, -1, stor15.length), data=Mask(248, 8, stor15.length)), msg.value
        else:
            if bool(stor15.length) != 1:
                emit 0xa2ceb0ea: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < uint255(stor15.length) * 0.5:
                    mem[idx + 192] = uint256(stor15[s].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xa2ceb0ea: Array(len=2 * Mask(256, -1, stor15.length), data=mem[192 len ceil32(uint255(stor15.length) * 0.5)]), msg.value
    else:
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor15.length):
            emit 0xa2ceb0ea: Array(len=stor15.length % 128, data=Mask(248, 8, stor15.length)), msg.value
        else:
            if bool(stor15.length) != 1:
                emit 0xa2ceb0ea: mem[96 len -96]
            else:
                idx = 0
                s = 0
                while idx < stor15.length.field_1 % 128:
                    mem[idx + 192] = uint256(stor15[s].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0xa2ceb0ea: Array(len=stor15.length % 128, data=mem[192 len ceil32(stor15.length.field_1 % 128)]), msg.value
    emit code.data[23940 len 32]: Array(len=60, data='Our last harrah before we close ', 'for good. We are now closed.')
    if B > !msg.value:
        revert with 0, 17
    B += msg.value
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if brick:
        revert with 0, 'Sorry. We are a brick.'
    if closed:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The exchange is closed. Please try again when we are open.'
    require ext_code.size(this.address)
    staticcall this.address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'Cannot stake more than you own'
    if arg1 <= 0:
        revert with 0, 'Cannot stake nothing'
    if stor6[msg.sender]:
        if stor6[msg.sender] >= stor5.length:
            revert with 0, 50
        uint256(stor5[stor6[msg.sender]].field_256)++
        address(stor[sha3(('name', 'stor5', 5) + (2 * stor6[msg.sender]) + 1) + (4 * uint256(stor5[stor6[msg.sender]].field_256))].field_0) = msg.sender
        uint256(stor[sha3(('name', 'stor5', 5) + (2 * stor6[msg.sender]) + 1) + (4 * uint256(stor5[stor6[msg.sender]].field_256))].field_256) = arg1
        uint256(stor[sha3(('name', 'stor5', 5) + (2 * stor6[msg.sender]) + 1) + (4 * uint256(stor5[stor6[msg.sender]].field_256))].field_512) = block.timestamp
        uint256(stor[sha3(('name', 'stor5', 5) + (2 * stor6[msg.sender]) + 1) + (4 * uint256(stor5[stor6[msg.sender]].field_256))].field_768) = 0
        emit Staked(arg1, stor6[msg.sender], block.timestamp, msg.sender);
    else:
        stor5.length++
        if stor5.length + 1 < 1:
            revert with 0, 17
        if stor5.length >= stor5.length:
            revert with 0, 50
        address(stor5[stor5.length].field_0) = msg.sender
        stor6[address(msg.sender)] = stor5.length
        uint256(stor5[stor5.length].field_256)++
        address(stor[sha3(('name', 'stor5', 5) + (2 * stor5.length) + 1) + (4 * uint256(stor5[stor5.length].field_256))].field_0) = msg.sender
        uint256(stor[sha3(('name', 'stor5', 5) + (2 * stor5.length) + 1) + (4 * uint256(stor5[stor5.length].field_256))].field_256) = arg1
        uint256(stor[sha3(('name', 'stor5', 5) + (2 * stor5.length) + 1) + (4 * uint256(stor5[stor5.length].field_256))].field_512) = block.timestamp
        uint256(stor[sha3(('name', 'stor5', 5) + (2 * stor5.length) + 1) + (4 * uint256(stor5[stor5.length].field_256))].field_768) = 0
        emit Staked(arg1, stor5.length, block.timestamp, msg.sender);
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function concatenate(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + 97] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len arg2.length] = arg2[all]
    mem[ceil32(ceil32(arg1.length)) + arg2.length + 129] = 0
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) > arg1.length:
        mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130] = 0
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 130 len ceil32(arg2.length)] = arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 129 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 130] = 32
    mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 162] = mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + -ceil32(ceil32(arg2.length)) + 31], 0
    mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 194 len ceil32(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + -ceil32(ceil32(arg2.length)) + 31], 0)] = mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130 len ceil32(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + -ceil32(ceil32(arg2.length)) + 31], 0)]
    if ceil32(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + -ceil32(ceil32(arg2.length)) + 31], 0) > mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + -ceil32(ceil32(arg2.length)) + 31], 0:
        mem[mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + -ceil32(ceil32(arg2.length)) + 31], 0 + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 194] = 0
    return memory
      from arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 130
       len ceil32(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + -ceil32(ceil32(arg2.length)) + 31], 0) + 64
}

function hasStake(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[32] = 6
    if stor6[address(arg1)] >= stor5.length:
        revert with 0, 50
    mem[0] = 5
    mem[64] = (32 * uint256(stor5[stor6[address(arg1)]].field_256)) + 256
    mem[224] = uint256(stor5[stor6[address(arg1)]].field_256)
    s = 256
    idx = 0
    while idx < uint256(stor5[stor6[address(arg1)]].field_256):
        mem[0] = (2 * stor6[address(arg1)]) + sha3(5) + 1
        _33 = mem[64]
        mem[64] = mem[64] + 128
        mem[_33] = address(stor[sha3((2 * stor6[address(arg1)]) + ('name', 'stor5', 5) + 1) + (4 * idx)].field_0)
        mem[_33 + 32] = uint256(stor[sha3((2 * stor6[address(arg1)]) + ('name', 'stor5', 5) + 1) + (4 * idx)].field_256)
        mem[_33 + 64] = uint256(stor[sha3((2 * stor6[address(arg1)]) + ('name', 'stor5', 5) + 1) + (4 * idx)].field_512)
        mem[_33 + 96] = uint256(stor[sha3((2 * stor6[address(arg1)]) + ('name', 'stor5', 5) + 1) + (4 * idx)].field_768)
        mem[s] = _33
        s = s + 32
        idx = idx + 1
        continue 
    mem[192] = 224
    _59 = mem[224]
    idx = 0
    s = 0
    while idx < _59:
        if idx >= mem[mem[192]]:
            revert with 0, 50
        if block.timestamp < mem[mem[(32 * idx) + mem[192] + 32] + 64]:
            revert with 0, 17
        if block.timestamp - mem[mem[(32 * idx) + mem[192] + 32] + 64] / 3600 and mem[mem[(32 * idx) + mem[192] + 32] + 32] > -1 / block.timestamp - mem[mem[(32 * idx) + mem[192] + 32] + 64] / 3600:
            revert with 0, 17
        if not sub_e2c50b4b:
            revert with 0, 18
        if idx >= mem[mem[192]]:
            revert with 0, 50
        mem[mem[(32 * idx) + mem[192] + 32] + 96] = block.timestamp - mem[mem[(32 * idx) + mem[192] + 32] + 64] / 3600 * mem[mem[(32 * idx) + mem[192] + 32] + 32] / sub_e2c50b4b
        if idx >= mem[mem[192]]:
            revert with 0, 50
        if s > !mem[mem[(32 * idx) + mem[192] + 32] + 32]:
            revert with 0, 17
        if idx > -2:
            revert with 0, 17
        _59 = mem[mem[192]]
        idx = idx + 1
        s = s + mem[mem[(32 * idx) + mem[192] + 32] + 32]
        continue 
    mem[160] = s * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59
    _62 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = s * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59 * _59
    _65 = mem[192]
    mem[mem[64] + 64] = 64
    _66 = mem[_65]
    mem[mem[64] + 96] = mem[_65]
    idx = 0
    s = mem[64] + 128
    t = _65 + 32
    while idx < _66:
        _82 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_82 + 32]
        mem[s + 64] = mem[_82 + 64]
        mem[s + 96] = mem[_82 + 96]
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _62 + (128 * _66) + -mem[64] + 128
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor3[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        else:
            if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor3.length.field_1 % 128:
                if 31 < stor3.length.field_1 % 128:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor3[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor3[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    else:
        if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor3.length.field_1 % 128:
            if 31 < stor3.length.field_1 % 128:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor3[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    mem[ceil32(stor3.length.field_1 % 128) + 192 len ceil32(stor3.length.field_1 % 128)] = mem[128 len ceil32(stor3.length.field_1 % 128)]
    if ceil32(stor3.length.field_1 % 128) > stor3.length.field_1 % 128:
        mem[stor3.length.field_1 % 128 + ceil32(stor3.length.field_1 % 128) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)], mem[(2 * ceil32(stor3.length.field_1 % 128)) + 192 len 2 * ceil32(stor3.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor4[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        else:
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor4.length.field_1 % 128:
                if 31 < stor4.length.field_1 % 128:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor4[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor4[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    else:
        if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor4.length.field_1 % 128:
            if 31 < stor4.length.field_1 % 128:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor4[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    mem[ceil32(stor4.length.field_1 % 128) + 192 len ceil32(stor4.length.field_1 % 128)] = mem[128 len ceil32(stor4.length.field_1 % 128)]
    if ceil32(stor4.length.field_1 % 128) > stor4.length.field_1 % 128:
        mem[stor4.length.field_1 % 128 + ceil32(stor4.length.field_1 % 128) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)], mem[(2 * ceil32(stor4.length.field_1 % 128)) + 192 len 2 * ceil32(stor4.length.field_1 % 128)]), 
}

function sub_b7a7dc5c(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    require arg3 == address(arg3)
    require arg4 == bool(arg4)
    if brick:
        revert with 0, 'Bricks do not make seeds.'
    mem[ceil32(ceil32(arg1.length)) + 97 len 8613] = code.data[15327 len 8613]
    mem[ceil32(ceil32(arg1.length)) + 8710] = arg2
    mem[ceil32(ceil32(arg1.length)) + 8742] = this.address
    mem[ceil32(ceil32(arg1.length)) + 8774] = address(arg3)
    mem[ceil32(ceil32(arg1.length)) + 8806] = 128
    mem[ceil32(ceil32(arg1.length)) + 8838] = arg1.length
    mem[ceil32(ceil32(arg1.length)) + 8870 len ceil32(arg1.length)] = arg1[all], code.data[arg1.length + -ceil32(ceil32(arg1.length)) + 15358 len ceil32(arg1.length) - arg1.length]
    create contract with 0 wei
                    code: code.data[15327 len 8613], arg2, address(this.address), address(arg3), 128, arg1.length, arg1[all], code.data[arg1.length + -ceil32(ceil32(arg1.length)) + 15358 len ceil32(arg1.length) - arg1.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg4:
        emit code.data[23940 len 32]: 'The coin must be a real good one.'
    else:
        mem[ceil32(ceil32(arg1.length)) + 97] = 32
        mem[ceil32(ceil32(arg1.length)) + 129] = 42
        mem[ceil32(ceil32(arg1.length)) + 161] = 'Coin has called for internal reg'
        mem[ceil32(ceil32(arg1.length)) + 193] = 0x697374726174696f6e2e00000000000000000000000000000000000000000000
        emit code.data[23940 len 32]: 'Coin has called for internal registration.'
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 32) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 18
        if address(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 18)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 32) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]):
            emit 0x681527af: 128, address(create.new_address), arg2, 0, arg1.length, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 128) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
        else:
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 20
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 18
            address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = address(create.new_address)
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 22
            address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = msg.sender
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 19
            uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = 1
            emit 0x681527af: Array(len=arg1.length, data=arg1[all]), address(create.new_address), arg2, 1
    return 0
}

function withdrawStake(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    if brick:
        revert with 0, 'Sorry. We are a brick.'
    if closed:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The exchange is closed. Please try again when we are open.'
    if stor6[msg.sender] >= stor5.length:
        revert with 0, 50
    if arg2 >= uint256(stor5[stor6[msg.sender]].field_256):
        revert with 0, 50
    if arg1 > uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_256):
        revert with 0, 'Staking: Cannot withdraw more than you have staked'
    if block.timestamp < uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_512):
        revert with 0, 17
    if block.timestamp - uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_512) / 3600 and uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_256) > -1 / block.timestamp - uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_512) / 3600:
        revert with 0, 17
    if not sub_e2c50b4b:
        revert with 0, 18
    if uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_256) < arg1:
        revert with 0, 17
    if stor6[msg.sender] >= stor5.length:
        revert with 0, 50
    if arg2 >= uint256(stor5[stor6[msg.sender]].field_256):
        revert with 0, 50
    if uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_256) - arg1:
        uint256(stor[(4 * arg2) + sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1)].field_256) = uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_256) - arg1
        if stor6[msg.sender] >= stor5.length:
            revert with 0, 50
        if arg2 >= uint256(stor5[stor6[msg.sender]].field_256):
            revert with 0, 50
        uint256(stor[(4 * arg2) + sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1)].field_512) = block.timestamp
    else:
        address(stor[(4 * arg2) + sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1)].field_0) = 0
        uint256(stor[(4 * arg2) + sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1)].field_256) = 0
        uint256(stor[(4 * arg2) + sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1)].field_512) = 0
        uint256(stor[(4 * arg2) + sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1)].field_768) = 0
    if arg1 > !(block.timestamp - uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_512) / 3600 * uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_256) / sub_e2c50b4b):
        revert with 0, 17
    if not this.address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[address(this.address)] < arg1 + (block.timestamp - uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_512) / 3600 * uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_256) / sub_e2c50b4b):
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(this.address)] = balanceOf[address(this.address)] - arg1 - (block.timestamp - uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_512) / 3600 * uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_256) / sub_e2c50b4b)
    if balanceOf[msg.sender] > !(arg1 + (block.timestamp - uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_512) / 3600 * uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_256) / sub_e2c50b4b)):
        revert with 0, 17
    balanceOf[msg.sender] = balanceOf[msg.sender] + arg1 + (block.timestamp - uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_512) / 3600 * uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_256) / sub_e2c50b4b)
    emit Transfer((arg1 + (block.timestamp - uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_512) / 3600 * uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_256) / sub_e2c50b4b)), this.address, msg.sender);
    stor8 = 1
    return (arg1 + (block.timestamp - uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_512) / 3600 * uint256(stor[sha3((2 * stor6[msg.sender]) + ('name', 'stor5', 5) + 1) + (4 * arg2)].field_256) / sub_e2c50b4b))
}



}
