contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#  - sub_a9c6f3dd(?)
#  - getTokenDetails(uint256 arg1)
#
mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
address owner;
uint256 stor5;
uint256 stor7;
uint256 sub_7c7c6dac;
uint256 sub_db3d4607;
uint256 sub_b4b3060f;
uint256 sub_c54bd414;
uint256 sub_71d3a6cc;
uint256 sub_6eff2bc3;
uint256 sub_43a4ce01;
uint256 stor15;
array of struct stor16;
array of struct stor17;
uint8 stor18;
address sub_01eb1227Address; offset 8
address sub_35bba03fAddress;
address stor20;
uint256 stor21;
mapping of struct stor22;
mapping of uint256 stor24;
mapping of uint8 stor25;
mapping of uint256 sub_26e91d6a;
mapping of uint256 sub_9178c955;
mapping of uint256 stor29;
mapping of uint8 stor30;
mapping of uint8 stor31;
mapping of uint256 stor32;
mapping of uint256 stor33;
mapping of uint8 stor34;
mapping of uint256 stor35;
mapping of uint256 sub_5067974d;
mapping of uint256 sub_7c9e23ca;
array of struct sub_efa0a129;
uint256 stor6B28;
array of uint256 stor52599347508048631935244927442248066275457603789035839745187959018529578694036;
array of address stor52599347508048631935244927442248066275457603789035839745187959018529578694037;
array of struct stor52599347508048631935244927442248066275457603789035839745187959018529578694038;
uint256 stor82F0;
uint256 storB75E;
uint256 storE751;
uint256 storF88C;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function sub_01eb1227(?) {
    return sub_01eb1227Address
}

function sub_26e91d6a(?) {
    require calldata.size - 4 >= 32
    return sub_26e91d6a[arg1]
}

function sub_35bba03f(?) {
    return sub_35bba03fAddress
}

function sub_43a4ce01(?) {
    return sub_43a4ce01
}

function sub_5067974d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5067974d[arg1]
}

function sub_66dbe954(?) {
    return sub_efa0a129.length
}

function sub_6eff2bc3(?) {
    return sub_6eff2bc3
}

function sub_71d3a6cc(?) {
    return sub_71d3a6cc
}

function sub_7c7c6dac(?) {
    return sub_7c7c6dac
}

function sub_7c9e23ca(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_7c9e23ca[arg1][arg2]
}

function owner() {
    return owner
}

function sub_9178c955(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9178c955[arg1]
}

function getLevel() {
    return sub_5067974d[msg.sender]
}

function sub_b4b3060f(?) {
    return sub_b4b3060f
}

function sub_c54bd414(?) {
    return sub_c54bd414
}

function sub_db3d4607(?) {
    return sub_db3d4607
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
}

function sub_efa0a129(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_efa0a129.length:
        revert with 0, 50
    return sub_efa0a129[arg1].field_0, 
           sub_efa0a129[arg1].field_256,
           sub_efa0a129[arg1].field_512,
           bool(sub_efa0a129[arg1].field_672)
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

function setTimer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15 = arg1
    return 1
}

function sub_7e3d6a2d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6eff2bc3 = arg1
    return arg1
}

function sub_8b2a3d41(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_43a4ce01 = arg1
    return arg1
}

function sub_2901a4e3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor82F0 = arg1
    sub_c54bd414 = arg1
    return arg1
}

function sub_38889201(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    storF88C = arg1
    sub_db3d4607 = arg1
    return arg1
}

function sub_4baa2061(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    storE751 = arg1
    sub_b4b3060f = arg1
    return arg1
}

function sub_9413f011(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6B28 = arg1
    sub_71d3a6cc = arg1
    return arg1
}

function sub_9948912c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    storB75E = arg1
    sub_7c7c6dac = arg1
    return arg1
}

function sub_8c13713d(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = uint8(bool(arg1))
    return 1
}

