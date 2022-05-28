contract main {




// =====================  Runtime code  =====================


#
#  - sub_dd18edb3(?)
#
const MAX_SOLD = 20000 * 10^18


address owner;
address nodeRewardManagerAddress;
uint256 PRICE;
uint256 sub_4e30b0ac;
uint256 MIN_PRESALE_PER_ACCOUNT;
uint256 MAX_PRESALE_PER_ACCOUNT;
uint256 sold;
uint8 saleEnabled;
address stor7;
address devAddress; offset 8
address sub_8ab3cdccAddress;
address stor9;
array of uint256 stor10;
mapping of uint256 invested;

function sold() payable {
    return sold
}

function MAX_PRESALE_PER_ACCOUNT() payable {
    return MAX_PRESALE_PER_ACCOUNT
}

function sub_4e30b0ac(?) payable {
    return sub_4e30b0ac
}

function invested(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return invested[arg1]
}

function saleEnabled() payable {
    return bool(saleEnabled)
}

function nodeRewardManager() payable {
    return nodeRewardManagerAddress
}

function sub_8ab3cdcc(?) payable {
    return sub_8ab3cdccAddress
}

function PRICE() payable {
    return PRICE
}

function owner() payable {
    return owner
}

function dev() payable {
    return devAddress
}

function MIN_PRESALE_PER_ACCOUNT() payable {
    return MIN_PRESALE_PER_ACCOUNT
}

function _fallback() payable {
    revert
}

function sub_eea52d38(?) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, '!dev'
    PRICE = arg1
}

function sub_768a60d8(?) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, '!dev'
    sub_4e30b0ac = arg1
}

function sub_4c1303ad(?) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, '!dev'
    MAX_PRESALE_PER_ACCOUNT = arg1
}

function sub_f506b859(?) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, '!dev'
    MIN_PRESALE_PER_ACCOUNT = arg1
}

function setSold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sold = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setCAaddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, '!dev'
    stor9 = arg1
}

function setSaleEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    saleEnabled = uint8(arg1)
}

function sub_b5958720(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddress = address(arg1)
}

function setNodeManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodeRewardManagerAddress = arg1
}

function amountBuyable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not saleEnabled:
        if 0 < invested[address(arg1)]:
            revert with 0, 17
        return -invested[address(arg1)]
    if MAX_PRESALE_PER_ACCOUNT < invested[address(arg1)]:
        revert with 0, 17
    return (MAX_PRESALE_PER_ACCOUNT - invested[address(arg1)])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isDev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= stor10.length:
        revert with 0, 50
    if address(stor10.field_0) != arg1:
        if 1 >= stor10.length:
            revert with 0, 50
        if address(stor10.field_256) != arg1:
            if 2 >= stor10.length:
                revert with 0, 50
            if address(stor10.field_512) != arg1:
                return 0
    return 1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, '!dev'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor7, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transferERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c61776e1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        mem[ceil32(arg1.length) + 164] = msg.sender
        mem[ceil32(arg1.length) + 196] = this.address
        mem[ceil32(arg1.length) + 228] = 0
    else:
        if arg2 and 10^18 > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[ceil32(arg1.length) + 164] = msg.sender
        mem[ceil32(arg1.length) + 196] = this.address
        mem[ceil32(arg1.length) + 228] = 10^18 * arg2
    mem[ceil32(arg1.length) + 128] = 100
    mem[ceil32(arg1.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(arg1.length) + 160 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(arg1.length) + 260] = 32
    mem[ceil32(arg1.length) + 292] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stor9):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(arg1.length) + 324 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 324] = 0
    call stor9.mem[ceil32(arg1.length) + 324 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 328 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
    if not return_data.size:
        if not ext_call.success:
            if arg1.length:
                revert with arg1[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1.length:
            require arg1.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(arg1.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg1.length) + 356] == bool(mem[ceil32(arg1.length) + 356])
            if not mem[ceil32(arg1.length) + 356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if not arg2:
        require ext_code.size(nodeRewardManagerAddress)
        call nodeRewardManagerAddress.0x90219732 with:
             gas gas_remaining wei
            args msg.sender, 96, 0, arg1.length, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    else:
        if arg2 and 10^18 > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(nodeRewardManagerAddress)
        call nodeRewardManagerAddress.0x90219732 with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=arg1[all]), 10^18 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sold > !arg2:
        revert with 0, 17
    sold += arg2
}

function sub_676e30d7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg2 < sub_4e30b0ac:
        revert with 0, 'NODE CREATION: Node Value set below MinPrice'
    saleEnabled = 1
    if not arg2:
        mem[ceil32(arg1.length) + 164] = msg.sender
        mem[ceil32(arg1.length) + 196] = this.address
        mem[ceil32(arg1.length) + 228] = 0
    else:
        if arg2 and 10^18 > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[ceil32(arg1.length) + 164] = msg.sender
        mem[ceil32(arg1.length) + 196] = this.address
        mem[ceil32(arg1.length) + 228] = 10^18 * arg2
    mem[ceil32(arg1.length) + 128] = 100
    mem[ceil32(arg1.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(arg1.length) + 160 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(arg1.length) + 260] = 32
    mem[ceil32(arg1.length) + 292] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stor9):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(arg1.length) + 324 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + 324] = 0
    call stor9.mem[ceil32(arg1.length) + 324 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 328 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
    if not return_data.size:
        if not ext_call.success:
            if arg1.length:
                revert with arg1[all]
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1.length:
            require arg1.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(arg1.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(arg1.length) + 356] == bool(mem[ceil32(arg1.length) + 356])
            if not mem[ceil32(arg1.length) + 356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if not arg2:
        require ext_code.size(nodeRewardManagerAddress)
        call nodeRewardManagerAddress.0x90219732 with:
             gas gas_remaining wei
            args msg.sender, 96, 0, arg1.length, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    else:
        if arg2 and 10^18 > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(nodeRewardManagerAddress)
        call nodeRewardManagerAddress.0x90219732 with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=arg1[all]), 10^18 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if invested[msg.sender] > !arg2:
        revert with 0, 17
    invested[msg.sender] += arg2
    if sold > !arg2:
        revert with 0, 17
    sold += arg2
}



}
