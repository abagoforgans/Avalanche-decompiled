contract main {




// =====================  Runtime code  =====================


#
#  - sub_080155f4(?)
#  - sub_2918a612(?)
#  - sub_299fff41(?)
#  - sub_585131da(?)
#  - sub_84c4287c(?)
#  - buy()
#  - sub_df7afa1b(?)
#
const sub_3afeddcc(?) = 100 * 10^18

const sub_87555bd7(?) = 10^12

const sub_a76aa6fc(?) = 0x620d362b92b6ef580d4e86c5675d679fe08d31dff47b72f281959a4eecdd036a

const sub_b7d22ad7(?) = 34

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
uint256 baseRatePerBlock;
address sub_f5c4bed8Address;
uint256 totalMint;
uint256 totalBurn;
uint256 sub_b8fad400;
uint256 sub_b24f9ab0;
uint256 sub_d9628038;
uint256 sub_d2359f21;
uint256 sub_09cb0ce1;
address priceOracleAddress;
address buyTokenAddress;
address sub_07d7ca2bAddress;
mapping of struct stor14;
mapping of uint256 sub_d549a7f7;
mapping of struct userInfoMap;
mapping of struct sub_fc977752;
uint256 sub_91e6108e;
address sub_2a58a11fAddress;
uint256 stor4706;

function sub_07d7ca2b(?) {
    return sub_07d7ca2bAddress
}

function sub_09cb0ce1(?) {
    return sub_09cb0ce1
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function priceOracle() {
    return priceOracleAddress
}

function sub_2a58a11f(?) {
    return sub_2a58a11fAddress
}

function totalBurn() {
    return totalBurn
}

function totalMint() {
    return totalMint
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function sub_91e6108e(?) {
    return sub_91e6108e
}

function buyToken() {
    return buyTokenAddress
}

function userInfoMap(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfoMap[arg1].field_0, userInfoMap[arg1].field_256
}

function sub_b24f9ab0(?) {
    return sub_b24f9ab0
}

function sub_b8fad400(?) {
    return sub_b8fad400
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function sub_d2359f21(?) {
    return sub_d2359f21
}

function sub_d549a7f7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d549a7f7[arg1]
}

function sub_d9628038(?) {
    return sub_d9628038
}

function baseRatePerBlock() {
    return baseRatePerBlock
}

function sub_f5c4bed8(?) {
    return sub_f5c4bed8Address
}

function sub_fc977752(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fc977752[arg1].field_0, sub_fc977752[arg1].field_256, sub_fc977752[arg1].field_512
}

function _fallback() payable {
    revert
}

function sub_5c3770b8(?) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'only admin'
    baseRatePerBlock = arg1
}

function sub_de56d1e1(?) {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'only admin'
    sub_b8fad400 = arg1
    sub_b24f9ab0 = arg2
}

function sub_cc7336c0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'only admin'
    sub_2a58a11fAddress = address(arg1)
}

function sub_712ea09a(?) {
    require calldata.size - 4 >= 32
    mem[128] = stor14[arg1][4].field_0
    idx = 128
    s = 0
    while stor14[arg1][4].length + 96 > idx:
        mem[idx + 32] = stor14[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor14[arg1].field_0, 
           stor14[arg1].field_256,
           stor14[arg1].field_512,
           stor14[arg1].field_768,
           Array(len=stor14[arg1][4].length, data=mem[128 len ceil32(stor14[arg1][4].length)])
}

function sub_7ca2f1b9(?) {
    require calldata.size - 4 >= 32
    if sub_d549a7f7[msg.sender]:
        revert with 0, 'already exist one Elixir'
    require ext_code.size(sub_f5c4bed8Address)
    call sub_f5c4bed8Address.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_d549a7f7[msg.sender] = arg1
    userInfoMap[msg.sender].field_256 = block.number
    emit 0xabbd2390: msg.sender, arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function sub_30810fb5(?) {
    require ext_code.size(priceOracleAddress)
    staticcall priceOracleAddress.0x1a8a8f42 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if sub_b24f9ab0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if sub_b24f9ab0:
            return (0 / sub_b24f9ab0)
    else:
        if sub_b8fad400 * ext_call.return_data[0] / ext_call.return_data[0] != sub_b8fad400:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_b24f9ab0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if sub_b24f9ab0:
            return (sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0)
    ('iszero', ('stor', ('name', 'sub_b24f9ab0', 7)))
    revert
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not roleAdmin[0][1][address(arg1)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = arg1
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(arg1)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, arg1, msg.sender);
    stor4706 = arg6
    baseRatePerBlock = 165343915343915
    priceOracleAddress = arg4
    buyTokenAddress = arg3
    sub_f5c4bed8Address = arg2
    sub_07d7ca2bAddress = arg5
    sub_b8fad400 = 1
    sub_b24f9ab0 = 100
    sub_d9628038 = 2 * 10^14
    sub_d2359f21 = 1000000 * 10^18
    sub_09cb0ce1 = 30 * 10^18
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_7358c7d8(?) {
    require calldata.size - 4 >= 160
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    if not roleAdmin[0x620d362b92b6ef580d4e86c5675d679fe08d31dff47b72f281959a4eecdd036a][1][address(msg.sender)].field_0:
        revert with 0, 'only crosschain'
    if totalMint + 1 < totalMint:
        revert with 0, 'SafeMath: addition overflow'
    totalMint++
    require ext_code.size(sub_f5c4bed8Address)
    call sub_f5c4bed8Address.0x1b2ef1ca with:
         gas gas_remaining wei
        args totalMint + 1, cd[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f5c4bed8Address)
    call sub_f5c4bed8Address.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, totalMint
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor14[stor4].field_0 = cd[4]
    stor14[stor4].field_256 = cd[36]
    stor14[stor4].field_512 = cd[68]
    stor14[stor4].field_768 = cd[100]
    stor14[stor4].field_1024 = (2 * ('cd', 132).length) + 1
    s = 0
    idx = cd[132] + 36
    while cd[132] + ('cd', 132).length + 36 > idx:
        stor14[stor4][s + 4].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 132).length + 31) >> 5
    while stor14[stor4][4].length + 31 / 32 > idx:
        stor14[stor4][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    emit 0xc8e4b940: Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length]), cd[68], cd[100], totalMint
}

function sub_19c1a437(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if userInfoMap[address(arg1)].field_0 <= sub_d2359f21:
        if not userInfoMap[address(arg1)].field_0:
            if sub_d2359f21 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_d2359f21
            if (0 / sub_d2359f21) + 10^12 < 10^12:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / sub_d2359f21) + 10^12)
        if sub_d9628038 * userInfoMap[address(arg1)].field_0 / userInfoMap[address(arg1)].field_0 != sub_d9628038:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_d2359f21 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_d2359f21
        if (sub_d9628038 * userInfoMap[address(arg1)].field_0 / sub_d2359f21) + 10^12 < 10^12:
            revert with 0, 'SafeMath: addition overflow'
        return ((sub_d9628038 * userInfoMap[address(arg1)].field_0 / sub_d2359f21) + 10^12)
    if not sub_d2359f21:
        if sub_d2359f21 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_d2359f21
        if (0 / sub_d2359f21) + 10^12 < 10^12:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / sub_d2359f21) + 10^12)
    if sub_d9628038 * sub_d2359f21 / sub_d2359f21 != sub_d9628038:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if sub_d2359f21 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_d2359f21
    if (sub_d9628038 * sub_d2359f21 / sub_d2359f21) + 10^12 < 10^12:
        revert with 0, 'SafeMath: addition overflow'
    return ((sub_d9628038 * sub_d2359f21 / sub_d2359f21) + 10^12)
}

function getTransferFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(priceOracleAddress)
    staticcall priceOracleAddress.0x1a8a8f42 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if sub_b24f9ab0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_b24f9ab0
        if not 0 / sub_b24f9ab0 / 10:
            if 0 / sub_b24f9ab0 / 10 < 0 / sub_b24f9ab0 / 10:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / sub_b24f9ab0 / 10)
        if stor14[arg1].field_0 * 0 / sub_b24f9ab0 / 10 / 0 / sub_b24f9ab0 / 10 != stor14[arg1].field_0:
            revert with 0, 'SafeMath: multiplication overflow'
        if (stor14[arg1].field_0 * 0 / sub_b24f9ab0 / 10 / 10) + (0 / sub_b24f9ab0 / 10) < 0 / sub_b24f9ab0 / 10:
            revert with 0, 'SafeMath: addition overflow'
        return ((stor14[arg1].field_0 * 0 / sub_b24f9ab0 / 10 / 10) + (0 / sub_b24f9ab0 / 10))
    if sub_b8fad400 * ext_call.return_data[0] / ext_call.return_data[0] != sub_b8fad400:
        revert with 0, 'SafeMath: multiplication overflow'
    if sub_b24f9ab0 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_b24f9ab0
    if not sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10:
        if sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10 < sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10)
    if stor14[arg1].field_0 * sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10 / sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10 != stor14[arg1].field_0:
        revert with 0, 'SafeMath: multiplication overflow'
    if (stor14[arg1].field_0 * sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10 / 10) + (sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10) < sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10:
        revert with 0, 'SafeMath: addition overflow'
    return ((stor14[arg1].field_0 * sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10 / 10) + (sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10))
}