function sub_4fe0cb95(?) {
    require calldata.size - 4 >= 32
    if bool(stor25[msg.sender][arg1]) != 1:
        revert with 0, 'access not locked'
    require block.timestamp >= stor24[msg.sender][arg1]
    stor25[msg.sender][arg1] = 0
    stor24[msg.sender][arg1] = 0
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

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function cancelBattle(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_efa0a129.length:
        revert with 0, 50
    require msg.sender == sub_efa0a129[arg1].field_256
    if stor34[msg.sender]:
        revert with 0, 'All ready in battle'
    stor31[msg.sender] = 0
    if arg1 >= sub_efa0a129.length:
        revert with 0, 50
    stor31[stor38[arg1].field_512] = 0
    sub_efa0a129[arg1].field_0 = 0
    sub_efa0a129[arg1].field_256 = 0
    sub_efa0a129[arg1].field_512 = 0
    emit 0xfc1c11d0: address(msg.sender), sub_efa0a129[arg1].field_512, arg1, block.timestamp
    return 1
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_e9797e45(?) {
    require calldata.size - 4 >= 32
    require 1 == bool(stor34[msg.sender])
    if stor35[msg.sender] > !stor15:
        revert with 0, 17
    require block.timestamp >= stor35[msg.sender] + stor15
    if arg1 >= sub_efa0a129.length:
        revert with 0, 50
    stor34[stor38[arg1].field_512] = 0
    stor34[stor38[arg1].field_256] = 0
    sub_efa0a129[arg1].field_0 = 0
    sub_efa0a129[arg1].field_256 = 0
    sub_efa0a129[arg1].field_512 = 0
    if arg1 >= sub_efa0a129.length:
        revert with 0, 50
    if msg.sender == sub_efa0a129[arg1].field_512:
        emit 0x16db0660: address(msg.sender), sub_efa0a129[arg1].field_256, arg1, block.timestamp
    else:
        if msg.sender == sub_efa0a129[arg1].field_256:
            if arg1 >= sub_efa0a129.length:
                revert with 0, 50
            emit 0x16db0660: address(msg.sender), sub_efa0a129[arg1].field_512, arg1, block.timestamp
    return 1
}

function burn(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 7:
        revert with 0, 'cant burn $Enjimon'
    if arg1:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        if balanceOf[arg1][address(msg.sender)] < arg2:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[arg1][address(msg.sender)] -= arg2
        emit TransferSingle(arg1, arg2, msg.sender, msg.sender, 0);
        emit 0xca86624b: msg.sender, arg1, arg2, block.timestamp
    else:
        if not this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
        require balanceOf[address(this.address)] > sub_9178c955[stor20]
        if not this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        if balanceOf[address(this.address)] < arg2:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[address(this.address)] -= arg2
        emit TransferSingle(0, arg2, msg.sender, this.address, 0);
        if stor21 > !arg2:
            revert with 0, 17
        stor21 += arg2
        emit 0xc8123f17: address(this.address), 0, arg2, block.timestamp
        emit 0xfecb9e94: 0, stor21, block.timestamp
}

function sub_62686bd1(?) {
    require calldata.size - 4 >= 64
    if arg1 >= sub_efa0a129.length:
        revert with 0, 50
    if msg.sender == sub_efa0a129[arg1].field_256:
        revert with 0, 'cannot approve own request!'
    if arg1 >= sub_efa0a129.length:
        revert with 0, 50
    if sub_efa0a129[arg1].field_512 != msg.sender:
        revert with 0, 'not your battle'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require 1 == balanceOf[arg2][address(msg.sender)]
    require 1 == bool(stor31[msg.sender])
    if not stor1[address(msg.sender)][address(this.address)]:
        if msg.sender == this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
        stor1[address(msg.sender)][address(this.address)] = 1
        emit ApprovalForAll(1, msg.sender, this.address);
    stor31[msg.sender] = 0
    if arg1 >= sub_efa0a129.length:
        revert with 0, 50
    stor31[stor38[arg1].field_256] = 0
    stor32[msg.sender] = arg2
    stor33[msg.sender] = stor33[stor38[arg1].field_256]
    sub_efa0a129[arg1].field_672 = 1
    stor34[msg.sender] = 1
    stor34[stor38[arg1].field_256] = 1
    stor30[stor38[arg1].field_256] = 1
    stor30[msg.sender] = 0
    sub_7c9e23ca[msg.sender][arg2] = stor22[arg2].field_256
    emit 0x744f45be: arg1, msg.sender, stor32[msg.sender], sub_efa0a129[arg1].field_256, stor32[stor38[arg1].field_256], block.timestamp
}

function sub_923a9677(?) {
    if stor25[msg.sender][2]:
        revert with 0, 'already minted this period'
    if bool(stor18) != 1:
        revert with 0, 'Minting off'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[2][address(this.address)] < 4:
        revert with 0, 'eATK Depleted'
    stor25[msg.sender][2] = 1
    if block.timestamp > !stor7:
        revert with 0, 17
    stor24[msg.sender][2] = block.timestamp + stor7
    if not msg.sender:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[2][address(this.address)] < 4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[2][address(this.address)] -= 4
    if balanceOf[2][msg.sender] > -5:
        revert with 0, 17
    balanceOf[2][msg.sender] += 4
    emit TransferSingle(2, 4, msg.sender, this.address, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 2, 4, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            return 0
    else:
        return 0
}

function sub_d62bc74d(?) {
    if stor25[msg.sender][3]:
        revert with 0, 'already minted this period'
    if bool(stor18) != 1:
        revert with 0, 'Minting off'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[3][address(this.address)] < 4:
        revert with 0, 'eATK Depleted'
    stor25[msg.sender][3] = 1
    if block.timestamp > !stor7:
        revert with 0, 17
    stor24[msg.sender][3] = block.timestamp + stor7
    if not msg.sender:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[3][address(this.address)] < 4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[3][address(this.address)] -= 4
    if balanceOf[3][msg.sender] > -5:
        revert with 0, 17
    balanceOf[3][msg.sender] += 4
    emit TransferSingle(3, 4, msg.sender, this.address, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 3, 4, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            return 0
    else:
        return 0
}

function sub_9cfceeaa(?) payable {
    require calldata.size - 4 >= 32
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[arg1][address(this.address)] <= 0:
        revert with 0, 'No More $Enjimon at this id'
    if msg.value < sub_43a4ce01:
        revert with 0, 'Not enough to cover tx'
    call sub_35bba03fAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[arg1][address(this.address)] < 1:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg1][address(this.address)]--
    if balanceOf[arg1][msg.sender] > -2:
        revert with 0, 17
    balanceOf[arg1][msg.sender]++
    emit TransferSingle(arg1, 1, msg.sender, this.address, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1, 1, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    return 1
}

function sub_b5af401a(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor18) != 1:
        revert with 0, 'Minting off'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[arg1][address(this.address)] <= 0:
        revert with 0, 'No More $Enjimon at this id'
    if msg.value < sub_6eff2bc3:
        revert with 0, 'Not enough to cover tx'
    call sub_35bba03fAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[arg1][address(this.address)] < 1:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg1][address(this.address)]--
    if balanceOf[arg1][msg.sender] > -2:
        revert with 0, 17
    balanceOf[arg1][msg.sender]++
    emit TransferSingle(arg1, 1, msg.sender, this.address, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1, 1, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    return 1
}

function sub_8b26d3c5(?) payable {
    require calldata.size - 4 >= 32
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[6][address(this.address)] < arg1:
        revert with 0, 'elixers Depleted'
    if sub_b4b3060f and arg1 > -1 / sub_b4b3060f:
        revert with 0, 17
    if msg.value < sub_b4b3060f * arg1:
        revert with 0, 'Not enough to cover tx'
    call sub_35bba03fAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[6][address(this.address)] < arg1:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[6][address(this.address)] -= arg1
    if balanceOf[6][msg.sender] > !arg1:
        revert with 0, 17
    balanceOf[6][msg.sender] += arg1
    emit TransferSingle(6, arg1, msg.sender, this.address, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 6, arg1, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            return 0
    else:
        return 0
}

function sub_bfb0685c(?) payable {
    require calldata.size - 4 >= 32
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[4][address(this.address)] < arg1:
        revert with 0, 'elixers Depleted'
    if sub_71d3a6cc and arg1 > -1 / sub_71d3a6cc:
        revert with 0, 17
    if msg.value < sub_71d3a6cc * arg1:
        revert with 0, 'Not enough to cover tx'
    call sub_35bba03fAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[4][address(this.address)] < arg1:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[4][address(this.address)] -= arg1
    if balanceOf[4][msg.sender] > !arg1:
        revert with 0, 17
    balanceOf[4][msg.sender] += arg1
    emit TransferSingle(4, arg1, msg.sender, this.address, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 4, arg1, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            return 0
    else:
        return 0
}

function sub_f23fe0d6(?) payable {
    require calldata.size - 4 >= 32
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[5][address(this.address)] < arg1:
        revert with 0, 'revives Depleted'
    if sub_c54bd414 and arg1 > -1 / sub_c54bd414:
        revert with 0, 17
    if msg.value < sub_c54bd414 * arg1:
        revert with 0, 'Not enough to cover tx'
    call sub_35bba03fAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[5][address(this.address)] < arg1:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[5][address(this.address)] -= arg1
    if balanceOf[5][msg.sender] > !arg1:
        revert with 0, 17
    balanceOf[5][msg.sender] += arg1
    emit TransferSingle(5, arg1, msg.sender, this.address, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 5, arg1, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            return 0
    else:
        return 0
}

function sub_1cf68d6d(?) payable {
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[address(this.address)] < 2000:
        revert with 0, 'Token Supply Depleted.'
    if msg.value < sub_7c7c6dac:
        revert with 0, 'Not enough to cover tx'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[address(this.address)] <= sub_9178c955[stor20]:
        revert with 0, 'Token Supply Depleted.'
    call sub_35bba03fAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[address(this.address)] < 2000:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(this.address)] -= 2000
    if balanceOf[msg.sender] > -2001:
        revert with 0, 17
    balanceOf[msg.sender] += 2000
    emit TransferSingle(0, 2000, msg.sender, this.address, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0, 2000, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            return 0
    else:
        return 0
}

function sub_acd789da(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[1][address(this.address)] < 2 * arg1:
        revert with 0, 'HP Depleted'
    if sub_db3d4607 and arg1 > -1 / sub_db3d4607:
        revert with 0, 17
    if msg.value < sub_db3d4607 * arg1:
        revert with 0, 'Not enough to cover tx'
    if arg1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    call sub_35bba03fAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[1][address(this.address)] < 2 * arg1:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[1][address(this.address)] -= 2 * arg1
    if balanceOf[1][msg.sender] > !(2 * arg1):
        revert with 0, 17
    balanceOf[1][msg.sender] += 2 * arg1
    emit TransferSingle(1, 2 * arg1, msg.sender, this.address, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 1, 2 * arg1, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            return 0
    else:
        return 0
}

function sub_140f339b(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[5][address(msg.sender)] >= 1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[6][address(msg.sender)] >= 1
    require 1 == stor29[msg.sender][arg1]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[5][address(msg.sender)] < 1:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[5][address(msg.sender)]--
    emit TransferSingle(5, 1, msg.sender, msg.sender, 0);
    if not msg.sender:
        revert with 0, 'ERC1155: burn from the zero address'
    if balanceOf[6][address(msg.sender)] < 1:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[6][address(msg.sender)]--
    emit TransferSingle(6, 1, msg.sender, msg.sender, 0);
    stor22[arg1].field_256 = sub_7c9e23ca[msg.sender][arg1]
    stor29[msg.sender][arg1] = 0
    if not msg.sender:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[arg1][address(this.address)] < 1:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg1][address(this.address)]--
    if balanceOf[arg1][msg.sender] > -2:
        revert with 0, 17
    balanceOf[arg1][msg.sender]++
    emit TransferSingle(arg1, 1, msg.sender, this.address, msg.sender);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1, 1, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    emit 0x49127eab: msg.sender, arg1, block.timestamp
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 0)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function sub_56137787(?) {
    require calldata.size - 4 >= 32
    if arg1 < 7:
        revert with 0, 'Invalid ID'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[3][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[arg1][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[address(msg.sender)] <= 25:
        revert with 0, 'Not enough UUJI'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[address(msg.sender)] < 15:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= 15
    emit TransferSingle(0, 15, msg.sender, msg.sender, 0);
    if not msg.sender:
        revert with 0, 'ERC1155: burn from the zero address'
    if balanceOf[3][address(msg.sender)] < 1:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[3][address(msg.sender)]--
    emit TransferSingle(3, 1, msg.sender, msg.sender, 0);
    if not this.address:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[address(msg.sender)] < 10:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(msg.sender)] -= 10
    if balanceOf[this.address] > -11:
        revert with 0, 17
    balanceOf[this.address] += 10
    emit TransferSingle(0, 10, msg.sender, msg.sender, this.address);
    if ext_code.size(this.address):
        require ext_code.size(this.address)
        call this.address.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 10, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if stor21 > -16:
        revert with 0, 17
    stor21 += 15
    if 7 > -stor22[arg1].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_512 >= 0:
        revert with 0, 17
    if stor22[arg1].field_512 < 0 and 7 < -stor22[arg1].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    stor22[arg1].field_512 += 7
    emit 0xfecb9e94: 0, stor21, block.timestamp
}

function sub_f39172d3(?) {
    require calldata.size - 4 >= 32
    if arg1 < 7:
        revert with 0, 'Invalid ID'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[2][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[arg1][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[address(msg.sender)] <= 25:
        revert with 0, 'Not enough UUJI'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[address(msg.sender)] < 15:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= 15
    emit TransferSingle(0, 15, msg.sender, msg.sender, 0);
    if not msg.sender:
        revert with 0, 'ERC1155: burn from the zero address'
    if balanceOf[2][address(msg.sender)] < 1:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[2][address(msg.sender)]--
    emit TransferSingle(2, 1, msg.sender, msg.sender, 0);
    if not this.address:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[address(msg.sender)] < 10:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(msg.sender)] -= 10
    if balanceOf[this.address] > -11:
        revert with 0, 17
    balanceOf[this.address] += 10
    emit TransferSingle(0, 10, msg.sender, msg.sender, this.address);
    if ext_code.size(this.address):
        require ext_code.size(this.address)
        call this.address.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 10, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if stor21 > -16:
        revert with 0, 17
    stor21 += 15
    if 5 > -stor22[arg1].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_768 >= 0:
        revert with 0, 17
    if stor22[arg1].field_768 < 0 and 5 < -stor22[arg1].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    stor22[arg1].field_768 += 5
    emit 0xfecb9e94: 0, stor21, block.timestamp
}

function sub_520b0930(?) {
    require calldata.size - 4 >= 32
    if arg1 < 7:
        revert with 0, 'Invalid ID'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[1][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[arg1][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[address(msg.sender)] <= 25:
        revert with 0, 'Not enough UUJI'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[address(msg.sender)] < 15:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= 15
    emit TransferSingle(0, 15, msg.sender, msg.sender, 0);
    if not msg.sender:
        revert with 0, 'ERC1155: burn from the zero address'
    if balanceOf[1][address(msg.sender)] < 1:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[1][address(msg.sender)]--
    emit TransferSingle(1, 1, msg.sender, msg.sender, 0);
    if not this.address:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[address(msg.sender)] < 10:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(msg.sender)] -= 10
    if balanceOf[this.address] > -11:
        revert with 0, 17
    balanceOf[this.address] += 10
    emit TransferSingle(0, 10, msg.sender, msg.sender, this.address);
    if ext_code.size(this.address):
        require ext_code.size(this.address)
        call this.address.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 10, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if stor21 > -16:
        revert with 0, 17
    stor21 += 15
    if 15 > -stor22[arg1].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_256 >= 0:
        revert with 0, 17
    if stor22[arg1].field_256 < 0 and 15 < -stor22[arg1].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    stor22[arg1].field_256 += 15
    emit 0xfecb9e94: 0, stor21, block.timestamp
}

function sub_8639799b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor31[msg.sender]:
        revert with 0, 'settle of previous battle'
    if address(arg1) == msg.sender:
        revert with 0, 'Cannot battle yourself!'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[address(msg.sender)] >= 100
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require 1 == balanceOf[arg2][address(msg.sender)]
    if not stor1[address(msg.sender)][address(this.address)]:
        if msg.sender == this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
        stor1[address(msg.sender)][address(this.address)] = 1
        emit ApprovalForAll(1, msg.sender, this.address);
    if not this.address:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[address(msg.sender)] < 50:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(msg.sender)] -= 50
    if balanceOf[this.address] > -51:
        revert with 0, 17
    balanceOf[this.address] += 50
    emit TransferSingle(0, 50, msg.sender, msg.sender, this.address);
    if ext_code.size(this.address):
        require ext_code.size(this.address)
        call this.address.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 50, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if not msg.sender:
        revert with 0, 'ERC1155: burn from the zero address'
    if balanceOf[address(msg.sender)] < 50:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= 50
    emit TransferSingle(0, 50, msg.sender, msg.sender, 0);
    if stor21 > -51:
        revert with 0, 17
    stor21 += 50
    sub_efa0a129.length++
    stor744A[stor38.length] = sub_efa0a129.length
    stor744A[stor38.length] = msg.sender
    stor744A[stor38.length].field_0 = address(arg1)
    stor744A[stor38.length].field_160 = 0
    stor32[msg.sender] = arg2
    stor33[msg.sender] = sub_efa0a129.length
    stor31[msg.sender] = 1
    stor31[address(arg1)] = 1
    sub_7c9e23ca[msg.sender][arg2] = stor22[arg2].field_256
    emit 0xc8123f17: msg.sender, 0, stor21, block.timestamp
    emit 0xfecb9e94: 0, stor21, block.timestamp
    emit 0xb77a7702: msg.sender, address(arg1), block.timestamp
}

function sub_019ddde7(?) {
    require calldata.size - 4 >= 32
    if arg1 < 7:
        revert with 0, 'Invalid ID'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[4][address(msg.sender)] <= 0:
        revert with 0, 'no elixers!'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[arg1][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[address(msg.sender)] <= 30:
        revert with 0, '30 UUJI req.'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[address(msg.sender)] < 15:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= 15
    emit TransferSingle(0, 15, msg.sender, msg.sender, 0);
    if not msg.sender:
        revert with 0, 'ERC1155: burn from the zero address'
    if balanceOf[4][address(msg.sender)] < 1:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[4][address(msg.sender)]--
    emit TransferSingle(4, 1, msg.sender, msg.sender, 0);
    if not this.address:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[address(msg.sender)] < 15:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(msg.sender)] -= 15
    if balanceOf[this.address] > -16:
        revert with 0, 17
    balanceOf[this.address] += 15
    emit TransferSingle(0, 15, msg.sender, msg.sender, this.address);
    if ext_code.size(this.address):
        require ext_code.size(this.address)
        call this.address.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 15, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if stor21 > -6:
        revert with 0, 17
    stor21 += 5
    if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
        revert with 0, 17
    if 2 > -stor22[arg1].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_256 >= 0:
        revert with 0, 17
    if stor22[arg1].field_256 < 0 and 2 < -stor22[arg1].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    stor22[arg1].field_256 += 2
    if stor22[arg1].field_1024 > -3:
        revert with 0, 17
    stor22[arg1].field_1024 += 2
    if 2 > -stor22[arg1].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_512 >= 0:
        revert with 0, 17
    if stor22[arg1].field_512 < 0 and 2 < -stor22[arg1].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    stor22[arg1].field_512 += 2
    if 2 > -stor22[arg1].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_768 >= 0:
        revert with 0, 17
    if stor22[arg1].field_768 < 0 and 2 < -stor22[arg1].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    stor22[arg1].field_768 += 2
    emit 0xfecb9e94: 0, stor21, block.timestamp
}

function uri(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function name() {
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor16.length):
                if 31 < uint255(stor16.length) * 0.5:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor16.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 0, 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(uint255(stor16.length) * 0.5) + 192 len ceil32(uint255(stor16.length) * 0.5)] = mem[128 len ceil32(uint255(stor16.length) * 0.5)]
        if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
            mem[ceil32(uint255(stor16.length) * 0.5) + (uint255(stor16.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)], mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor16.length) * 0.5)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 0, 34
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor16.length):
            if 31 < uint255(stor16.length) * 0.5:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while (uint255(stor16.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
}

function symbol() {
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor17.length):
            if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor17.length):
                if 31 < uint255(stor17.length) * 0.5:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor17.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * stor17.length.field_8
        else:
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 0, 34
            if stor17.length.field_1:
                if 31 < stor17.length.field_1:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while stor17.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * stor17.length.field_8
        mem[ceil32(uint255(stor17.length) * 0.5) + 192 len ceil32(uint255(stor17.length) * 0.5)] = mem[128 len ceil32(uint255(stor17.length) * 0.5)]
        if ceil32(uint255(stor17.length) * 0.5) > uint255(stor17.length) * 0.5:
            mem[ceil32(uint255(stor17.length) * 0.5) + (uint255(stor17.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)], mem[(2 * ceil32(uint255(stor17.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor17.length) * 0.5)]), 
    if bool(stor17.length) == stor17.length.field_1 < 32:
        revert with 0, 34
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor17.length):
            if 31 < uint255(stor17.length) * 0.5:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while (uint255(stor17.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    else:
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 0, 34
        if stor17.length.field_1:
            if 31 < stor17.length.field_1:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while stor17.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    mem[ceil32(stor17.length.field_1) + 192 len ceil32(stor17.length.field_1)] = mem[128 len ceil32(stor17.length.field_1)]
    if ceil32(stor17.length.field_1) > stor17.length.field_1:
        mem[ceil32(stor17.length.field_1) + stor17.length.field_1 + 192] = 0
    return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)], mem[(2 * ceil32(stor17.length.field_1)) + 192 len 2 * ceil32(stor17.length.field_1)]), 
}

function retreat(uint256 arg1) {
    require calldata.size - 4 >= 32
    require 1 == bool(stor34[msg.sender])
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[address(msg.sender)] >= 50
    require 1 == bool(stor30[msg.sender])
    if arg1 >= sub_efa0a129.length:
        revert with 0, 50
    if arg1 >= sub_efa0a129.length:
        revert with 0, 50
    if msg.sender == sub_efa0a129[arg1].field_256:
        if msg.sender != msg.sender:
            if not stor1[address(msg.sender)][address(msg.sender)]:
                revert with 0, 'ERC1155: caller is not owner nor approved'
        if not sub_efa0a129[arg1].field_512:
            revert with 0, 'ERC1155: transfer to the zero address'
        if balanceOf[address(msg.sender)] < 25:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] -= 25
        if balanceOf[stor38[arg1].field_512] > -26:
            revert with 0, 17
        balanceOf[stor38[arg1].field_512] += 25
        emit TransferSingle(0, 25, msg.sender, msg.sender, sub_efa0a129[arg1].field_512);
        if ext_code.size(sub_efa0a129[arg1].field_512):
            require ext_code.size(sub_efa0a129[arg1].field_512)
            call sub_efa0a129[arg1].field_512.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, 25, 160, 0
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        emit 0x3e0e3a81: msg.sender, sub_efa0a129[arg1].field_512, 0, 25
        if not msg.sender:
            revert with 0, 'ERC1155: burn from the zero address'
        if balanceOf[address(msg.sender)] < 25:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= 25
        emit TransferSingle(0, 25, msg.sender, msg.sender, 0);
        if stor21 > -26:
            revert with 0, 17
        stor21 += 25
        if arg1 >= sub_efa0a129.length:
            revert with 0, 50
        emit 0x1db91cea: msg.sender, sub_efa0a129[arg1].field_512, arg1, block.timestamp
    else:
        if arg1 >= sub_efa0a129.length:
            revert with 0, 50
        if sub_efa0a129[arg1].field_512 != msg.sender:
        else:
            if msg.sender != msg.sender:
                if not stor1[address(msg.sender)][address(msg.sender)]:
                    revert with 0, 'ERC1155: caller is not owner nor approved'
            if not sub_efa0a129[arg1].field_256:
                revert with 0, 'ERC1155: transfer to the zero address'
            if balanceOf[address(msg.sender)] < 25:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[address(msg.sender)] -= 25
            if balanceOf[stor38[arg1].field_256] > -26:
                revert with 0, 17
            balanceOf[stor38[arg1].field_256] += 25
            emit TransferSingle(0, 25, msg.sender, msg.sender, sub_efa0a129[arg1].field_256);
            if ext_code.size(sub_efa0a129[arg1].field_256):
                require ext_code.size(sub_efa0a129[arg1].field_256)
                call sub_efa0a129[arg1].field_256.0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, 0, 25, 160, 0
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            emit 0x3e0e3a81: msg.sender, sub_efa0a129[arg1].field_256, 0, 25
            if not msg.sender:
                revert with 0, 'ERC1155: burn from the zero address'
            if balanceOf[address(msg.sender)] < 25:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            balanceOf[address(msg.sender)] -= 25
            emit TransferSingle(0, 25, msg.sender, msg.sender, 0);
            if stor21 > -26:
                revert with 0, 17
            stor21 += 25
            if arg1 >= sub_efa0a129.length:
                revert with 0, 50
            emit 0x1db91cea: msg.sender, sub_efa0a129[arg1].field_256, arg1, block.timestamp
    stor34[stor38[arg1].field_512] = 0
    stor34[stor38[arg1].field_256] = 0
    sub_efa0a129[arg1].field_0 = 0
    sub_efa0a129[arg1].field_256 = 0
    sub_efa0a129[arg1].field_512 = 0
    return 1
}

function sub_8fdbedfa(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if address(arg1) == msg.sender:
        revert with 0, 'can't trade with self'
    if arg2 < 7:
        revert with 0, 'invalid ID'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if balanceOf[arg2][address(msg.sender)] <= 0:
        revert with 0, 'invalid ID'
    if not address(arg1):
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[arg2][address(msg.sender)] < 1:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg2][address(msg.sender)]--
    if balanceOf[arg2][address(arg1)] > -2:
        revert with 0, 17
    balanceOf[arg2][address(arg1)]++
    emit TransferSingle(arg2, 1, msg.sender, msg.sender, address(arg1));
    if not ext_code.size(address(arg1)):
        if stor22[arg2].field_0:
            if stor22[arg2].field_0 == uint255(stor22[arg2].field_0) * 0.5 < 32:
                revert with 0, 34
            if not stor22[arg2].field_0:
                emit 0xaed061a2: msg.sender, address(arg1), arg2, Array(len=2 * Mask(256, -1, stor22[arg2].field_0), data=Mask(248, 8, stor22[arg2].field_0)), 1
            else:
                if stor22[arg2].field_0 != 1:
                    emit 0xaed061a2: mem[256 len -256]
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor22[arg2].field_0) * 0.5:
                        mem[idx + 448] = stor22[arg2][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xaed061a2: msg.sender, address(arg1), arg2, Array(len=2 * Mask(256, -1, stor22[arg2].field_0), data=mem[448 len ceil32(uint255(stor22[arg2].field_0) * 0.5)]), 1
        else:
            if stor22[arg2].field_0 == stor22[arg2].field_1 < 32:
                revert with 0, 34
            if not stor22[arg2].field_0:
                emit 0xaed061a2: msg.sender, address(arg1), arg2, Array(len=stor22[arg2].field_0, data=Mask(248, 8, stor22[arg2].field_0)), 1
            else:
                if stor22[arg2].field_0 != 1:
                    emit 0xaed061a2: mem[256 len -256]
                else:
                    idx = 0
                    s = 0
                    while idx < stor22[arg2].field_1:
                        mem[idx + 448] = stor22[arg2][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xaed061a2: msg.sender, address(arg1), arg2, Array(len=stor22[arg2].field_0, data=mem[448 len ceil32(stor22[arg2].field_1)]), 1
    else:
        mem[260] = msg.sender
        mem[292] = msg.sender
        mem[324] = arg2
        mem[356] = 1
        mem[388] = 160
        mem[420] = 0
        mem[452 len 0] = None
        require ext_code.size(address(arg1))
        call address(arg1).0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, arg2, 1, 160, 0
        mem[256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if stor22[arg2].field_0:
            if stor22[arg2].field_0 == uint255(stor22[arg2].field_0) * 0.5 < 32:
                revert with 0, 34
            if not stor22[arg2].field_0:
                emit 0xaed061a2: msg.sender, address(arg1), arg2, Array(len=2 * Mask(256, -1, stor22[arg2].field_0), data=Mask(248, 8, stor22[arg2].field_0)), 1
            else:
                if stor22[arg2].field_0 != 1:
                    emit 0xaed061a2: mem[ceil32(return_data.size) + 256 len -ceil32(return_data.size) - 256]
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor22[arg2].field_0) * 0.5:
                        mem[idx + ceil32(return_data.size) + 448] = stor22[arg2][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xaed061a2: msg.sender, address(arg1), arg2, Array(len=2 * Mask(256, -1, stor22[arg2].field_0), data=mem[ceil32(return_data.size) + 448 len ceil32(uint255(stor22[arg2].field_0) * 0.5)]), 1
        else:
            if stor22[arg2].field_0 == stor22[arg2].field_1 < 32:
                revert with 0, 34
            if not stor22[arg2].field_0:
                emit 0xaed061a2: msg.sender, address(arg1), arg2, Array(len=stor22[arg2].field_0, data=Mask(248, 8, stor22[arg2].field_0)), 1
            else:
                if stor22[arg2].field_0 != 1:
                    emit 0xaed061a2: mem[ceil32(return_data.size) + 256 len -ceil32(return_data.size) - 256]
                else:
                    idx = 0
                    s = 0
                    while idx < stor22[arg2].field_1:
                        mem[idx + ceil32(return_data.size) + 448] = stor22[arg2][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xaed061a2: msg.sender, address(arg1), arg2, Array(len=stor22[arg2].field_0, data=mem[ceil32(return_data.size) + 448 len ceil32(stor22[arg2].field_1)]), 1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if arg3 < 7:
        if balanceOf[arg3][address(arg1)] < arg4:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[arg3][address(arg1)] -= arg4
        if balanceOf[arg3][arg2] > !arg4:
            revert with 0, 17
        balanceOf[arg3][arg2] += arg4
        emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
        if ext_code.size(arg2):
            require ext_code.size(arg2)
            call arg2.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        emit 0x3e0e3a81: address(arg1), address(arg2), arg3, arg4
    else:
        if balanceOf[arg3][address(arg1)] < 1:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[arg3][address(arg1)]--
        if balanceOf[arg3][arg2] > -2:
            revert with 0, 17
        balanceOf[arg3][arg2]++
        emit TransferSingle(arg3, 1, msg.sender, arg1, arg2);
        if not ext_code.size(arg2):
            if stor22[arg3].field_0:
                if stor22[arg3].field_0 == uint255(stor22[arg3].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not stor22[arg3].field_0:
                    emit 0xaed061a2: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor22[arg3].field_0), data=Mask(248, 8, stor22[arg3].field_0)), 1
                else:
                    if stor22[arg3].field_0 != 1:
                        emit 0xaed061a2: mem[ceil32(ceil32(arg5.length)) + 225 len -ceil32(ceil32(arg5.length)) - 225]
                    else:
                        idx = 0
                        s = 0
                        while idx < uint255(stor22[arg3].field_0) * 0.5:
                            mem[idx + ceil32(ceil32(arg5.length)) + 417] = stor22[arg3][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0xaed061a2: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor22[arg3].field_0), data=mem[ceil32(ceil32(arg5.length)) + 417 len ceil32(uint255(stor22[arg3].field_0) * 0.5)]), 1
            else:
                if stor22[arg3].field_0 == stor22[arg3].field_1 < 32:
                    revert with 0, 34
                if not stor22[arg3].field_0:
                    emit 0xaed061a2: msg.sender, address(arg2), arg3, Array(len=stor22[arg3].field_0, data=Mask(248, 8, stor22[arg3].field_0)), 1
                else:
                    if stor22[arg3].field_0 != 1:
                        emit 0xaed061a2: mem[ceil32(ceil32(arg5.length)) + 225 len -ceil32(ceil32(arg5.length)) - 225]
                    else:
                        idx = 0
                        s = 0
                        while idx < stor22[arg3].field_1:
                            mem[idx + ceil32(ceil32(arg5.length)) + 417] = stor22[arg3][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0xaed061a2: msg.sender, address(arg2), arg3, Array(len=stor22[arg3].field_0, data=mem[ceil32(ceil32(arg5.length)) + 417 len ceil32(stor22[arg3].field_1)]), 1
        else:
            mem[ceil32(ceil32(arg5.length)) + 229] = msg.sender
            mem[ceil32(ceil32(arg5.length)) + 261] = arg1
            mem[ceil32(ceil32(arg5.length)) + 293] = arg3
            mem[ceil32(ceil32(arg5.length)) + 325] = 1
            mem[ceil32(ceil32(arg5.length)) + 357] = 160
            mem[ceil32(ceil32(arg5.length)) + 389] = arg5.length
            mem[ceil32(ceil32(arg5.length)) + 421 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 1) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) > arg5.length:
                mem[ceil32(ceil32(arg5.length)) + arg5.length + 421] = 0
            require ext_code.size(arg2)
            call arg2.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 1, Array(len=arg5.length, data=arg5[all])
            mem[ceil32(ceil32(arg5.length)) + 225] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if stor22[arg3].field_0:
                if stor22[arg3].field_0 == uint255(stor22[arg3].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not stor22[arg3].field_0:
                    emit 0xaed061a2: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor22[arg3].field_0), data=Mask(248, 8, stor22[arg3].field_0)), 1
                else:
                    if stor22[arg3].field_0 != 1:
                        emit 0xaed061a2: mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 225 len -ceil32(ceil32(arg5.length)) + -ceil32(return_data.size) - 225]
                    else:
                        idx = 0
                        s = 0
                        while idx < uint255(stor22[arg3].field_0) * 0.5:
                            mem[idx + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 417] = stor22[arg3][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0xaed061a2: msg.sender, address(arg2), arg3, Array(len=2 * Mask(256, -1, stor22[arg3].field_0), data=mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 417 len ceil32(uint255(stor22[arg3].field_0) * 0.5)]), 1
            else:
                if stor22[arg3].field_0 == stor22[arg3].field_1 < 32:
                    revert with 0, 34
                if not stor22[arg3].field_0:
                    emit 0xaed061a2: msg.sender, address(arg2), arg3, Array(len=stor22[arg3].field_0, data=Mask(248, 8, stor22[arg3].field_0)), 1
                else:
                    if stor22[arg3].field_0 != 1:
                        emit 0xaed061a2: mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 225 len -ceil32(ceil32(arg5.length)) + -ceil32(return_data.size) - 225]
                    else:
                        idx = 0
                        s = 0
                        while idx < stor22[arg3].field_1:
                            mem[idx + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 417] = stor22[arg3][s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0xaed061a2: msg.sender, address(arg2), arg3, Array(len=stor22[arg3].field_0, data=mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 417 len ceil32(stor22[arg3].field_1)]), 1
}

function attack(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor34[msg.sender]) != 1:
        revert with 0, 'must be in battle'
    if bool(stor30[msg.sender]) != 1:
        revert with 0, 'not your turn'
    if arg1 >= sub_efa0a129.length:
        revert with 0, 50
    if sub_efa0a129[arg1].field_256 == msg.sender:
        stor35[msg.sender] = block.timestamp
        if stor22[stor32[stor38[arg1].field_512]].field_512 < stor22[stor32[stor38[arg1].field_256]].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor22[stor32[stor38[arg1].field_256]].field_768 >= 0:
            revert with 0, 17
        if stor22[stor32[stor38[arg1].field_256]].field_768 < 0 and stor22[stor32[stor38[arg1].field_512]].field_512 > stor22[stor32[stor38[arg1].field_256]].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if stor22[stor32[stor38[arg1].field_512]].field_256 < stor22[stor32[stor38[arg1].field_512]].field_512 + -stor22[stor32[stor38[arg1].field_256]].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor22[stor32[stor38[arg1].field_512]].field_512 - stor22[stor32[stor38[arg1].field_256]].field_768 >= 0:
            revert with 0, 17
        if stor22[stor32[stor38[arg1].field_512]].field_512 - stor22[stor32[stor38[arg1].field_256]].field_768 < 0 and stor22[stor32[stor38[arg1].field_512]].field_256 > stor22[stor32[stor38[arg1].field_512]].field_512 + -stor22[stor32[stor38[arg1].field_256]].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if stor22[stor32[stor38[arg1].field_512]].field_256 - stor22[stor32[stor38[arg1].field_512]].field_512 + stor22[stor32[stor38[arg1].field_256]].field_768 > 0:
            if stor22[stor32[stor38[arg1].field_512]].field_256 < stor22[stor32[stor38[arg1].field_512]].field_512 + -stor22[stor32[stor38[arg1].field_256]].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor22[stor32[stor38[arg1].field_512]].field_512 - stor22[stor32[stor38[arg1].field_256]].field_768 >= 0:
                revert with 0, 17
            if stor22[stor32[stor38[arg1].field_512]].field_512 - stor22[stor32[stor38[arg1].field_256]].field_768 < 0 and stor22[stor32[stor38[arg1].field_512]].field_256 > stor22[stor32[stor38[arg1].field_512]].field_512 + -stor22[stor32[stor38[arg1].field_256]].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            stor22[stor32[stor38[arg1].field_512]].field_256 = stor22[stor32[stor38[arg1].field_512]].field_256 - stor22[stor32[stor38[arg1].field_512]].field_512 + stor22[stor32[stor38[arg1].field_256]].field_768
            stor30[msg.sender] = 0
            stor30[stor38[arg1].field_512] = 1
        else:
            stor22[stor32[stor38[arg1].field_512]].field_256 = 0
            stor22[stor32[stor38[arg1].field_512]].field_1792 = 0
            if sub_9178c955[stor20] < stor22[stor32[stor38[arg1].field_512]].field_1792:
                revert with 0, 17
            sub_9178c955[stor20] -= stor22[stor32[stor38[arg1].field_512]].field_1792
            if not this.address:
                revert with 0, 'ERC1155: transfer to the zero address'
            if balanceOf[stor32[stor38[arg1].field_512]][stor38[arg1].field_512] < 1:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[stor32[stor38[arg1].field_512]][stor38[arg1].field_512]--
            if balanceOf[stor32[stor38[arg1].field_512]][this.address] > -2:
                revert with 0, 17
            balanceOf[stor32[stor38[arg1].field_512]][this.address]++
            emit TransferSingle(stor32[stor38[arg1].field_512], 1, msg.sender, sub_efa0a129[arg1].field_512, this.address);
            if not ext_code.size(this.address):
                if not sub_efa0a129[arg1].field_256:
                    revert with 0, 'ERC1155: transfer to the zero address'
                if balanceOf[address(this.address)] < stor22[stor32[stor38[arg1].field_512]].field_1792:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[address(this.address)] -= stor22[stor32[stor38[arg1].field_512]].field_1792
                if balanceOf[stor38[arg1].field_256] > !stor22[stor32[stor38[arg1].field_512]].field_1792:
                    revert with 0, 17
                balanceOf[stor38[arg1].field_256] += stor22[stor32[stor38[arg1].field_512]].field_1792
                emit TransferSingle(0, stor22[stor32[stor38[arg1].field_512]].field_1792, msg.sender, this.address, sub_efa0a129[arg1].field_256);
                if ext_code.size(sub_efa0a129[arg1].field_256):
                    require ext_code.size(sub_efa0a129[arg1].field_256)
                    call sub_efa0a129[arg1].field_256.0xf23a6e61 with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), 0, stor22[stor32[stor38[arg1].field_512]].field_1792, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                    revert with 0, 17
            else:
                mem[420] = 0
                mem[452 len 0] = None
                require ext_code.size(this.address)
                call this.address.0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, sub_efa0a129[arg1].field_512, stor32[stor38[arg1].field_512], 1, 160, 0
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if not sub_efa0a129[arg1].field_256:
                    revert with 0, 'ERC1155: transfer to the zero address'
                if balanceOf[address(this.address)] < stor22[stor32[stor38[arg1].field_512]].field_1792:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[address(this.address)] -= stor22[stor32[stor38[arg1].field_512]].field_1792
                if balanceOf[stor38[arg1].field_256] > !stor22[stor32[stor38[arg1].field_512]].field_1792:
                    revert with 0, 17
                balanceOf[stor38[arg1].field_256] += stor22[stor32[stor38[arg1].field_512]].field_1792
                emit TransferSingle(0, stor22[stor32[stor38[arg1].field_512]].field_1792, msg.sender, this.address, sub_efa0a129[arg1].field_256);
                if not ext_code.size(sub_efa0a129[arg1].field_256):
                    if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                        revert with 0, 17
                else:
                    mem[ceil32(return_data.size) + 420] = msg.sender
                    mem[ceil32(return_data.size) + 452] = this.address
                    mem[ceil32(return_data.size) + 484] = 0
                    mem[ceil32(return_data.size) + 516] = stor22[stor32[stor38[arg1].field_512]].field_1792
                    mem[ceil32(return_data.size) + 548] = 160
                    mem[ceil32(return_data.size) + 580] = 0
                    mem[ceil32(return_data.size) + 612 len 0] = None
                    require ext_code.size(sub_efa0a129[arg1].field_256)
                    call sub_efa0a129[arg1].field_256.0xf23a6e61 with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), 0, stor22[stor32[stor38[arg1].field_512]].field_1792, 160, 0
                    mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        mem[(2 * ceil32(return_data.size)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 420] = 32
                        mem[(2 * ceil32(return_data.size)) + 452] = 40
                        mem[(2 * ceil32(return_data.size)) + 484] = 'ERC1155: ERC1155Receiver rejecte'
                        mem[(2 * ceil32(return_data.size)) + 516] = 'd tokens' << 192
                        revert with memory
                          from (2 * ceil32(return_data.size)) + 416
                           len ceil32(return_data.size) + 132
                    mem[(2 * ceil32(return_data.size)) + 448] = block.difficulty
                    mem[(2 * ceil32(return_data.size)) + 480] = block.timestamp
                    if 1 > !(sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 64]) % 10):
                        revert with 0, 17
            if stor22[stor32[stor38[arg1].field_256]].field_1024 > -2:
                revert with 0, 17
            stor22[stor32[stor38[arg1].field_256]].field_1024++
            if 2 > -stor22[stor32[stor38[arg1].field_256]].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[stor32[stor38[arg1].field_256]].field_512 >= 0:
                revert with 0, 17
            if stor22[stor32[stor38[arg1].field_256]].field_512 < 0 and 2 < -stor22[stor32[stor38[arg1].field_256]].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            stor22[stor32[stor38[arg1].field_256]].field_512 += 2
            if 1 > -stor22[stor32[stor38[arg1].field_256]].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[stor32[stor38[arg1].field_256]].field_768 >= 0:
                revert with 0, 17
            if stor22[stor32[stor38[arg1].field_256]].field_768 < 0 and 1 < -stor22[stor32[stor38[arg1].field_256]].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            stor22[stor32[stor38[arg1].field_256]].field_768++
            if sub_7c9e23ca[msg.sender][stor32[msg.sender]] > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffa:
                revert with 0, 17
            stor22[stor32[stor38[arg1].field_256]].field_256 = sub_7c9e23ca[msg.sender][stor32[msg.sender]] + 5
            if sub_5067974d[msg.sender] > -2:
                revert with 0, 17
            sub_5067974d[msg.sender]++
            stor29[stor38[arg1].field_512][stor32[stor38[arg1].field_512]] = 1
            stor34[stor38[arg1].field_256] = 0
            stor34[stor38[arg1].field_512] = 0
            stor30[msg.sender] = 0
            stor30[stor38[arg1].field_512] = 0
            emit 0xfdbe50e1: sub_efa0a129[arg1].field_256, sub_efa0a129[arg1].field_512, stor22[stor32[stor38[arg1].field_512]].field_1792, block.timestamp
            emit 0xcadf0f43: sub_efa0a129[arg1].field_512, stor32[stor38[arg1].field_512], block.timestamp
    else:
        if sub_efa0a129[arg1].field_512 == msg.sender:
            stor35[msg.sender] = block.timestamp
            if stor22[stor32[stor38[arg1].field_256]].field_512 < stor22[stor32[stor38[arg1].field_512]].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor22[stor32[stor38[arg1].field_512]].field_768 >= 0:
                revert with 0, 17
            if stor22[stor32[stor38[arg1].field_512]].field_768 < 0 and stor22[stor32[stor38[arg1].field_256]].field_512 > stor22[stor32[stor38[arg1].field_512]].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if stor22[stor32[stor38[arg1].field_256]].field_256 < stor22[stor32[stor38[arg1].field_256]].field_512 + -stor22[stor32[stor38[arg1].field_512]].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor22[stor32[stor38[arg1].field_256]].field_512 - stor22[stor32[stor38[arg1].field_512]].field_768 >= 0:
                revert with 0, 17
            if stor22[stor32[stor38[arg1].field_256]].field_512 - stor22[stor32[stor38[arg1].field_512]].field_768 < 0 and stor22[stor32[stor38[arg1].field_256]].field_256 > stor22[stor32[stor38[arg1].field_256]].field_512 + -stor22[stor32[stor38[arg1].field_512]].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if stor22[stor32[stor38[arg1].field_256]].field_256 - stor22[stor32[stor38[arg1].field_256]].field_512 + stor22[stor32[stor38[arg1].field_512]].field_768 > 0:
                if stor22[stor32[stor38[arg1].field_256]].field_256 < stor22[stor32[stor38[arg1].field_256]].field_512 + -stor22[stor32[stor38[arg1].field_512]].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor22[stor32[stor38[arg1].field_256]].field_512 - stor22[stor32[stor38[arg1].field_512]].field_768 >= 0:
                    revert with 0, 17
                if stor22[stor32[stor38[arg1].field_256]].field_512 - stor22[stor32[stor38[arg1].field_512]].field_768 < 0 and stor22[stor32[stor38[arg1].field_256]].field_256 > stor22[stor32[stor38[arg1].field_256]].field_512 + -stor22[stor32[stor38[arg1].field_512]].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                stor22[stor32[stor38[arg1].field_256]].field_256 = stor22[stor32[stor38[arg1].field_256]].field_256 - stor22[stor32[stor38[arg1].field_256]].field_512 + stor22[stor32[stor38[arg1].field_512]].field_768
                stor30[msg.sender] = 0
                stor30[stor38[arg1].field_256] = 1
            else:
                stor22[stor32[stor38[arg1].field_256]].field_256 = 0
                stor22[stor32[stor38[arg1].field_256]].field_1792 = 0
                if sub_9178c955[stor20] < stor22[stor32[stor38[arg1].field_256]].field_1792:
                    revert with 0, 17
                sub_9178c955[stor20] -= stor22[stor32[stor38[arg1].field_256]].field_1792
                if not this.address:
                    revert with 0, 'ERC1155: transfer to the zero address'
                if balanceOf[stor32[stor38[arg1].field_256]][stor38[arg1].field_256] < 1:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[stor32[stor38[arg1].field_256]][stor38[arg1].field_256]--
                if balanceOf[stor32[stor38[arg1].field_256]][this.address] > -2:
                    revert with 0, 17
                balanceOf[stor32[stor38[arg1].field_256]][this.address]++
                emit TransferSingle(stor32[stor38[arg1].field_256], 1, msg.sender, sub_efa0a129[arg1].field_256, this.address);
                if not ext_code.size(this.address):
                    if not sub_efa0a129[arg1].field_512:
                        revert with 0, 'ERC1155: transfer to the zero address'
                    if balanceOf[address(this.address)] < stor22[stor32[stor38[arg1].field_256]].field_1792:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[address(this.address)] -= stor22[stor32[stor38[arg1].field_256]].field_1792
                    if balanceOf[stor38[arg1].field_512] > !stor22[stor32[stor38[arg1].field_256]].field_1792:
                        revert with 0, 17
                    balanceOf[stor38[arg1].field_512] += stor22[stor32[stor38[arg1].field_256]].field_1792
                    emit TransferSingle(0, stor22[stor32[stor38[arg1].field_256]].field_1792, msg.sender, this.address, sub_efa0a129[arg1].field_512);
                    if ext_code.size(sub_efa0a129[arg1].field_512):
                        require ext_code.size(sub_efa0a129[arg1].field_512)
                        call sub_efa0a129[arg1].field_512.0xf23a6e61 with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), 0, stor22[stor32[stor38[arg1].field_256]].field_1792, 160, 0
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                        revert with 0, 17
                else:
                    mem[420] = 0
                    mem[452 len 0] = None
                    require ext_code.size(this.address)
                    call this.address.0xf23a6e61 with:
                         gas gas_remaining wei
                        args msg.sender, sub_efa0a129[arg1].field_256, stor32[stor38[arg1].field_256], 1, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if not sub_efa0a129[arg1].field_512:
                        revert with 0, 'ERC1155: transfer to the zero address'
                    if balanceOf[address(this.address)] < stor22[stor32[stor38[arg1].field_256]].field_1792:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[address(this.address)] -= stor22[stor32[stor38[arg1].field_256]].field_1792
                    if balanceOf[stor38[arg1].field_512] > !stor22[stor32[stor38[arg1].field_256]].field_1792:
                        revert with 0, 17
                    balanceOf[stor38[arg1].field_512] += stor22[stor32[stor38[arg1].field_256]].field_1792
                    emit TransferSingle(0, stor22[stor32[stor38[arg1].field_256]].field_1792, msg.sender, this.address, sub_efa0a129[arg1].field_512);
                    if not ext_code.size(sub_efa0a129[arg1].field_512):
                        if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                            revert with 0, 17
                    else:
                        mem[ceil32(return_data.size) + 420] = msg.sender
                        mem[ceil32(return_data.size) + 452] = this.address
                        mem[ceil32(return_data.size) + 484] = 0
                        mem[ceil32(return_data.size) + 516] = stor22[stor32[stor38[arg1].field_256]].field_1792
                        mem[ceil32(return_data.size) + 548] = 160
                        mem[ceil32(return_data.size) + 580] = 0
                        mem[ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(sub_efa0a129[arg1].field_512)
                        call sub_efa0a129[arg1].field_512.0xf23a6e61 with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), 0, stor22[stor32[stor38[arg1].field_256]].field_1792, 160, 0
                        mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            mem[(2 * ceil32(return_data.size)) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 420] = 32
                            mem[(2 * ceil32(return_data.size)) + 452] = 40
                            mem[(2 * ceil32(return_data.size)) + 484] = 'ERC1155: ERC1155Receiver rejecte'
                            mem[(2 * ceil32(return_data.size)) + 516] = 'd tokens' << 192
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 416
                               len ceil32(return_data.size) + 132
                        mem[(2 * ceil32(return_data.size)) + 448] = block.difficulty
                        mem[(2 * ceil32(return_data.size)) + 480] = block.timestamp
                        if 1 > !(sha3(mem[(2 * ceil32(return_data.size)) + 448 len ceil32(return_data.size) + 64]) % 10):
                            revert with 0, 17
                if stor22[stor32[stor38[arg1].field_512]].field_1024 > -2:
                    revert with 0, 17
                stor22[stor32[stor38[arg1].field_512]].field_1024++
                if 2 > -stor22[stor32[stor38[arg1].field_512]].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[stor32[stor38[arg1].field_512]].field_512 >= 0:
                    revert with 0, 17
                if stor22[stor32[stor38[arg1].field_512]].field_512 < 0 and 2 < -stor22[stor32[stor38[arg1].field_512]].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[stor32[stor38[arg1].field_512]].field_512 += 2
                if 1 > -stor22[stor32[stor38[arg1].field_512]].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[stor32[stor38[arg1].field_512]].field_768 >= 0:
                    revert with 0, 17
                if stor22[stor32[stor38[arg1].field_512]].field_768 < 0 and 1 < -stor22[stor32[stor38[arg1].field_512]].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[stor32[stor38[arg1].field_512]].field_768++
                if sub_7c9e23ca[msg.sender][stor32[msg.sender]] > 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffa:
                    revert with 0, 17
                stor22[stor32[stor38[arg1].field_512]].field_256 = sub_7c9e23ca[msg.sender][stor32[msg.sender]] + 5
                if sub_5067974d[msg.sender] > -2:
                    revert with 0, 17
                sub_5067974d[msg.sender]++
                stor29[stor38[arg1].field_256][stor32[stor38[arg1].field_256]] = 1
                stor34[stor38[arg1].field_256] = 0
                stor34[stor38[arg1].field_512] = 0
                stor30[msg.sender] = 0
                stor30[stor38[arg1].field_512] = 0
                emit 0xfdbe50e1: sub_efa0a129[arg1].field_512, sub_efa0a129[arg1].field_256, stor22[stor32[stor38[arg1].field_256]].field_1792, block.timestamp
                emit 0xcadf0f43: sub_efa0a129[arg1].field_256, stor32[stor38[arg1].field_256], block.timestamp
}