function sub_2a660c9b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.number <= userInfoMap[address(arg1)].field_256:
        return 0
    if userInfoMap[address(arg1)].field_256 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if userInfoMap[address(arg1)].field_0 <= sub_d2359f21:
        if not userInfoMap[address(arg1)].field_0:
            if sub_d2359f21 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_d2359f21
            if (0 / sub_d2359f21) + 10^12 < 10^12:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - userInfoMap[address(arg1)].field_256:
                if sub_d549a7f7[address(arg1)]:
                    if stor14[stor15[address(arg1)]].field_256 > 100 * 10^18:
                        return (-stor14[stor15[address(arg1)]].field_256 + 100 * 10^18)
                    else:
                        return 0
                else:
                    return 0
            if (block.number * baseRatePerBlock) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(arg1)].field_256 != baseRatePerBlock:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (block.number * baseRatePerBlock) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock):
                if sub_d549a7f7[address(arg1)]:
                    if stor14[stor15[address(arg1)]].field_256 > 100 * 10^18:
                        return (-stor14[stor15[address(arg1)]].field_256 + 100 * 10^18)
                    else:
                        return 0
                else:
                    return 0
            if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg1)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock) != (0 / sub_d2359f21) + 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not sub_d549a7f7[address(arg1)]:
                return 0
            if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg1)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(arg1)]].field_256 > 100 * 10^18:
                return (-stor14[stor15[address(arg1)]].field_256 + 100 * 10^18)
            return ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg1)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12)
        if sub_d9628038 * userInfoMap[address(arg1)].field_0 / userInfoMap[address(arg1)].field_0 != sub_d9628038:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_d2359f21 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_d2359f21
        if (sub_d9628038 * userInfoMap[address(arg1)].field_0 / sub_d2359f21) + 10^12 < 10^12:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - userInfoMap[address(arg1)].field_256:
            if sub_d549a7f7[address(arg1)]:
                if stor14[stor15[address(arg1)]].field_256 > 100 * 10^18:
                    return (-stor14[stor15[address(arg1)]].field_256 + 100 * 10^18)
                else:
                    return 0
            else:
                return 0
        if (block.number * baseRatePerBlock) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(arg1)].field_256 != baseRatePerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (block.number * baseRatePerBlock) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock):
            if sub_d549a7f7[address(arg1)]:
                if stor14[stor15[address(arg1)]].field_256 > 100 * 10^18:
                    return (-stor14[stor15[address(arg1)]].field_256 + 100 * 10^18)
                else:
                    return 0
            else:
                return 0
        if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg1)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(arg1)].field_0 / sub_d2359f21) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(arg1)].field_0 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock) != (sub_d9628038 * userInfoMap[address(arg1)].field_0 / sub_d2359f21) + 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not sub_d549a7f7[address(arg1)]:
            return 0
        if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg1)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(arg1)].field_0 / sub_d2359f21) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(arg1)].field_0 / sub_d2359f21) / 10^12) + stor14[stor15[address(arg1)]].field_256 > 100 * 10^18:
            return (-stor14[stor15[address(arg1)]].field_256 + 100 * 10^18)
        return ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg1)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(arg1)].field_0 / sub_d2359f21) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(arg1)].field_0 / sub_d2359f21) / 10^12)
    if not sub_d2359f21:
        if sub_d2359f21 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_d2359f21
        if (0 / sub_d2359f21) + 10^12 < 10^12:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - userInfoMap[address(arg1)].field_256:
            if sub_d549a7f7[address(arg1)]:
                if stor14[stor15[address(arg1)]].field_256 > 100 * 10^18:
                    return (-stor14[stor15[address(arg1)]].field_256 + 100 * 10^18)
                else:
                    return 0
            else:
                return 0
        if (block.number * baseRatePerBlock) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(arg1)].field_256 != baseRatePerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (block.number * baseRatePerBlock) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock):
            if sub_d549a7f7[address(arg1)]:
                if stor14[stor15[address(arg1)]].field_256 > 100 * 10^18:
                    return (-stor14[stor15[address(arg1)]].field_256 + 100 * 10^18)
                else:
                    return 0
            else:
                return 0
        if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg1)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock) != (0 / sub_d2359f21) + 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not sub_d549a7f7[address(arg1)]:
            return 0
        if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg1)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(arg1)]].field_256 > 100 * 10^18:
            return (-stor14[stor15[address(arg1)]].field_256 + 100 * 10^18)
        return ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg1)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12)
    if sub_d9628038 * sub_d2359f21 / sub_d2359f21 != sub_d9628038:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if sub_d2359f21 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_d2359f21
    if (sub_d9628038 * sub_d2359f21 / sub_d2359f21) + 10^12 < 10^12:
        revert with 0, 'SafeMath: addition overflow'
    if not block.number - userInfoMap[address(arg1)].field_256:
        if sub_d549a7f7[address(arg1)]:
            if stor14[stor15[address(arg1)]].field_256 > 100 * 10^18:
                return (-stor14[stor15[address(arg1)]].field_256 + 100 * 10^18)
            else:
                return 0
        else:
            return 0
    if (block.number * baseRatePerBlock) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(arg1)].field_256 != baseRatePerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (block.number * baseRatePerBlock) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock):
        if sub_d549a7f7[address(arg1)]:
            if stor14[stor15[address(arg1)]].field_256 > 100 * 10^18:
                return (-stor14[stor15[address(arg1)]].field_256 + 100 * 10^18)
            else:
                return 0
        else:
            return 0
    if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg1)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock) != (sub_d9628038 * sub_d2359f21 / sub_d2359f21) + 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not sub_d549a7f7[address(arg1)]:
        return 0
    if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg1)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / 10^12) + stor14[stor15[address(arg1)]].field_256 > 100 * 10^18:
        return (-stor14[stor15[address(arg1)]].field_256 + 100 * 10^18)
    return ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg1)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(arg1)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / 10^12)
}