function train(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < 7:
        revert with 0, 'invalid ID'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    require balanceOf[arg1][address(msg.sender)] > 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    if stor22[arg1].field_1280 > !stor5:
        revert with 0, 17
    if block.timestamp <= stor22[arg1].field_1280 + stor5:
        revert with 0, 'still resting!'
    if 27 > !stor22[arg1].field_1024:
        revert with 0, 17
    if 100 > !(stor22[arg1].field_1024 + 27):
        revert with 0, 17
    if balanceOf[address(msg.sender)] <= stor22[arg1].field_1024 + 127:
        revert with 0, 'Not enough UUJI'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[address(msg.sender)] < 50:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= 50
    emit TransferSingle(0, 50, msg.sender, msg.sender, 0);
    if sub_26e91d6a[0] > -51:
        revert with 0, 17
    sub_26e91d6a[0] += 50
    if not stor20:
        revert with 0, 'ERC1155: transfer to the zero address'
    if balanceOf[address(msg.sender)] < 50:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[address(msg.sender)] -= 50
    if balanceOf[stor20] > -51:
        revert with 0, 17
    balanceOf[stor20] += 50
    emit TransferSingle(0, 50, msg.sender, msg.sender, stor20);
    if not ext_code.size(stor20):
        if sub_26e91d6a[0] < 50:
            revert with 0, 17
        if sub_26e91d6a[0] - 50 != sub_26e91d6a[0]:
            revert with 0, 1
        if 27 > !stor22[arg1].field_1024:
            revert with 0, 17
        if not this.address:
            revert with 0, 'ERC1155: transfer to the zero address'
        if balanceOf[address(msg.sender)] < stor22[arg1].field_1024 + 27:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -stor22[arg1].field_1024 - 27
        if balanceOf[this.address] > !(stor22[arg1].field_1024 + 27):
            revert with 0, 17
        balanceOf[this.address] = balanceOf[this.address] + stor22[arg1].field_1024 + 27
        emit TransferSingle(0, stor22[arg1].field_1024 + 27, msg.sender, msg.sender, this.address);
        if not ext_code.size(this.address):
            if not stor20:
                revert with 0, 'ERC1155: transfer to the zero address'
            if balanceOf[address(msg.sender)] < 50:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[address(msg.sender)] -= 50
            if balanceOf[stor20] > -51:
                revert with 0, 17
            balanceOf[stor20] += 50
            emit TransferSingle(0, 50, msg.sender, msg.sender, stor20);
            if not ext_code.size(stor20):
                if sub_9178c955[stor20] > -51:
                    revert with 0, 17
                sub_9178c955[stor20] += 50
                if stor21 > -51:
                    revert with 0, 17
                stor21 += 50
                if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                    revert with 0, 17
                if block.timestamp > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                stor22[arg1].field_1280 = block.timestamp + (sha3(block.difficulty, block.timestamp) % 10) + 1
                if stor22[arg1].field_1024 > -2:
                    revert with 0, 17
                stor22[arg1].field_1024++
                if 2 > -stor22[arg1].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_512 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_512 < 0 and 2 < -stor22[arg1].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_512 += 2
                if 1 > -stor22[arg1].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_768 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_768 < 0 and 1 < -stor22[arg1].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_768++
                if 10 > -stor22[arg1].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_256 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_256 < 0 and 10 < -stor22[arg1].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_256 += 10
                if stor22[arg1].field_1792 > -51:
                    revert with 0, 17
                stor22[arg1].field_1792 += 50
                if stor22[arg1].field_0:
                    if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[832 len -832]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor22[arg1].field_0) * 0.5:
                                mem[idx + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=mem[992 len ceil32(uint255(stor22[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[832 len -832]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor22[arg1].field_1:
                                mem[idx + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=mem[992 len ceil32(stor22[arg1].field_1)]), block.timestamp
            else:
                mem[804] = 0
                mem[836] = 50
                mem[868] = 160
                mem[900] = 0
                mem[932 len 0] = None
                require ext_code.size(stor20)
                call stor20.0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, 0, 50, 160, 0
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if sub_9178c955[stor20] > -51:
                    revert with 0, 17
                sub_9178c955[stor20] += 50
                if stor21 > -51:
                    revert with 0, 17
                stor21 += 50
                if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                    revert with 0, 17
                if block.timestamp > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                stor22[arg1].field_1280 = block.timestamp + (sha3(block.difficulty, block.timestamp) % 10) + 1
                if stor22[arg1].field_1024 > -2:
                    revert with 0, 17
                stor22[arg1].field_1024++
                if 2 > -stor22[arg1].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_512 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_512 < 0 and 2 < -stor22[arg1].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_512 += 2
                if 1 > -stor22[arg1].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_768 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_768 < 0 and 1 < -stor22[arg1].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_768++
                if 10 > -stor22[arg1].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_256 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_256 < 0 and 10 < -stor22[arg1].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_256 += 10
                if stor22[arg1].field_1792 > -51:
                    revert with 0, 17
                stor22[arg1].field_1792 += 50
                if stor22[arg1].field_0:
                    if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[ceil32(return_data.size) + 832 len -ceil32(return_data.size) - 832]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor22[arg1].field_0) * 0.5:
                                mem[idx + ceil32(return_data.size) + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=mem[ceil32(return_data.size) + 992 len ceil32(uint255(stor22[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[ceil32(return_data.size) + 832 len -ceil32(return_data.size) - 832]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor22[arg1].field_1:
                                mem[idx + ceil32(return_data.size) + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=mem[ceil32(return_data.size) + 992 len ceil32(stor22[arg1].field_1)]), block.timestamp
        else:
            mem[740] = 0
            mem[772 len 0] = None
            require ext_code.size(this.address)
            call this.address.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, stor22[arg1].field_1024 + 27, 160, 0
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if not stor20:
                revert with 0, 'ERC1155: transfer to the zero address'
            if balanceOf[address(msg.sender)] < 50:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[address(msg.sender)] -= 50
            if balanceOf[stor20] > -51:
                revert with 0, 17
            balanceOf[stor20] += 50
            emit TransferSingle(0, 50, msg.sender, msg.sender, stor20);
            if not ext_code.size(stor20):
                if sub_9178c955[stor20] > -51:
                    revert with 0, 17
                sub_9178c955[stor20] += 50
                if stor21 > -51:
                    revert with 0, 17
                stor21 += 50
                if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                    revert with 0, 17
                if block.timestamp > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                stor22[arg1].field_1280 = block.timestamp + (sha3(block.difficulty, block.timestamp) % 10) + 1
                if stor22[arg1].field_1024 > -2:
                    revert with 0, 17
                stor22[arg1].field_1024++
                if 2 > -stor22[arg1].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_512 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_512 < 0 and 2 < -stor22[arg1].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_512 += 2
                if 1 > -stor22[arg1].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_768 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_768 < 0 and 1 < -stor22[arg1].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_768++
                if 10 > -stor22[arg1].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_256 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_256 < 0 and 10 < -stor22[arg1].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_256 += 10
                if stor22[arg1].field_1792 > -51:
                    revert with 0, 17
                stor22[arg1].field_1792 += 50
                if stor22[arg1].field_0:
                    if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[ceil32(return_data.size) + 832 len -ceil32(return_data.size) - 832]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor22[arg1].field_0) * 0.5:
                                mem[idx + ceil32(return_data.size) + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=mem[ceil32(return_data.size) + 992 len ceil32(uint255(stor22[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[ceil32(return_data.size) + 832 len -ceil32(return_data.size) - 832]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor22[arg1].field_1:
                                mem[idx + ceil32(return_data.size) + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=mem[ceil32(return_data.size) + 992 len ceil32(stor22[arg1].field_1)]), block.timestamp
            else:
                mem[ceil32(return_data.size) + 740] = msg.sender
                mem[ceil32(return_data.size) + 772] = msg.sender
                mem[ceil32(return_data.size) + 804] = 0
                mem[ceil32(return_data.size) + 836] = 50
                mem[ceil32(return_data.size) + 868] = 160
                mem[ceil32(return_data.size) + 900] = 0
                mem[ceil32(return_data.size) + 932 len 0] = None
                require ext_code.size(stor20)
                call stor20.0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, 0, 50, 160, 0
                mem[ceil32(return_data.size) + 736] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    mem[(2 * ceil32(return_data.size)) + 736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 740] = 32
                    mem[(2 * ceil32(return_data.size)) + 772] = 40
                    mem[(2 * ceil32(return_data.size)) + 804] = 'ERC1155: ERC1155Receiver rejecte'
                    mem[(2 * ceil32(return_data.size)) + 836] = 'd tokens' << 192
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 736
                       len ceil32(return_data.size) + 132
                if sub_9178c955[stor20] > -51:
                    revert with 0, 17
                sub_9178c955[stor20] += 50
                if stor21 > -51:
                    revert with 0, 17
                stor21 += 50
                mem[(2 * ceil32(return_data.size)) + 768] = block.difficulty
                mem[(2 * ceil32(return_data.size)) + 800] = block.timestamp
                if 1 > !(sha3(mem[(2 * ceil32(return_data.size)) + 768 len ceil32(return_data.size) + 64]) % 10):
                    revert with 0, 17
                if block.timestamp > !((sha3(mem[(2 * ceil32(return_data.size)) + 768 len ceil32(return_data.size) + 64]) % 10) + 1):
                    revert with 0, 17
                stor22[arg1].field_1280 = block.timestamp + (sha3(mem[(2 * ceil32(return_data.size)) + 768 len ceil32(return_data.size) + 64]) % 10) + 1
                if stor22[arg1].field_1024 > -2:
                    revert with 0, 17
                stor22[arg1].field_1024++
                if 2 > -stor22[arg1].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_512 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_512 < 0 and 2 < -stor22[arg1].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_512 += 2
                if 1 > -stor22[arg1].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_768 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_768 < 0 and 1 < -stor22[arg1].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_768++
                if 10 > -stor22[arg1].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_256 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_256 < 0 and 10 < -stor22[arg1].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_256 += 10
                if stor22[arg1].field_1792 > -51:
                    revert with 0, 17
                stor22[arg1].field_1792 += 50
                if stor22[arg1].field_0:
                    if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[(2 * ceil32(return_data.size)) + 832 len -(2 * ceil32(return_data.size)) - 832]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor22[arg1].field_0) * 0.5:
                                mem[idx + (2 * ceil32(return_data.size)) + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=mem[(2 * ceil32(return_data.size)) + 992 len ceil32(uint255(stor22[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[(2 * ceil32(return_data.size)) + 832 len -(2 * ceil32(return_data.size)) - 832]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor22[arg1].field_1:
                                mem[idx + (2 * ceil32(return_data.size)) + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=mem[(2 * ceil32(return_data.size)) + 992 len ceil32(stor22[arg1].field_1)]), block.timestamp
    else:
        mem[580] = 0
        mem[612 len 0] = None
        require ext_code.size(stor20)
        call stor20.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, msg.sender, 0, 50, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if sub_26e91d6a[0] < 50:
            revert with 0, 17
        if sub_26e91d6a[0] - 50 != sub_26e91d6a[0]:
            revert with 0, 1
        if 27 > !stor22[arg1].field_1024:
            revert with 0, 17
        if not this.address:
            revert with 0, 'ERC1155: transfer to the zero address'
        if balanceOf[address(msg.sender)] < stor22[arg1].field_1024 + 27:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -stor22[arg1].field_1024 - 27
        if balanceOf[this.address] > !(stor22[arg1].field_1024 + 27):
            revert with 0, 17
        balanceOf[this.address] = balanceOf[this.address] + stor22[arg1].field_1024 + 27
        emit TransferSingle(0, stor22[arg1].field_1024 + 27, msg.sender, msg.sender, this.address);
        if not ext_code.size(this.address):
            if not stor20:
                revert with 0, 'ERC1155: transfer to the zero address'
            if balanceOf[address(msg.sender)] < 50:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[address(msg.sender)] -= 50
            if balanceOf[stor20] > -51:
                revert with 0, 17
            balanceOf[stor20] += 50
            emit TransferSingle(0, 50, msg.sender, msg.sender, stor20);
            if not ext_code.size(stor20):
                if sub_9178c955[stor20] > -51:
                    revert with 0, 17
                sub_9178c955[stor20] += 50
                if stor21 > -51:
                    revert with 0, 17
                stor21 += 50
                if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                    revert with 0, 17
                if block.timestamp > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                stor22[arg1].field_1280 = block.timestamp + (sha3(block.difficulty, block.timestamp) % 10) + 1
                if stor22[arg1].field_1024 > -2:
                    revert with 0, 17
                stor22[arg1].field_1024++
                if 2 > -stor22[arg1].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_512 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_512 < 0 and 2 < -stor22[arg1].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_512 += 2
                if 1 > -stor22[arg1].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_768 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_768 < 0 and 1 < -stor22[arg1].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_768++
                if 10 > -stor22[arg1].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_256 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_256 < 0 and 10 < -stor22[arg1].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_256 += 10
                if stor22[arg1].field_1792 > -51:
                    revert with 0, 17
                stor22[arg1].field_1792 += 50
                if stor22[arg1].field_0:
                    if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[ceil32(return_data.size) + 832 len -ceil32(return_data.size) - 832]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor22[arg1].field_0) * 0.5:
                                mem[idx + ceil32(return_data.size) + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=mem[ceil32(return_data.size) + 992 len ceil32(uint255(stor22[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[ceil32(return_data.size) + 832 len -ceil32(return_data.size) - 832]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor22[arg1].field_1:
                                mem[idx + ceil32(return_data.size) + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=mem[ceil32(return_data.size) + 992 len ceil32(stor22[arg1].field_1)]), block.timestamp
            else:
                mem[ceil32(return_data.size) + 740] = msg.sender
                mem[ceil32(return_data.size) + 772] = msg.sender
                mem[ceil32(return_data.size) + 804] = 0
                mem[ceil32(return_data.size) + 836] = 50
                mem[ceil32(return_data.size) + 868] = 160
                mem[ceil32(return_data.size) + 900] = 0
                mem[ceil32(return_data.size) + 932 len 0] = None
                require ext_code.size(stor20)
                call stor20.0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, 0, 50, 160, 0
                mem[ceil32(return_data.size) + 736] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    mem[(2 * ceil32(return_data.size)) + 736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 740] = 32
                    mem[(2 * ceil32(return_data.size)) + 772] = 40
                    mem[(2 * ceil32(return_data.size)) + 804] = 'ERC1155: ERC1155Receiver rejecte'
                    mem[(2 * ceil32(return_data.size)) + 836] = 'd tokens' << 192
                    revert with memory
                      from (2 * ceil32(return_data.size)) + 736
                       len ceil32(return_data.size) + 132
                if sub_9178c955[stor20] > -51:
                    revert with 0, 17
                sub_9178c955[stor20] += 50
                if stor21 > -51:
                    revert with 0, 17
                stor21 += 50
                mem[(2 * ceil32(return_data.size)) + 768] = block.difficulty
                mem[(2 * ceil32(return_data.size)) + 800] = block.timestamp
                if 1 > !(sha3(mem[(2 * ceil32(return_data.size)) + 768 len ceil32(return_data.size) + 64]) % 10):
                    revert with 0, 17
                if block.timestamp > !((sha3(mem[(2 * ceil32(return_data.size)) + 768 len ceil32(return_data.size) + 64]) % 10) + 1):
                    revert with 0, 17
                stor22[arg1].field_1280 = block.timestamp + (sha3(mem[(2 * ceil32(return_data.size)) + 768 len ceil32(return_data.size) + 64]) % 10) + 1
                if stor22[arg1].field_1024 > -2:
                    revert with 0, 17
                stor22[arg1].field_1024++
                if 2 > -stor22[arg1].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_512 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_512 < 0 and 2 < -stor22[arg1].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_512 += 2
                if 1 > -stor22[arg1].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_768 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_768 < 0 and 1 < -stor22[arg1].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_768++
                if 10 > -stor22[arg1].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_256 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_256 < 0 and 10 < -stor22[arg1].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_256 += 10
                if stor22[arg1].field_1792 > -51:
                    revert with 0, 17
                stor22[arg1].field_1792 += 50
                if stor22[arg1].field_0:
                    if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[(2 * ceil32(return_data.size)) + 832 len -(2 * ceil32(return_data.size)) - 832]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor22[arg1].field_0) * 0.5:
                                mem[idx + (2 * ceil32(return_data.size)) + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=mem[(2 * ceil32(return_data.size)) + 992 len ceil32(uint255(stor22[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[(2 * ceil32(return_data.size)) + 832 len -(2 * ceil32(return_data.size)) - 832]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor22[arg1].field_1:
                                mem[idx + (2 * ceil32(return_data.size)) + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=mem[(2 * ceil32(return_data.size)) + 992 len ceil32(stor22[arg1].field_1)]), block.timestamp
        else:
            mem[ceil32(return_data.size) + 580] = msg.sender
            mem[ceil32(return_data.size) + 612] = msg.sender
            mem[ceil32(return_data.size) + 644] = 0
            mem[ceil32(return_data.size) + 676] = stor22[arg1].field_1024 + 27
            mem[ceil32(return_data.size) + 708] = 160
            mem[ceil32(return_data.size) + 740] = 0
            mem[ceil32(return_data.size) + 772 len 0] = None
            require ext_code.size(this.address)
            call this.address.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, stor22[arg1].field_1024 + 27, 160, 0
            mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                mem[(2 * ceil32(return_data.size)) + 576] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 580] = 32
                mem[(2 * ceil32(return_data.size)) + 612] = 40
                mem[(2 * ceil32(return_data.size)) + 644] = 'ERC1155: ERC1155Receiver rejecte'
                mem[(2 * ceil32(return_data.size)) + 676] = 'd tokens' << 192
                revert with memory
                  from (2 * ceil32(return_data.size)) + 576
                   len ceil32(return_data.size) + 132
            if not stor20:
                mem[(2 * ceil32(return_data.size)) + 608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 612] = 32
                mem[(2 * ceil32(return_data.size)) + 644] = 37
                mem[(2 * ceil32(return_data.size)) + 676] = 'ERC1155: transfer to the zero ad'
                mem[(2 * ceil32(return_data.size)) + 708] = 0x6472657373000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 608
                   len ceil32(return_data.size) + 132
            if balanceOf[address(msg.sender)] < 50:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[address(msg.sender)] -= 50
            if balanceOf[stor20] > -51:
                revert with 0, 17
            balanceOf[stor20] += 50
            emit TransferSingle(0, 50, msg.sender, msg.sender, stor20);
            if not ext_code.size(stor20):
                if sub_9178c955[stor20] > -51:
                    revert with 0, 17
                sub_9178c955[stor20] += 50
                if stor21 > -51:
                    revert with 0, 17
                stor21 += 50
                if 1 > !(sha3(block.difficulty, block.timestamp) % 10):
                    revert with 0, 17
                if block.timestamp > !((sha3(block.difficulty, block.timestamp) % 10) + 1):
                    revert with 0, 17
                stor22[arg1].field_1280 = block.timestamp + (sha3(block.difficulty, block.timestamp) % 10) + 1
                if stor22[arg1].field_1024 > -2:
                    revert with 0, 17
                stor22[arg1].field_1024++
                if 2 > -stor22[arg1].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_512 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_512 < 0 and 2 < -stor22[arg1].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_512 += 2
                if 1 > -stor22[arg1].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_768 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_768 < 0 and 1 < -stor22[arg1].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_768++
                if 10 > -stor22[arg1].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_256 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_256 < 0 and 10 < -stor22[arg1].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_256 += 10
                if stor22[arg1].field_1792 > -51:
                    revert with 0, 17
                stor22[arg1].field_1792 += 50
                if stor22[arg1].field_0:
                    if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[(2 * ceil32(return_data.size)) + 832 len -(2 * ceil32(return_data.size)) - 832]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor22[arg1].field_0) * 0.5:
                                mem[idx + (2 * ceil32(return_data.size)) + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=mem[(2 * ceil32(return_data.size)) + 992 len ceil32(uint255(stor22[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[(2 * ceil32(return_data.size)) + 832 len -(2 * ceil32(return_data.size)) - 832]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor22[arg1].field_1:
                                mem[idx + (2 * ceil32(return_data.size)) + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=mem[(2 * ceil32(return_data.size)) + 992 len ceil32(stor22[arg1].field_1)]), block.timestamp
            else:
                mem[(2 * ceil32(return_data.size)) + 740] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 772] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 804] = 0
                mem[(2 * ceil32(return_data.size)) + 836] = 50
                mem[(2 * ceil32(return_data.size)) + 868] = 160
                mem[(2 * ceil32(return_data.size)) + 900] = 0
                mem[(2 * ceil32(return_data.size)) + 932 len 0] = None
                require ext_code.size(stor20)
                call stor20.0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, 0, 50, 160, 0
                mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    mem[(4 * ceil32(return_data.size)) + 736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 740] = 32
                    mem[(4 * ceil32(return_data.size)) + 772] = 40
                    mem[(4 * ceil32(return_data.size)) + 804] = 'ERC1155: ERC1155Receiver rejecte'
                    mem[(4 * ceil32(return_data.size)) + 836] = 'd tokens' << 192
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 736
                       len (5 * ceil32(return_data.size)) + 132
                if sub_9178c955[stor20] > -51:
                    revert with 0, 17
                sub_9178c955[stor20] += 50
                if stor21 > -51:
                    revert with 0, 17
                stor21 += 50
                mem[(4 * ceil32(return_data.size)) + 768] = block.difficulty
                mem[(4 * ceil32(return_data.size)) + 800] = block.timestamp
                if 1 > !(sha3(mem[(4 * ceil32(return_data.size)) + 768 len (5 * ceil32(return_data.size)) + 64]) % 10):
                    revert with 0, 17
                if block.timestamp > !((sha3(mem[(4 * ceil32(return_data.size)) + 768 len (5 * ceil32(return_data.size)) + 64]) % 10) + 1):
                    revert with 0, 17
                stor22[arg1].field_1280 = block.timestamp + (sha3(mem[(4 * ceil32(return_data.size)) + 768 len (5 * ceil32(return_data.size)) + 64]) % 10) + 1
                if stor22[arg1].field_1024 > -2:
                    revert with 0, 17
                stor22[arg1].field_1024++
                if 2 > -stor22[arg1].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_512 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_512 < 0 and 2 < -stor22[arg1].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_512 += 2
                if 1 > -stor22[arg1].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_768 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_768 < 0 and 1 < -stor22[arg1].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_768++
                if 10 > -stor22[arg1].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor22[arg1].field_256 >= 0:
                    revert with 0, 17
                if stor22[arg1].field_256 < 0 and 10 < -stor22[arg1].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                stor22[arg1].field_256 += 10
                if stor22[arg1].field_1792 > -51:
                    revert with 0, 17
                stor22[arg1].field_1792 += 50
                if stor22[arg1].field_0:
                    if stor22[arg1].field_0 == uint255(stor22[arg1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[(4 * ceil32(return_data.size)) + 832 len -(4 * ceil32(return_data.size)) - 832]
                        else:
                            idx = 0
                            s = 0
                            while idx < uint255(stor22[arg1].field_0) * 0.5:
                                mem[idx + (4 * ceil32(return_data.size)) + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=2 * Mask(256, -1, stor22[arg1].field_0), data=mem[(4 * ceil32(return_data.size)) + 992 len ceil32(uint255(stor22[arg1].field_0) * 0.5)]), block.timestamp
                else:
                    if stor22[arg1].field_0 == stor22[arg1].field_1 < 32:
                        revert with 0, 34
                    if not stor22[arg1].field_0:
                        emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=Mask(248, 8, stor22[arg1].field_0)), block.timestamp
                    else:
                        if stor22[arg1].field_0 != 1:
                            emit 0x98e4f60f: mem[(4 * ceil32(return_data.size)) + 832 len -(4 * ceil32(return_data.size)) - 832]
                        else:
                            idx = 0
                            s = 0
                            while idx < stor22[arg1].field_1:
                                mem[idx + (4 * ceil32(return_data.size)) + 992] = stor22[arg1][s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x98e4f60f: msg.sender, arg1, Array(len=stor22[arg1].field_0, data=mem[(4 * ceil32(return_data.size)) + 992 len ceil32(stor22[arg1].field_1)]), block.timestamp
    emit 0xfecb9e94: 0, stor21, block.timestamp
}



}