function sub_219b0f71(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require ext_code.size(priceOracleAddress)
    staticcall priceOracleAddress.0x1a8a8f42 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if sub_b24f9ab0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_b24f9ab0
        if not 0 / sub_b24f9ab0 / 10:
            if 0 / sub_b24f9ab0 / 10 < 0 / sub_b24f9ab0 / 10:
                revert with 0, 'SafeMath: addition overflow'
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = 0 / sub_b24f9ab0 / 10
            mem[ceil32(return_data.size) + 96] = 100
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(buyTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0 / sub_b24f9ab0 / 10, 0
            mem[ceil32(return_data.size) + 392] = 0
            call buyTokenAddress with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), 0 / sub_b24f9ab0 / 10, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), 0 / sub_b24f9ab0 / 10, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(buyTokenAddress)
            call buyTokenAddress.0x42966c68 with:
                 gas gas_remaining wei
                args (0 / sub_b24f9ab0 / 10)
        else:
            if stor14[arg1].field_0 * 0 / sub_b24f9ab0 / 10 / 0 / sub_b24f9ab0 / 10 != stor14[arg1].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor14[arg1].field_0 * 0 / sub_b24f9ab0 / 10 / 10) + (0 / sub_b24f9ab0 / 10) < 0 / sub_b24f9ab0 / 10:
                revert with 0, 'SafeMath: addition overflow'
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = (stor14[arg1].field_0 * 0 / sub_b24f9ab0 / 10 / 10) + (0 / sub_b24f9ab0 / 10)
            mem[ceil32(return_data.size) + 96] = 100
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(buyTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), (stor14[arg1].field_0 * 0 / sub_b24f9ab0 / 10 / 10) + (0 / sub_b24f9ab0 / 10), 0
            mem[ceil32(return_data.size) + 392] = 0
            call buyTokenAddress with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), (stor14[arg1].field_0 * 0 / sub_b24f9ab0 / 10 / 10) + (0 / sub_b24f9ab0 / 10), 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), (stor14[arg1].field_0 * 0 / sub_b24f9ab0 / 10 / 10) + (0 / sub_b24f9ab0 / 10), 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(buyTokenAddress)
            call buyTokenAddress.0x42966c68 with:
                 gas gas_remaining wei
                args ((stor14[arg1].field_0 * 0 / sub_b24f9ab0 / 10 / 10) + (0 / sub_b24f9ab0 / 10))
    else:
        if sub_b8fad400 * ext_call.return_data[0] / ext_call.return_data[0] != sub_b8fad400:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_b24f9ab0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_b24f9ab0
        if not sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10:
            if sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10 < sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10:
                revert with 0, 'SafeMath: addition overflow'
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10
            mem[ceil32(return_data.size) + 96] = 100
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(buyTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10, 0
            mem[ceil32(return_data.size) + 392] = 0
            call buyTokenAddress with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(buyTokenAddress)
            call buyTokenAddress.0x42966c68 with:
                 gas gas_remaining wei
                args (sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10)
        else:
            if stor14[arg1].field_0 * sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10 / sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10 != stor14[arg1].field_0:
                revert with 0, 'SafeMath: multiplication overflow'
            if (stor14[arg1].field_0 * sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10 / 10) + (sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10) < sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10:
                revert with 0, 'SafeMath: addition overflow'
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = (stor14[arg1].field_0 * sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10 / 10) + (sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10)
            mem[ceil32(return_data.size) + 96] = 100
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(buyTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), (stor14[arg1].field_0 * sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10 / 10) + (sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10), 0
            mem[ceil32(return_data.size) + 392] = 0
            call buyTokenAddress with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), (stor14[arg1].field_0 * sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10 / 10) + (sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10), 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), (stor14[arg1].field_0 * sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10 / 10) + (sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10), 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(buyTokenAddress)
            call buyTokenAddress.0x42966c68 with:
                 gas gas_remaining wei
                args ((stor14[arg1].field_0 * sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10 / 10) + (sub_b8fad400 * ext_call.return_data[0] / sub_b24f9ab0 / 10))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_f5c4bed8Address)
    call sub_f5c4bed8Address.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4b7a2a31(?) {
    if not sub_d549a7f7[msg.sender]:
        revert with 0, 'no Elixir'
    if block.number <= userInfoMap[address(msg.sender)].field_256:
        if sub_d549a7f7[address(msg.sender)]:
            if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
    else:
        if userInfoMap[address(msg.sender)].field_256 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfoMap[address(msg.sender)].field_0 <= sub_d2359f21:
            if not userInfoMap[address(msg.sender)].field_0:
                if sub_d2359f21 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_d2359f21
                if (0 / sub_d2359f21) + 10^12 < 10^12:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - userInfoMap[address(msg.sender)].field_256:
                    if not sub_d549a7f7[address(msg.sender)]:
                        if sub_d549a7f7[address(msg.sender)]:
                            if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                            if sub_d549a7f7[address(msg.sender)]:
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                else:
                    if (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(msg.sender)].field_256 != baseRatePerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock):
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) != (0 / sub_d2359f21) + 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 += (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12
                                    if 100 * 10^18 < ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
            else:
                if sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / userInfoMap[address(msg.sender)].field_0 != sub_d9628038:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if sub_d2359f21 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_d2359f21
                if (sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) + 10^12 < 10^12:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - userInfoMap[address(msg.sender)].field_256:
                    if not sub_d549a7f7[address(msg.sender)]:
                        if sub_d549a7f7[address(msg.sender)]:
                            if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                            if sub_d549a7f7[address(msg.sender)]:
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                else:
                    if (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(msg.sender)].field_256 != baseRatePerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock):
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) != (sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) + 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 += (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) / 10^12
                                    if 100 * 10^18 < ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
        else:
            if not sub_d2359f21:
                if sub_d2359f21 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_d2359f21
                if (0 / sub_d2359f21) + 10^12 < 10^12:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - userInfoMap[address(msg.sender)].field_256:
                    if not sub_d549a7f7[address(msg.sender)]:
                        if sub_d549a7f7[address(msg.sender)]:
                            if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                            if sub_d549a7f7[address(msg.sender)]:
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                else:
                    if (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(msg.sender)].field_256 != baseRatePerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock):
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) != (0 / sub_d2359f21) + 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 += (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12
                                    if 100 * 10^18 < ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
            else:
                if sub_d9628038 * sub_d2359f21 / sub_d2359f21 != sub_d9628038:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if sub_d2359f21 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_d2359f21
                if (sub_d9628038 * sub_d2359f21 / sub_d2359f21) + 10^12 < 10^12:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - userInfoMap[address(msg.sender)].field_256:
                    if not sub_d549a7f7[address(msg.sender)]:
                        if sub_d549a7f7[address(msg.sender)]:
                            if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                            if sub_d549a7f7[address(msg.sender)]:
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                else:
                    if (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(msg.sender)].field_256 != baseRatePerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock):
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) != (sub_d9628038 * sub_d2359f21 / sub_d2359f21) + 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 += (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / 10^12
                                    if 100 * 10^18 < ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
    userInfoMap[address(msg.sender)].field_256 = block.number
    sub_d549a7f7[msg.sender] = 0
    require ext_code.size(sub_f5c4bed8Address)
    call sub_f5c4bed8Address.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, sub_d549a7f7[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x615c59d2: msg.sender, sub_d549a7f7[msg.sender]
}

function sub_904965c9(?) {
    if not sub_d549a7f7[msg.sender]:
        revert with 0, 'no Elixir'
    if block.number <= userInfoMap[address(msg.sender)].field_256:
        if sub_d549a7f7[address(msg.sender)]:
            if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
    else:
        if userInfoMap[address(msg.sender)].field_256 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfoMap[address(msg.sender)].field_0 <= sub_d2359f21:
            if not userInfoMap[address(msg.sender)].field_0:
                if sub_d2359f21 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_d2359f21
                if (0 / sub_d2359f21) + 10^12 < 10^12:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - userInfoMap[address(msg.sender)].field_256:
                    if not sub_d549a7f7[address(msg.sender)]:
                        if sub_d549a7f7[address(msg.sender)]:
                            if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                            if sub_d549a7f7[address(msg.sender)]:
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                else:
                    if (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(msg.sender)].field_256 != baseRatePerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock):
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) != (0 / sub_d2359f21) + 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 += (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12
                                    if 100 * 10^18 < ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
            else:
                if sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / userInfoMap[address(msg.sender)].field_0 != sub_d9628038:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if sub_d2359f21 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_d2359f21
                if (sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) + 10^12 < 10^12:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - userInfoMap[address(msg.sender)].field_256:
                    if not sub_d549a7f7[address(msg.sender)]:
                        if sub_d549a7f7[address(msg.sender)]:
                            if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                            if sub_d549a7f7[address(msg.sender)]:
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                else:
                    if (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(msg.sender)].field_256 != baseRatePerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock):
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) != (sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) + 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 += (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) / 10^12
                                    if 100 * 10^18 < ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(msg.sender)].field_0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
        else:
            if not sub_d2359f21:
                if sub_d2359f21 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_d2359f21
                if (0 / sub_d2359f21) + 10^12 < 10^12:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - userInfoMap[address(msg.sender)].field_256:
                    if not sub_d549a7f7[address(msg.sender)]:
                        if sub_d549a7f7[address(msg.sender)]:
                            if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                            if sub_d549a7f7[address(msg.sender)]:
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                else:
                    if (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(msg.sender)].field_256 != baseRatePerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock):
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) != (0 / sub_d2359f21) + 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 += (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12
                                    if 100 * 10^18 < ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
            else:
                if sub_d9628038 * sub_d2359f21 / sub_d2359f21 != sub_d9628038:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if sub_d2359f21 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_d2359f21
                if (sub_d9628038 * sub_d2359f21 / sub_d2359f21) + 10^12 < 10^12:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - userInfoMap[address(msg.sender)].field_256:
                    if not sub_d549a7f7[address(msg.sender)]:
                        if sub_d549a7f7[address(msg.sender)]:
                            if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                            if sub_d549a7f7[address(msg.sender)]:
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                else:
                    if (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(msg.sender)].field_256 != baseRatePerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock):
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                    else:
                        if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) != (sub_d9628038 * sub_d2359f21 / sub_d2359f21) + 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not sub_d549a7f7[address(msg.sender)]:
                            if sub_d549a7f7[address(msg.sender)]:
                                if stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                        else:
                            if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 > 100 * 10^18:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if 100 * 10^18 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
                            else:
                                if sub_d549a7f7[address(msg.sender)]:
                                    if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256 < stor14[stor15[address(msg.sender)]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    stor14[stor15[address(msg.sender)]].field_256 += (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / 10^12
                                    if 100 * 10^18 < ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(msg.sender)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / 10^12) + stor14[stor15[address(msg.sender)]].field_256:
                                        stor14[stor15[address(msg.sender)]].field_256 = 100 * 10^18
    userInfoMap[address(msg.sender)].field_256 = block.number
    if stor14[stor15[msg.sender]].field_256 != 100 * 10^18:
        revert with 0, 'Elixir not fullfill'
    if 5 <= stor14[stor15[msg.sender]].field_0:
        revert with 0, 'Already Level max'
    if stor14[stor15[msg.sender]].field_0 + 1 < stor14[stor15[msg.sender]].field_0:
        revert with 0, 'SafeMath: addition overflow'
    stor14[stor15[msg.sender]].field_0++
    stor14[stor15[msg.sender]].field_256 = 0
    emit 0x5d378f30: msg.sender, stor14[stor15[msg.sender]].field_0, stor14[stor15[msg.sender]].field_0 + 1
}

function sub_5b833afc(?) {
    require calldata.size - 4 >= 128
    require arg4 == address(arg4)
    if not Mask(255, 1, stor14[arg1].field_1024 and (256 * not stor14[arg1].field_1024) - 1):
        return 0, 0, 1
    if not arg1:
        return 0, 0, 1
    if not arg2:
        return 0, 0, 1
    if not arg3:
        return 0, 0, 1
    if arg2 == arg3:
        return 0, 0, 1
    require ext_code.size(sub_07d7ca2bAddress)
    staticcall sub_07d7ca2bAddress.tokenInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool(ceil32(return_data.size) + 352 <= test266151307())
    require ext_code.size(sub_07d7ca2bAddress)
    staticcall sub_07d7ca2bAddress.tokenInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool((2 * ceil32(return_data.size)) + 608 <= test266151307())
    if stor14[arg1].field_0 < ext_call.return_data[64]:
        return 0, 1, (10 * stor14[arg1].field_0) + ext_call.return_data[0]
    if stor14[arg1].field_0 < ext_call.return_data[64]:
        return 0, 1, (10 * stor14[arg1].field_0) + ext_call.return_data[0]
    if ext_call.return_data[0] != ext_call.return_data[0]:
        return 0, 1, (10 * stor14[arg1].field_0) + ext_call.return_data[0]
    if 4 <= ext_call.return_data[0]:
        return 0, 1, (10 * stor14[arg1].field_0) + ext_call.return_data[0]
    if block.number <= userInfoMap[address(arg4)].field_256:
        if not sub_09cb0ce1:
            if 10 * 10^18 > stor14[arg1].field_256:
                return 0, 2, 10 * 10^18
        else:
            if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
    else:
        if userInfoMap[address(arg4)].field_256 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfoMap[address(arg4)].field_0 <= sub_d2359f21:
            if not userInfoMap[address(arg4)].field_0:
                if sub_d2359f21 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_d2359f21
                if (0 / sub_d2359f21) + 10^12 < 10^12:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - userInfoMap[address(arg4)].field_256:
                    if not sub_d549a7f7[address(arg4)]:
                        if not sub_09cb0ce1:
                            if 10 * 10^18 > stor14[arg1].field_256:
                                return 0, 2, 10 * 10^18
                        else:
                            if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                    else:
                        if stor14[stor15[address(arg4)]].field_256 > 100 * 10^18:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                        else:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                else:
                    if (block.number * baseRatePerBlock) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(arg4)].field_256 != baseRatePerBlock:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.number * baseRatePerBlock) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock):
                        if not sub_d549a7f7[address(arg4)]:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                        else:
                            if stor14[stor15[address(arg4)]].field_256 > 100 * 10^18:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                            else:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256:
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                    else:
                        if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock) != (0 / sub_d2359f21) + 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not sub_d549a7f7[address(arg4)]:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                        else:
                            if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(arg4)]].field_256 > 100 * 10^18:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                            else:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256 + ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12):
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12):
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
            else:
                if sub_d9628038 * userInfoMap[address(arg4)].field_0 / userInfoMap[address(arg4)].field_0 != sub_d9628038:
                    revert with 0, 'SafeMath: multiplication overflow'
                if sub_d2359f21 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_d2359f21
                if (sub_d9628038 * userInfoMap[address(arg4)].field_0 / sub_d2359f21) + 10^12 < 10^12:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - userInfoMap[address(arg4)].field_256:
                    if not sub_d549a7f7[address(arg4)]:
                        if not sub_09cb0ce1:
                            if 10 * 10^18 > stor14[arg1].field_256:
                                return 0, 2, 10 * 10^18
                        else:
                            if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                    else:
                        if stor14[stor15[address(arg4)]].field_256 > 100 * 10^18:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                        else:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                else:
                    if (block.number * baseRatePerBlock) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(arg4)].field_256 != baseRatePerBlock:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.number * baseRatePerBlock) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock):
                        if not sub_d549a7f7[address(arg4)]:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                        else:
                            if stor14[stor15[address(arg4)]].field_256 > 100 * 10^18:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                            else:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256:
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                    else:
                        if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(arg4)].field_0 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(arg4)].field_0 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock) != (sub_d9628038 * userInfoMap[address(arg4)].field_0 / sub_d2359f21) + 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not sub_d549a7f7[address(arg4)]:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                        else:
                            if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(arg4)].field_0 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(arg4)].field_0 / sub_d2359f21) / 10^12) + stor14[stor15[address(arg4)]].field_256 > 100 * 10^18:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                            else:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256 + ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(arg4)].field_0 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(arg4)].field_0 / sub_d2359f21) / 10^12):
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * userInfoMap[address(arg4)].field_0 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * sub_d9628038 * userInfoMap[address(arg4)].field_0 / sub_d2359f21) / 10^12):
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
        else:
            if not sub_d2359f21:
                if sub_d2359f21 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_d2359f21
                if (0 / sub_d2359f21) + 10^12 < 10^12:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - userInfoMap[address(arg4)].field_256:
                    if not sub_d549a7f7[address(arg4)]:
                        if not sub_09cb0ce1:
                            if 10 * 10^18 > stor14[arg1].field_256:
                                return 0, 2, 10 * 10^18
                        else:
                            if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                    else:
                        if stor14[stor15[address(arg4)]].field_256 > 100 * 10^18:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                        else:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                else:
                    if (block.number * baseRatePerBlock) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(arg4)].field_256 != baseRatePerBlock:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.number * baseRatePerBlock) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock):
                        if not sub_d549a7f7[address(arg4)]:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                        else:
                            if stor14[stor15[address(arg4)]].field_256 > 100 * 10^18:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                            else:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256:
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                    else:
                        if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock) != (0 / sub_d2359f21) + 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not sub_d549a7f7[address(arg4)]:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                        else:
                            if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12) + stor14[stor15[address(arg4)]].field_256 > 100 * 10^18:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                            else:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256 + ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12):
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * 0 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * 0 / sub_d2359f21) / 10^12):
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
            else:
                if sub_d9628038 * sub_d2359f21 / sub_d2359f21 != sub_d9628038:
                    revert with 0, 'SafeMath: multiplication overflow'
                if sub_d2359f21 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_d2359f21
                if (sub_d9628038 * sub_d2359f21 / sub_d2359f21) + 10^12 < 10^12:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - userInfoMap[address(arg4)].field_256:
                    if not sub_d549a7f7[address(arg4)]:
                        if not sub_09cb0ce1:
                            if 10 * 10^18 > stor14[arg1].field_256:
                                return 0, 2, 10 * 10^18
                        else:
                            if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                    else:
                        if stor14[stor15[address(arg4)]].field_256 > 100 * 10^18:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                        else:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                else:
                    if (block.number * baseRatePerBlock) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock) / block.number - userInfoMap[address(arg4)].field_256 != baseRatePerBlock:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.number * baseRatePerBlock) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock):
                        if not sub_d549a7f7[address(arg4)]:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                        else:
                            if stor14[stor15[address(arg4)]].field_256 > 100 * 10^18:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                            else:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256:
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                    else:
                        if (10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / (block.number * baseRatePerBlock) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock) != (sub_d9628038 * sub_d2359f21 / sub_d2359f21) + 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not sub_d549a7f7[address(arg4)]:
                            if not sub_09cb0ce1:
                                if 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, 10 * 10^18
                            else:
                                if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256:
                                    return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                        else:
                            if ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / 10^12) + stor14[stor15[address(arg4)]].field_256 > 100 * 10^18:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + -stor14[stor15[address(arg4)]].field_256 + 100 * 10^18:
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
                            else:
                                if not sub_09cb0ce1:
                                    if 10 * 10^18 > stor14[arg1].field_256 + ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / 10^12):
                                        return 0, 2, 10 * 10^18
                                else:
                                    if ext_call.return_data[0] * sub_09cb0ce1 / sub_09cb0ce1 != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18 > stor14[arg1].field_256 + ((10^12 * block.number * baseRatePerBlock) - (10^12 * userInfoMap[address(arg4)].field_256 * baseRatePerBlock) + (block.number * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) - (userInfoMap[address(arg4)].field_256 * baseRatePerBlock * sub_d9628038 * sub_d2359f21 / sub_d2359f21) / 10^12):
                                        return 0, 2, (ext_call.return_data[0] * sub_09cb0ce1) + 10 * 10^18
    if ext_call.return_data[0] == ext_call.return_data[0]:
        return 1, 
               (100 * ext_call.return_data[0]^2) + (200 * ext_call.return_data[32]^2) + (200 * ext_call.return_data[64]^2),
               (100 * ext_call.return_data[0]^2) + (200 * ext_call.return_data[32]^2) + (200 * ext_call.return_data[64]^2)
    return 0, 3, 0
}



}
