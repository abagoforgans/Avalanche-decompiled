contract main {




// =====================  Runtime code  =====================


#
#  - sub_dd0ca652(?)
#
const sub_0eb9b15a(?) = 0

const DEFAULT_ADMIN_ROLE = 0

const OPERATOR_ROLE = 0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929

const VERSION = 2


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
uint32 stor101;
address vaultAddress;
uint256 stor101;
uint256 stor101;
big1504 stor101;
uint32 stor102;
address devAddress;
uint256 stor102;
big1504 stor102;
uint256 devFeePercentage;
address owner;
uint32 stor154;
address assetTokenAddress;
uint256 stor154;
address receiptTokenAddress;
uint32 stor156;
address rewardTokenAddress;
address stakingPoolAddress;
uint256 lastUpdateBlock;
uint256 sub_78922c8f;
address sub_69acf133Address;
array of struct sub_f830a87f;

function stakingPool() payable {
    return stakingPoolAddress
}

function assetToken() payable {
    return address(assetTokenAddress)
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function devAddress() payable {
    return address(devAddress)
}

function sub_69acf133(?) payable {
    return sub_69acf133Address
}

function sub_78922c8f(?) payable {
    return sub_78922c8f
}

function owner() payable {
    return owner
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function lastUpdateBlock() payable {
    return lastUpdateBlock
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function devFeePercentage() payable {
    return devFeePercentage
}

function receiptToken() payable {
    return receiptTokenAddress
}

function rewardToken() payable {
    return address(rewardTokenAddress)
}

function sub_f830a87f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f830a87f.length
    return sub_f830a87f[arg1].field_0
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    address(vaultAddress) = arg1
}

function update(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    call this.address.0xeebaa8e7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Admin'
    if not arg1:
        revert with 0, 'DevAddress not enabled'
    address(devAddress) = arg1
    emit 0x34830ecd: arg1
}

function sub_2d8ae428(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    sub_69acf133Address = arg1
    emit 0x4362da2e: this.address, sub_69acf133Address, arg1
}

function setStakingPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    stakingPoolAddress = arg1
    emit 0x6c2b9fa8: this.address, stakingPoolAddress, arg1
}

function getBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                45,
                0x64457874656e646564426173655374726174656779202d2067657442616c616e6365206973206f62736f6c6574,
                mem[209 len 19]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setWithdrawalFeePercentage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6450657263656e746167652063616e6e6f7420626520686967686572207468616e203130,
                    mem[200 len 28]
    sub_78922c8f = arg1
    emit 0x56f3b075: sub_78922c8f, arg1, this.address
}

function setDevFeePercentage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    if not address(devAddress):
        revert with 0, 'DevAddress not enabled'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6450657263656e746167652063616e6e6f7420626520686967686572207468616e203130,
                    mem[200 len 28]
    devFeePercentage = arg1
    emit 0xabb7f03f: arg1
}

function sub_a270475c(?) payable {
    require calldata.size - 4 >= 64
    if address(vaultAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64556e617574686f72697a65643a204d6573736167652073656e646572206973206e6f74205661756c,
                    mem[205 len 23]
    require ext_code.size(this.address)
    call this.address.0xdd0ca652 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function getPoolAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(assetTokenAddress) != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64457874656e6465644261736553747261746567792e676574506f6f6c416d6f756e743a2077726f6e6720746f6b65,
                    mem[211 len 17]
    require ext_code.size(stakingPoolAddress)
    staticcall stakingPoolAddress.0xc754d352 with:
            gas gas_remaining wei
           args 0, uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ae3a9631(?) payable {
    require calldata.size - 4 >= 96
    if address(vaultAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64556e617574686f72697a65643a204d6573736167652073656e646572206973206e6f74205661756c,
                    mem[205 len 23]
    if address(assetTokenAddress) != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x64457874656e6465644261736553747261746567792e6f6e4c69717569646174653a2077726f6e6720746f6b65,
                    mem[209 len 19]
    require ext_code.size(this.address)
    call this.address.0x98bce5cd with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onDeposit(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if address(vaultAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64556e617574686f72697a65643a204d6573736167652073656e646572206973206e6f74205661756c,
                    mem[205 len 23]
    if address(assetTokenAddress) != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x66457874656e6465644261736553747261746567792e6f6e4465706f7369743a2077726f6e6720746f6b65,
                    mem[207 len 21]
    require ext_code.size(this.address)
    call this.address.0x59e8dc97 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onWithdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if address(vaultAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64556e617574686f72697a65643a204d6573736167652073656e646572206973206e6f74205661756c,
                    mem[205 len 23]
    if address(assetTokenAddress) != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6e457874656e6465644261736553747261746567792e6f6e57697468647261773a2077726f6e6720746f6b65,
                    mem[208 len 20]
    require ext_code.size(this.address)
    call this.address.0xcd2c65aa with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
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

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6c416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
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

function sub_98bce5cd(?) payable {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x64556e617574686f72697a65643a206d73672e73656e646572206973206e6f742073656c,
                    mem[200 len 28]
    mem[324 len 192] = unknown_0x3774f85c(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, arg2, Mask(224, 0, stor101)
    mem[544 len 4] = uint32(stor101)
    delegate stakingPoolAddress with:
       funct uint32(arg2)
         gas gas_remaining wei
        args Mask(1504, 0, stor101), mem[516 len 4]
    if not return_data.size:
        if not delegate.return_code:
            revert with 0, 
                        32,
                        43,
                        0x30457874656e6465644261736553747261746567792e68616e646c654c6971756964617465206661696c65,
                        Mask(168, 0, stor101)
    else:
        if not delegate.return_code:
            revert with 0, 
                        32,
                        43,
                        0x30457874656e6465644261736553747261746567792e68616e646c654c6971756964617465206661696c65,
                        mem[ceil32(return_data.size) + 436 len 21]
    ('bool', 'delegate.return_code')
    emit 0xb5307444: arg2, this.address, address(assetTokenAddress), arg1
}

function handleDeposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x64556e617574686f72697a65643a206d73672e73656e646572206973206e6f742073656c,
                    mem[200 len 28]
    require ext_code.size(address(assetTokenAddress))
    staticcall address(assetTokenAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[292 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
        mem[480 len 4] = ext_call.return_data[20 len 4]
        delegate stakingPoolAddress with:
           funct uint32(this.address)
             gas gas_remaining wei
            args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[452 len 4]
        if not return_data.size:
            if not delegate.return_code:
                revert with 0, 
                            32,
                            41,
                            0x6e457874656e6465644261736553747261746567792e68616e646c654465706f736974206661696c65,
                            Mask(184, -800, ext_call.return_data[0 len 28]) << 800
        else:
            if not delegate.return_code:
                revert with 0, 
                            32,
                            41,
                            0x6e457874656e6465644261736553747261746567792e68616e646c654465706f736974206661696c65,
                            mem[ceil32(return_data.size) + 402 len 23]
        ('bool', 'delegate.return_code')
        emit 0xb0a30c7c: ext_call.return_data[0], arg2, this.address, address(assetTokenAddress), arg1
}

function sweep(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    if address(assetTokenAddress) == arg1:
        revert with 0, 'Cannot sweep registered token'
    if receiptTokenAddress == arg1:
        revert with 0, 'Cannot sweep registered token'
    if address(rewardTokenAddress) == arg1:
        revert with 0, 'Cannot sweep registered token'
    if not arg1:
        revert with 0, 'Cannot sweep registered token'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor102), uint32(stor102), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor102)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor102), uint32(stor102), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor102):
            revert with 0, 32, 42, 0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_5d885e18(?) payable {
    require calldata.size - 4 >= 192
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
    address(vaultAddress) = arg1
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = msg.sender
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(msg.sender)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][1][address(msg.sender)].field_0:
        roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field_0++
        roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field_0].field_0 = msg.sender
        roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field_0].field_160 = 0
        roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][1][address(msg.sender)].field_0 = roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field_0
        emit RoleGranted(0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929, msg.sender, msg.sender);
    address(devAddress) = arg2
    devFeePercentage = 0
    if uint8(stor0.field_8):
        address(assetTokenAddress) = arg3
        receiptTokenAddress = arg4
        address(rewardTokenAddress) = arg5
        stakingPoolAddress = arg6
        sub_78922c8f = 0
    else:
        uint8(stor0.field_8) = 0
        address(assetTokenAddress) = arg3
        receiptTokenAddress = arg4
        address(rewardTokenAddress) = arg5
        stakingPoolAddress = arg6
        sub_78922c8f = 0
        uint8(stor0.field_8) = 0
}

function sub_b0b9ecf3(?) payable {
    require calldata.size - 4 >= 224
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if not uint8(stor0.field_8):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
    address(vaultAddress) = arg1
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = msg.sender
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(msg.sender)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][1][address(msg.sender)].field_0:
        roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field_0++
        roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field_0].field_0 = msg.sender
        roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field_0].field_160 = 0
        roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][1][address(msg.sender)].field_0 = roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field_0
        emit RoleGranted(0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929, msg.sender, msg.sender);
    address(devAddress) = arg2
    devFeePercentage = 0
    if uint8(stor0.field_8):
        address(assetTokenAddress) = arg3
        receiptTokenAddress = arg4
        address(rewardTokenAddress) = arg5
        stakingPoolAddress = arg6
        sub_78922c8f = 0
        sub_69acf133Address = arg7
    else:
        uint8(stor0.field_8) = 0
        address(assetTokenAddress) = arg3
        receiptTokenAddress = arg4
        address(rewardTokenAddress) = arg5
        stakingPoolAddress = arg6
        sub_78922c8f = 0
        uint8(stor0.field_8) = 0
        sub_69acf133Address = arg7
        uint8(stor0.field_8) = 0
}

function sub_cd2c65aa(?) payable {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x64556e617574686f72697a65643a206d73672e73656e646572206973206e6f742073656c,
                    mem[200 len 28]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7768616e646c655769746864726177205f616d6f756e742063616e6e6f7420626520,
                    mem[198 len 30]
    if not arg2:
        if 0 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[324 len 192] = unknown_0x3774f85c(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), address(this.address), arg2, address(arg1) << 64
        mem[544 len 4] = 0
        delegate stakingPoolAddress with:
           funct uint32(arg2)
             gas gas_remaining wei
            args Mask(1504, -1280, unknown_0x3774f85c(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), address(this.address), arg2, address(arg1) << 64) << 1280, mem[516 len 4]
        if not return_data.size:
            if not delegate.return_code:
                revert with 0, 'sExtendedBaseStrategy.handleWithdraw faile'
        else:
            if not delegate.return_code:
                revert with 0, 
                            32,
                            42,
                            0x73457874656e6465644261736553747261746567792e68616e646c655769746864726177206661696c65,
                            mem[ceil32(return_data.size) + 435 len 22]
        ('bool', 'delegate.return_code')
        if 0 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        emit 0x3f78742f: arg2, 0, this.address, address(assetTokenAddress), arg1
    else:
        if sub_78922c8f * arg2 / arg2 != sub_78922c8f:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_78922c8f * arg2 / 100 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[324 len 192] = unknown_0x3774f85c(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), address(this.address), arg2 - (sub_78922c8f * arg2 / 100), address(arg1) << 64
        mem[544 len 4] = 0
        delegate stakingPoolAddress with:
           funct uint32(arg2 - (sub_78922c8f * arg2 / 100))
             gas gas_remaining wei
            args address(arg1) << 1344, mem[516 len 4]
        if not return_data.size:
            if not delegate.return_code:
                revert with 0, 'sExtendedBaseStrategy.handleWithdraw failededBaseStrategy.handle'
            if sub_78922c8f * arg2 / 100:
                mem[552 len 192] = unknown_0x3774f85c(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, sub_78922c8f * arg2 / 100, Mask(224, 0, stor102)
                mem[772 len 4] = uint32(stor102)
                delegate stakingPoolAddress with:
                   funct uint32(sub_78922c8f * arg2 / 100)
                     gas gas_remaining wei
                    args Mask(1504, 0, stor102), mem[744 len 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with 0, 'nExtendedBaseStrategy.handleWithdraw fee faileaseStrategy.handle'
                else:
                    if not delegate.return_code:
                        revert with 0, 
                                    32,
                                    46,
                                    0x6e457874656e6465644261736553747261746567792e68616e646c65576974686472617720666565206661696c65,
                                    mem[ceil32(return_data.size) + 667 len 18]
                ('bool', 'delegate.return_code')
            if sub_78922c8f * arg2 / 100 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x3f78742f: arg2 - (sub_78922c8f * arg2 / 100), sub_78922c8f * arg2 / 100, this.address, address(assetTokenAddress), arg1
        else:
            if not delegate.return_code:
                revert with 0, 
                            32,
                            42,
                            0x73457874656e6465644261736553747261746567792e68616e646c655769746864726177206661696c65,
                            mem[ceil32(return_data.size) + 435 len 22]
            if not sub_78922c8f * arg2 / 100:
                if sub_78922c8f * arg2 / 100 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit 0x3f78742f: arg2 - (sub_78922c8f * arg2 / 100), sub_78922c8f * arg2 / 100, this.address, address(assetTokenAddress), arg1
            else:
                mem[ceil32(return_data.size) + 553 len 192] = unknown_0x3774f85c(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, sub_78922c8f * arg2 / 100, Mask(224, 0, stor102)
                mem[ceil32(return_data.size) + 773 len 4] = uint32(stor102)
                delegate stakingPoolAddress with:
                   funct uint32(sub_78922c8f * arg2 / 100)
                     gas gas_remaining wei
                    args Mask(1504, 0, stor102), mem[ceil32(return_data.size) + 745 len 4]
                if not return_data.size:
                    if not delegate.return_code:
                        revert with 0, 'nExtendedBaseStrategy.handleWithdraw fee faileaseStrategy.handle'
                    if sub_78922c8f * arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit 0x3f78742f: arg2 - (sub_78922c8f * arg2 / 100), sub_78922c8f * arg2 / 100, this.address, address(assetTokenAddress), arg1
                else:
                    if not delegate.return_code:
                        revert with 0, 
                                    32,
                                    46,
                                    0x6e457874656e6465644261736553747261746567792e68616e646c65576974686472617720666565206661696c65,
                                    mem[(2 * ceil32(return_data.size)) + 668 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 18]
                    if sub_78922c8f * arg2 / 100 > arg2:
                        revert with 0, 
                                    'SafeMath: subtraction overflow',
                                    mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    emit 0x3f78742f: arg2 - (sub_78922c8f * arg2 / 100), sub_78922c8f * arg2 / 100, mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], this.address, address(assetTokenAddress), arg1
}

function sub_2fdcb39d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not roleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929][1][address(msg.sender)].field_0:
        revert with 0, 'Not an Operator'
    if not arg1.length:
        mem[(32 * arg1.length) + 128] = sub_f830a87f.length
        if not sub_f830a87f.length:
            sub_f830a87f.length = arg1.length
            if not arg1.length:
                idx = 0
                while sub_f830a87f.length > idx:
                    sub_f830a87f[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    sub_f830a87f[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                while sub_f830a87f.length > idx:
                    sub_f830a87f[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 160] = 64
            mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 224] = sub_f830a87f.length
            mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 256 len floor32(sub_f830a87f.length)] = mem[(32 * arg1.length) + 160 len floor32(sub_f830a87f.length)]
            mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 192] = (32 * sub_f830a87f.length) + 96
            mem[(64 * sub_f830a87f.length) + (32 * arg1.length) + 256] = sub_f830a87f.length
            if not sub_f830a87f.length:
                emit 0x3ff93d98: Array(len=sub_f830a87f.length, data=mem[(32 * arg1.length) + 160 len floor32(sub_f830a87f.length)], mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + floor32(sub_f830a87f.length) + 256 len (32 * sub_f830a87f.length) + -floor32(sub_f830a87f.length) + 32]), (32 * sub_f830a87f.length) + 96, this.address
            else:
                mem[(64 * sub_f830a87f.length) + (32 * arg1.length) + 288] = address(sub_f830a87f.field_0)
                idx = (64 * sub_f830a87f.length) + (32 * arg1.length) + 288
                s = 0
                while (3 * 32 * sub_f830a87f.length) + (32 * arg1.length) + 288 > idx + 32:
                    mem[idx + 32] = sub_f830a87f[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x3ff93d98: mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 160 len (64 * sub_f830a87f.length) + 128], this.address
        else:
            mem[(32 * arg1.length) + 160] = address(sub_f830a87f.field_0)
            idx = (32 * arg1.length) + 160
            s = 0
            while (32 * arg1.length) + (32 * sub_f830a87f.length) + 128 > idx:
                mem[idx + 32] = sub_f830a87f[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            sub_f830a87f.length = arg1.length
            if not arg1.length:
                idx = 0
                while sub_f830a87f.length > idx:
                    sub_f830a87f[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 160] = 64
                mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 224] = sub_f830a87f.length
                mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 256 len floor32(sub_f830a87f.length)] = mem[(32 * arg1.length) + 160 len floor32(sub_f830a87f.length)]
            else:
                s = 0
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    sub_f830a87f[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                while sub_f830a87f.length > idx:
                    sub_f830a87f[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 160] = 64
                mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 224] = sub_f830a87f.length
                mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 256 len floor32(sub_f830a87f.length)] = mem[(32 * arg1.length) + 160 len floor32(sub_f830a87f.length)]
                var36001 = floor32(sub_f830a87f.length)
            mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 192] = (32 * sub_f830a87f.length) + 96
            mem[(64 * sub_f830a87f.length) + (32 * arg1.length) + 256] = sub_f830a87f.length
            if not sub_f830a87f.length:
                emit 0x3ff93d98: Array(len=sub_f830a87f.length, data=mem[(32 * arg1.length) + 160 len floor32(sub_f830a87f.length)], mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + floor32(sub_f830a87f.length) + 256 len (32 * sub_f830a87f.length) + -floor32(sub_f830a87f.length) + 32]), (32 * sub_f830a87f.length) + 96, this.address
            else:
                mem[(64 * sub_f830a87f.length) + (32 * arg1.length) + 288] = address(sub_f830a87f.field_0)
                idx = (64 * sub_f830a87f.length) + (32 * arg1.length) + 288
                s = 0
                while (98 * sub_f830a87f.length) + (32 * arg1.length) + 288 > idx + 32:
                    mem[idx + 32] = sub_f830a87f[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x3ff93d98: mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 160 len (129 * sub_f830a87f.length) + 128], this.address
    else:
        if arg1.length < 2:
            revert with 0, 
                        32,
                        37,
                        0x6650617468206d75737420636f6e7461696e2032206f72206d6f7265206164647265737365,
                        mem[(32 * arg1.length) + 233 len 27]
        require arg1.length
        if mem[140 len 20] != address(rewardTokenAddress):
            revert with 0, 32, 33, 0x6446697273742061646472657373206d75737420626520726577617264546f6b65, mem[(32 * arg1.length) + 229 len 31]
        require arg1.length - 1 < arg1.length
        if mem[(32 * arg1.length - 1) + 140 len 20] != address(assetTokenAddress):
            revert with 0, 'Last address must be assetToken'
        require arg1.length - 1 < arg1.length
        require 0 < arg1.length
        if mem[140 len 20] == mem[(32 * arg1.length - 1) + 140 len 20]:
            revert with 0, 32, 34, 0x6e466972737420616e64206c6173742061646472657373206d757374206469666665, mem[(32 * arg1.length) + 230 len 30]
        mem[(32 * arg1.length) + 128] = sub_f830a87f.length
        if not sub_f830a87f.length:
            sub_f830a87f.length = arg1.length
            if not arg1.length:
                idx = 0
                while sub_f830a87f.length > idx:
                    sub_f830a87f[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    sub_f830a87f[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                while sub_f830a87f.length > idx:
                    sub_f830a87f[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 160] = 64
            mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 224] = sub_f830a87f.length
            mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 256 len floor32(sub_f830a87f.length)] = mem[(32 * arg1.length) + 160 len floor32(sub_f830a87f.length)]
            mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 192] = (32 * sub_f830a87f.length) + 96
            mem[(64 * sub_f830a87f.length) + (32 * arg1.length) + 256] = sub_f830a87f.length
            if not sub_f830a87f.length:
                emit 0x3ff93d98: Array(len=sub_f830a87f.length, data=mem[(32 * arg1.length) + 160 len floor32(sub_f830a87f.length)], mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + floor32(sub_f830a87f.length) + 256 len (32 * sub_f830a87f.length) + -floor32(sub_f830a87f.length) + 32]), (32 * sub_f830a87f.length) + 96, this.address
            else:
                mem[(64 * sub_f830a87f.length) + (32 * arg1.length) + 288] = address(sub_f830a87f.field_0)
                idx = (64 * sub_f830a87f.length) + (32 * arg1.length) + 288
                s = 0
                while (3 * 32 * sub_f830a87f.length) + (32 * arg1.length) + 288 > idx + 32:
                    mem[idx + 32] = sub_f830a87f[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x3ff93d98: mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 160 len (64 * sub_f830a87f.length) + 128], this.address
        else:
            mem[(32 * arg1.length) + 160] = address(sub_f830a87f.field_0)
            idx = (32 * arg1.length) + 160
            s = 0
            while (32 * arg1.length) + (32 * sub_f830a87f.length) + 128 > idx:
                mem[idx + 32] = sub_f830a87f[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            sub_f830a87f.length = arg1.length
            if not arg1.length:
                idx = 0
                while sub_f830a87f.length > idx:
                    sub_f830a87f[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 160] = 64
                mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 224] = sub_f830a87f.length
                mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 256 len floor32(sub_f830a87f.length)] = mem[(32 * arg1.length) + 160 len floor32(sub_f830a87f.length)]
            else:
                s = 0
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    sub_f830a87f[s].field_0 = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                while sub_f830a87f.length > idx:
                    sub_f830a87f[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 160] = 64
                mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 224] = sub_f830a87f.length
                mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 256 len floor32(sub_f830a87f.length)] = mem[(32 * arg1.length) + 160 len floor32(sub_f830a87f.length)]
                var43001 = floor32(sub_f830a87f.length)
            mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 192] = (32 * sub_f830a87f.length) + 96
            mem[(64 * sub_f830a87f.length) + (32 * arg1.length) + 256] = sub_f830a87f.length
            if not sub_f830a87f.length:
                emit 0x3ff93d98: Array(len=sub_f830a87f.length, data=mem[(32 * arg1.length) + 160 len floor32(sub_f830a87f.length)], mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + floor32(sub_f830a87f.length) + 256 len (32 * sub_f830a87f.length) + -floor32(sub_f830a87f.length) + 32]), (32 * sub_f830a87f.length) + 96, this.address
            else:
                mem[(64 * sub_f830a87f.length) + (32 * arg1.length) + 288] = address(sub_f830a87f.field_0)
                idx = (64 * sub_f830a87f.length) + (32 * arg1.length) + 288
                s = 0
                while (98 * sub_f830a87f.length) + (32 * arg1.length) + 288 > idx + 32:
                    mem[idx + 32] = sub_f830a87f[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x3ff93d98: mem[(32 * arg1.length) + (32 * sub_f830a87f.length) + 160 len (129 * sub_f830a87f.length) + 128], this.address
}

function work(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(rewardTokenAddress):
        require ext_code.size(address(rewardTokenAddress))
        staticcall address(rewardTokenAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not devFeePercentage:
                if address(assetTokenAddress) == address(rewardTokenAddress):
                    require ext_code.size(address(assetTokenAddress))
                    staticcall address(assetTokenAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[292 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                    mem[480 len 4] = ext_call.return_data[20 len 4]
                    delegate stakingPoolAddress with:
                       funct uint32(this.address)
                         gas gas_remaining wei
                        args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[452 len 4]
                    if not return_data.size:
                        if not delegate.return_code:
                            revert with 0, 
                                        32,
                                        39,
                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                        Mask(200, -800, ext_call.return_data[0 len 28]) << 800
                    else:
                        if not delegate.return_code:
                            revert with 0, 
                                        32,
                                        39,
                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                        mem[ceil32(return_data.size) + 400 len 25]
                else:
                    require ext_code.size(address(rewardTokenAddress))
                    call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args sub_69acf133Address, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    48,
                                    0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                    mem[212 len 16]
                    if not sub_f830a87f.length:
                        require ext_code.size(sub_69acf133Address)
                        call sub_69acf133Address.0xbc697eb8 with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 128, this.address, sub_f830a87f.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(assetTokenAddress))
                        staticcall address(assetTokenAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                        mem[480 len 4] = ext_call.return_data[20 len 4]
                        delegate stakingPoolAddress with:
                           funct uint32(this.address)
                             gas gas_remaining wei
                            args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[452 len 4]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                        else:
                            if not delegate.return_code:
                                revert with 0, 
                                            32,
                                            39,
                                            0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                            mem[ceil32(return_data.size) + 400 len 25]
                    else:
                        mem[260] = address(sub_f830a87f.field_0)
                        idx = 260
                        s = 0
                        while (32 * sub_f830a87f.length) + 260 > idx + 32:
                            mem[idx + 32] = sub_f830a87f[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(sub_69acf133Address)
                        call sub_69acf133Address.0xbc697eb8 with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[28 len 4], 0, 128, this.address, sub_f830a87f.length, mem[260 len 32 * sub_f830a87f.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(assetTokenAddress))
                        staticcall address(assetTokenAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                        mem[480 len 4] = ext_call.return_data[20 len 4]
                        delegate stakingPoolAddress with:
                           funct uint32(this.address)
                             gas gas_remaining wei
                            args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[452 len 4]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with 0, 
                                            32,
                                            39,
                                            0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                            Mask(200, -800, ext_call.return_data[0 len 28]) << 800
                        else:
                            if not delegate.return_code:
                                revert with 0, 
                                            32,
                                            39,
                                            0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                            mem[ceil32(return_data.size) + 400 len 25]
            else:
                if not ext_call.return_data[0]:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(address(rewardTokenAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor102), uint32(stor102), 0
                    call address(rewardTokenAddress) with:
                       funct uint32(stor102)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor102), uint32(stor102), 0
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor102):
                            revert with 0, 32, 42, 0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if address(assetTokenAddress) == address(rewardTokenAddress):
                            require ext_code.size(address(assetTokenAddress))
                            staticcall address(assetTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[456 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                            mem[644 len 4] = ext_call.return_data[20 len 4]
                            delegate stakingPoolAddress with:
                               funct uint32(this.address)
                                 gas gas_remaining wei
                                args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[616 len 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                            else:
                                if not delegate.return_code:
                                    revert with 0, 
                                                32,
                                                39,
                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                mem[ceil32(return_data.size) + 564 len 25]
                        else:
                            require ext_code.size(address(rewardTokenAddress))
                            call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_69acf133Address, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            48,
                                            0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                            mem[376 len 16]
                            if not sub_f830a87f.length:
                                require ext_code.size(sub_69acf133Address)
                                call sub_69acf133Address.0xbc697eb8 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length
                            else:
                                mem[424] = address(sub_f830a87f.field_0)
                                idx = 424
                                s = 0
                                while (32 * sub_f830a87f.length) + 424 > idx + 32:
                                    mem[idx + 32] = sub_f830a87f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sub_69acf133Address)
                                call sub_69acf133Address.0xbc697eb8 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length, mem[424 len 32 * sub_f830a87f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(assetTokenAddress))
                            staticcall address(assetTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[456 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                            mem[644 len 4] = ext_call.return_data[20 len 4]
                            delegate stakingPoolAddress with:
                               funct uint32(this.address)
                                 gas gas_remaining wei
                                args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[616 len 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with 0, 
                                                32,
                                                39,
                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                Mask(200, -800, ext_call.return_data[0 len 28]) << 800
                            else:
                                if not delegate.return_code:
                                    revert with 0, 
                                                32,
                                                39,
                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                mem[ceil32(return_data.size) + 564 len 25]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if address(assetTokenAddress) == address(rewardTokenAddress):
                                require ext_code.size(address(assetTokenAddress))
                                staticcall address(assetTokenAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 457 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 645 len 4] = ext_call.return_data[20 len 4]
                                delegate stakingPoolAddress with:
                                   funct uint32(this.address)
                                     gas gas_remaining wei
                                    args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[ceil32(return_data.size) + 617 len 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                    Mask(200, -800, ext_call.return_data[0 len 28]) << 800
                                else:
                                    if not delegate.return_code:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                    mem[(2 * ceil32(return_data.size)) + 565 len 25]
                            else:
                                require ext_code.size(address(rewardTokenAddress))
                                call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_69acf133Address, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                48,
                                                0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                                mem[ceil32(return_data.size) + 377 len 16]
                                if not sub_f830a87f.length:
                                    require ext_code.size(sub_69acf133Address)
                                    call sub_69acf133Address.0xbc697eb8 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length
                                else:
                                    mem[ceil32(return_data.size) + 425] = address(sub_f830a87f.field_0)
                                    idx = ceil32(return_data.size) + 425
                                    s = 0
                                    while ceil32(return_data.size) + (32 * sub_f830a87f.length) + 425 > idx + 32:
                                        mem[idx + 32] = sub_f830a87f[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_69acf133Address)
                                    call sub_69acf133Address.0xbc697eb8 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length, mem[ceil32(return_data.size) + 425 len 32 * sub_f830a87f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(address(assetTokenAddress))
                                staticcall address(assetTokenAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 457 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 645 len 4] = ext_call.return_data[20 len 4]
                                delegate stakingPoolAddress with:
                                   funct uint32(this.address)
                                     gas gas_remaining wei
                                    args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[ceil32(return_data.size) + 617 len 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                else:
                                    if not delegate.return_code:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                    mem[(2 * ceil32(return_data.size)) + 565 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if address(assetTokenAddress) == address(rewardTokenAddress):
                                require ext_code.size(address(assetTokenAddress))
                                staticcall address(assetTokenAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 457 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 645 len 4] = ext_call.return_data[20 len 4]
                                delegate stakingPoolAddress with:
                                   funct uint32(this.address)
                                     gas gas_remaining wei
                                    args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[ceil32(return_data.size) + 617 len 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                else:
                                    if not delegate.return_code:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                    mem[(2 * ceil32(return_data.size)) + 565 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25]
                            else:
                                require ext_code.size(address(rewardTokenAddress))
                                call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_69acf133Address, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                48,
                                                0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                                mem[ceil32(return_data.size) + 377 len 16]
                                if not sub_f830a87f.length:
                                    require ext_code.size(sub_69acf133Address)
                                    call sub_69acf133Address.0xbc697eb8 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(assetTokenAddress))
                                    staticcall address(assetTokenAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(return_data.size) + 457 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                    mem[ceil32(return_data.size) + 645 len 4] = ext_call.return_data[20 len 4]
                                    delegate stakingPoolAddress with:
                                       funct uint32(this.address)
                                         gas gas_remaining wei
                                        args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[ceil32(return_data.size) + 617 len 4]
                                    if not return_data.size:
                                        if not delegate.return_code:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                        Mask(200, -800, ext_call.return_data[0 len 28]) << 800
                                    else:
                                        if not delegate.return_code:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                        mem[(2 * ceil32(return_data.size)) + 565 len 25]
                                else:
                                    mem[ceil32(return_data.size) + 425] = address(sub_f830a87f.field_0)
                                    idx = ceil32(return_data.size) + 425
                                    s = 0
                                    while ceil32(return_data.size) + (32 * sub_f830a87f.length) + 425 > idx + 32:
                                        mem[idx + 32] = sub_f830a87f[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_69acf133Address)
                                    call sub_69acf133Address.0xbc697eb8 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length, mem[ceil32(return_data.size) + 425 len 32 * sub_f830a87f.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(assetTokenAddress))
                                    staticcall address(assetTokenAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(return_data.size) + 457 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                    mem[ceil32(return_data.size) + 645 len 4] = ext_call.return_data[20 len 4]
                                    delegate stakingPoolAddress with:
                                       funct uint32(this.address)
                                         gas gas_remaining wei
                                        args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[ceil32(return_data.size) + 617 len 4]
                                    if not return_data.size:
                                        if not delegate.return_code:
                                            revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                    else:
                                        if not delegate.return_code:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                        mem[(2 * ceil32(return_data.size)) + 565 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25]
                else:
                    if devFeePercentage * ext_call.return_data[0] / ext_call.return_data[0] != devFeePercentage:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(address(rewardTokenAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor102), uint32(stor102), Mask(224, 32, devFeePercentage * ext_call.return_data[0] / 100) >> 32
                    call address(rewardTokenAddress) with:
                       funct uint32(stor102)
                         gas gas_remaining wei
                        args Mask(224, 32, devFeePercentage * ext_call.return_data[0] / 100) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor102), uint32(stor102), devFeePercentage * ext_call.return_data[0] / 100
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor102):
                            revert with 0, 32, 42, 0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if devFeePercentage * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if address(assetTokenAddress) != address(rewardTokenAddress):
                            require ext_code.size(address(rewardTokenAddress))
                            call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args sub_69acf133Address, ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            48,
                                            0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                            mem[376 len 16]
                            if not sub_f830a87f.length:
                                require ext_code.size(sub_69acf133Address)
                                call sub_69acf133Address.0xbc697eb8 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length
                            else:
                                mem[424] = address(sub_f830a87f.field_0)
                                idx = 424
                                s = 0
                                while (32 * sub_f830a87f.length) + 424 > idx + 32:
                                    mem[idx + 32] = sub_f830a87f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(sub_69acf133Address)
                                call sub_69acf133Address.0xbc697eb8 with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length, mem[424 len 32 * sub_f830a87f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(assetTokenAddress))
                        staticcall address(assetTokenAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[456 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                        mem[644 len 4] = ext_call.return_data[20 len 4]
                        delegate stakingPoolAddress with:
                           funct uint32(this.address)
                             gas gas_remaining wei
                            args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[616 len 4]
                        if not return_data.size:
                            if not delegate.return_code:
                                revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                        else:
                            if not delegate.return_code:
                                revert with 0, 
                                            32,
                                            39,
                                            0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                            mem[ceil32(return_data.size) + 564 len 25]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            if devFeePercentage * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if address(assetTokenAddress) == address(rewardTokenAddress):
                                require ext_code.size(address(assetTokenAddress))
                                staticcall address(assetTokenAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 457 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 645 len 4] = ext_call.return_data[20 len 4]
                                delegate stakingPoolAddress with:
                                   funct uint32(this.address)
                                     gas gas_remaining wei
                                    args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[ceil32(return_data.size) + 617 len 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                else:
                                    if not delegate.return_code:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                    mem[(2 * ceil32(return_data.size)) + 565 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25]
                            else:
                                require ext_code.size(address(rewardTokenAddress))
                                call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_69acf133Address, ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                48,
                                                0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                                mem[ceil32(return_data.size) + 377 len 16]
                                if not sub_f830a87f.length:
                                    require ext_code.size(sub_69acf133Address)
                                    call sub_69acf133Address.0xbc697eb8 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(assetTokenAddress))
                                    staticcall address(assetTokenAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(return_data.size) + 457 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                    mem[ceil32(return_data.size) + 645 len 4] = ext_call.return_data[20 len 4]
                                    delegate stakingPoolAddress with:
                                       funct uint32(this.address)
                                         gas gas_remaining wei
                                        args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[ceil32(return_data.size) + 617 len 4]
                                    if not return_data.size:
                                        if not delegate.return_code:
                                            revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                    else:
                                        if not delegate.return_code:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                        mem[(2 * ceil32(return_data.size)) + 565 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25]
                                else:
                                    mem[ceil32(return_data.size) + 425] = address(sub_f830a87f.field_0)
                                    idx = ceil32(return_data.size) + 425
                                    s = 0
                                    while ceil32(return_data.size) + (32 * sub_f830a87f.length) + 425 > idx + 32:
                                        mem[idx + 32] = sub_f830a87f[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_69acf133Address)
                                    call sub_69acf133Address.0xbc697eb8 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length, mem[ceil32(return_data.size) + 425 len 32 * sub_f830a87f.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(assetTokenAddress))
                                    staticcall address(assetTokenAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(return_data.size) + 457 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                    mem[ceil32(return_data.size) + 645 len 4] = ext_call.return_data[20 len 4]
                                    delegate stakingPoolAddress with:
                                       funct uint32(this.address)
                                         gas gas_remaining wei
                                        args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[ceil32(return_data.size) + 617 len 4]
                                    if not return_data.size:
                                        if not delegate.return_code:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                        Mask(200, -800, ext_call.return_data[0 len 28]) << 800
                                    else:
                                        if not delegate.return_code:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                        mem[(2 * ceil32(return_data.size)) + 565 len 25]
                        else:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                            if devFeePercentage * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if address(assetTokenAddress) != address(rewardTokenAddress):
                                require ext_code.size(address(rewardTokenAddress))
                                call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_69acf133Address, ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                48,
                                                0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                                mem[ceil32(return_data.size) + 377 len 16]
                                if not sub_f830a87f.length:
                                    require ext_code.size(sub_69acf133Address)
                                    call sub_69acf133Address.0xbc697eb8 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length
                                else:
                                    mem[ceil32(return_data.size) + 425] = address(sub_f830a87f.field_0)
                                    idx = ceil32(return_data.size) + 425
                                    s = 0
                                    while ceil32(return_data.size) + (32 * sub_f830a87f.length) + 425 > idx + 32:
                                        mem[idx + 32] = sub_f830a87f[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_69acf133Address)
                                    call sub_69acf133Address.0xbc697eb8 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length, mem[ceil32(return_data.size) + 425 len 32 * sub_f830a87f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(assetTokenAddress))
                            staticcall address(assetTokenAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 457 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                            mem[ceil32(return_data.size) + 645 len 4] = ext_call.return_data[20 len 4]
                            delegate stakingPoolAddress with:
                               funct uint32(this.address)
                                 gas gas_remaining wei
                                args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[ceil32(return_data.size) + 617 len 4]
                            if not return_data.size:
                                if not delegate.return_code:
                                    revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                            else:
                                if not delegate.return_code:
                                    revert with 0, 
                                                32,
                                                39,
                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                mem[(2 * ceil32(return_data.size)) + 565 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25]
            ('bool', 'delegate.return_code')
}

function sub_eebaa8e7(?) payable {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x64556e617574686f72697a65643a206d73672e73656e646572206973206e6f742073656c,
                    mem[200 len 28]
    if address(assetTokenAddress) != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x64457874656e6465644261736553747261746567792e7570646174653a2077726f6e6720746f6b65,
                    mem[204 len 24]
    if block.number > lastUpdateBlock:
        lastUpdateBlock = block.number
        if address(assetTokenAddress) != address(assetTokenAddress):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x64457874656e6465644261736553747261746567792e676574506f6f6c416d6f756e743a2077726f6e6720746f6b65,
                        mem[211 len 17]
        require ext_code.size(stakingPoolAddress)
        staticcall stakingPoolAddress.0xc754d352 with:
                gas gas_remaining wei
               args 0, uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[260 len 128] = unknown_0x826c16f1(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), Mask(224, 32, this.address) >> 32
            mem[416 len 4] = Mask(32, 64, this.address) >> 64
            delegate stakingPoolAddress with:
               funct uint32(stor156)
                 gas gas_remaining wei
                args Mask(224, 32, this.address) << 736, mem[388 len 4]
            if not return_data.size:
                if not delegate.return_code:
                    revert with 0, 'eExtendedBaseStrategy.handleUpdate faile', mem[388 len 4]
                if address(rewardTokenAddress):
                    require ext_code.size(address(rewardTokenAddress))
                    staticcall address(rewardTokenAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if not devFeePercentage:
                            if address(assetTokenAddress) == address(rewardTokenAddress):
                                require ext_code.size(address(assetTokenAddress))
                                staticcall address(assetTokenAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[456 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                mem[644 len 4] = ext_call.return_data[20 len 4]
                                delegate stakingPoolAddress with:
                                   funct uint32(this.address)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[616 len 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                else:
                                    if not delegate.return_code:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                    mem[ceil32(return_data.size) + 564 len 25]
                            else:
                                require ext_code.size(address(rewardTokenAddress))
                                call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_69acf133Address, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'tSingleAssetAccruingStrategy.work: approve faile', mem[388 len 4]
                                if not sub_f830a87f.length:
                                    require ext_code.size(sub_69acf133Address)
                                    call sub_69acf133Address.0xbc697eb8 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(assetTokenAddress))
                                    staticcall address(assetTokenAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[456 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                    mem[644 len 4] = ext_call.return_data[20 len 4]
                                    delegate stakingPoolAddress with:
                                       funct uint32(this.address)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[616 len 4]
                                    if not return_data.size:
                                        if not delegate.return_code:
                                            revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                    else:
                                        if not delegate.return_code:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                        mem[ceil32(return_data.size) + 564 len 25]
                                else:
                                    mem[424] = address(sub_f830a87f.field_0)
                                    idx = 424
                                    s = 0
                                    while (32 * sub_f830a87f.length) + 424 > idx + 32:
                                        mem[idx + 32] = sub_f830a87f[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_69acf133Address)
                                    call sub_69acf133Address.0xbc697eb8 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length, mem[424 len 32 * sub_f830a87f.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(assetTokenAddress))
                                    staticcall address(assetTokenAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[456 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                    mem[644 len 4] = ext_call.return_data[20 len 4]
                                    delegate stakingPoolAddress with:
                                       funct uint32(this.address)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[616 len 4]
                                    if not return_data.size:
                                        if not delegate.return_code:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                        Mask(200, -512, ext_call.return_data[0 len 28]) << 512
                                    else:
                                        if not delegate.return_code:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                        mem[ceil32(return_data.size) + 564 len 25]
                        else:
                            if not ext_call.return_data[0]:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(address(rewardTokenAddress)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = 0, address(devAddress), 0
                                call address(rewardTokenAddress) with:
                                   funct uint32(stor102)
                                     gas gas_remaining wei
                                    args 0, 0, mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x826c16f1(?????), 
                                                    Mask(224, 0, stor154),
                                                    uint32(stor154),
                                                    receiptTokenAddress,
                                                    address(rewardTokenAddress),
                                                    this.address
                                    if not unknown_0x826c16f1(?????), Mask(224, 0, stor154):
                                        revert with 0, 32, 42, 0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                                    if 0 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if address(assetTokenAddress) == address(rewardTokenAddress):
                                        require ext_code.size(address(assetTokenAddress))
                                        staticcall address(assetTokenAddress).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[620 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                        mem[808 len 4] = ext_call.return_data[20 len 4]
                                        delegate stakingPoolAddress with:
                                           funct uint32(this.address)
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[780 len 4]
                                        if not return_data.size:
                                            if not delegate.return_code:
                                                revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                        else:
                                            if not delegate.return_code:
                                                revert with 0, 
                                                            32,
                                                            39,
                                                            0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                            mem[ceil32(return_data.size) + 728 len 25]
                                    else:
                                        require ext_code.size(address(rewardTokenAddress))
                                        call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_69acf133Address, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        48,
                                                        0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                                        mem[540 len 16]
                                        if not sub_f830a87f.length:
                                            require ext_code.size(sub_69acf133Address)
                                            call sub_69acf133Address.0xbc697eb8 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(assetTokenAddress))
                                            staticcall address(assetTokenAddress).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[620 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                            mem[808 len 4] = ext_call.return_data[20 len 4]
                                            delegate stakingPoolAddress with:
                                               funct uint32(this.address)
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[780 len 4]
                                            if not return_data.size:
                                                if not delegate.return_code:
                                                    revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                            else:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                mem[ceil32(return_data.size) + 728 len 25]
                                        else:
                                            mem[588] = address(sub_f830a87f.field_0)
                                            idx = 588
                                            s = 0
                                            while (32 * sub_f830a87f.length) + 588 > idx + 32:
                                                mem[idx + 32] = sub_f830a87f[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(sub_69acf133Address)
                                            call sub_69acf133Address.0xbc697eb8 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length, mem[588 len 32 * sub_f830a87f.length]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(assetTokenAddress))
                                            staticcall address(assetTokenAddress).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[620 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                            mem[808 len 4] = ext_call.return_data[20 len 4]
                                            delegate stakingPoolAddress with:
                                               funct uint32(this.address)
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[780 len 4]
                                            if not return_data.size:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                Mask(200, -512, ext_call.return_data[0 len 28]) << 512
                                            else:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                mem[ceil32(return_data.size) + 728 len 25]
                                else:
                                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        if 0 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if address(assetTokenAddress) == address(rewardTokenAddress):
                                            require ext_code.size(address(assetTokenAddress))
                                            staticcall address(assetTokenAddress).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[ceil32(return_data.size) + 621 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                            mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                            delegate stakingPoolAddress with:
                                               funct uint32(this.address)
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 781 len 4]
                                            if not return_data.size:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                Mask(200, -512, ext_call.return_data[0 len 28]) << 512
                                            else:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                mem[(2 * ceil32(return_data.size)) + 729 len 25]
                                        else:
                                            require ext_code.size(address(rewardTokenAddress))
                                            call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_69acf133Address, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 
                                                            32,
                                                            48,
                                                            0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                                            mem[ceil32(return_data.size) + 541 len 16]
                                            if not sub_f830a87f.length:
                                                require ext_code.size(sub_69acf133Address)
                                                call sub_69acf133Address.0xbc697eb8 with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(assetTokenAddress))
                                                staticcall address(assetTokenAddress).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 621 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                                mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                                delegate stakingPoolAddress with:
                                                   funct uint32(this.address)
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 781 len 4]
                                                if not return_data.size:
                                                    if not delegate.return_code:
                                                        revert with 0, 
                                                                    32,
                                                                    39,
                                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                    Mask(200, -512, ext_call.return_data[0 len 28]) << 512
                                                else:
                                                    if not delegate.return_code:
                                                        revert with 0, 
                                                                    32,
                                                                    39,
                                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                    mem[(2 * ceil32(return_data.size)) + 729 len 25]
                                            else:
                                                mem[ceil32(return_data.size) + 589] = address(sub_f830a87f.field_0)
                                                idx = ceil32(return_data.size) + 589
                                                s = 0
                                                while ceil32(return_data.size) + (32 * sub_f830a87f.length) + 589 > idx + 32:
                                                    mem[idx + 32] = sub_f830a87f[s].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                require ext_code.size(sub_69acf133Address)
                                                call sub_69acf133Address.0xbc697eb8 with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length, mem[ceil32(return_data.size) + 589 len 32 * sub_f830a87f.length]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(assetTokenAddress))
                                                staticcall address(assetTokenAddress).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 621 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                                mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                                delegate stakingPoolAddress with:
                                                   funct uint32(this.address)
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 781 len 4]
                                                if not return_data.size:
                                                    if not delegate.return_code:
                                                        revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                                else:
                                                    if not delegate.return_code:
                                                        revert with 0, 
                                                                    32,
                                                                    39,
                                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                    mem[(2 * ceil32(return_data.size)) + 729 len 25]
                                    else:
                                        require return_data.size >= 32
                                        if not mem[456]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                                        if 0 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if address(assetTokenAddress) == address(rewardTokenAddress):
                                            require ext_code.size(address(assetTokenAddress))
                                            staticcall address(assetTokenAddress).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[ceil32(return_data.size) + 621 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                            mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                            delegate stakingPoolAddress with:
                                               funct uint32(this.address)
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 781 len 4]
                                            if not return_data.size:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                Mask(200, -512, ext_call.return_data[0 len 28]) << 512
                                            else:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                mem[(2 * ceil32(return_data.size)) + 729 len 25]
                                        else:
                                            require ext_code.size(address(rewardTokenAddress))
                                            call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_69acf133Address, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 
                                                            32,
                                                            48,
                                                            0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                                            mem[ceil32(return_data.size) + 541 len 16]
                                            if not sub_f830a87f.length:
                                                require ext_code.size(sub_69acf133Address)
                                                call sub_69acf133Address.0xbc697eb8 with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(assetTokenAddress))
                                                staticcall address(assetTokenAddress).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 621 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                                mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                                delegate stakingPoolAddress with:
                                                   funct uint32(this.address)
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 781 len 4]
                                                if not return_data.size:
                                                    if not delegate.return_code:
                                                        revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                                else:
                                                    if not delegate.return_code:
                                                        revert with 0, 
                                                                    32,
                                                                    39,
                                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                    mem[(2 * ceil32(return_data.size)) + 729 len 25]
                                            else:
                                                mem[ceil32(return_data.size) + 589] = address(sub_f830a87f.field_0)
                                                idx = ceil32(return_data.size) + 589
                                                s = 0
                                                while ceil32(return_data.size) + (32 * sub_f830a87f.length) + 589 > idx + 32:
                                                    mem[idx + 32] = sub_f830a87f[s].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                require ext_code.size(sub_69acf133Address)
                                                call sub_69acf133Address.0xbc697eb8 with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length, mem[ceil32(return_data.size) + 589 len 32 * sub_f830a87f.length]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(assetTokenAddress))
                                                staticcall address(assetTokenAddress).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 621 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                                mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                                delegate stakingPoolAddress with:
                                                   funct uint32(this.address)
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 781 len 4]
                                                if not return_data.size:
                                                    if not delegate.return_code:
                                                        revert with 0, 
                                                                    32,
                                                                    39,
                                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                    Mask(200, -512, ext_call.return_data[0 len 28]) << 512
                                                else:
                                                    if not delegate.return_code:
                                                        revert with 0, 
                                                                    32,
                                                                    39,
                                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                    mem[(2 * ceil32(return_data.size)) + 729 len 25]
                            else:
                                if devFeePercentage * ext_call.return_data[0] / ext_call.return_data[0] != devFeePercentage:
                                    revert with 0, 'nSafeMath: multiplication overflo', mem[388 len 4]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                                if not ext_code.size(address(rewardTokenAddress)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[424 len 64] = 0, address(devAddress), Mask(224, 32, devFeePercentage * ext_call.return_data[0] / 100) >> 32
                                call address(rewardTokenAddress) with:
                                   funct uint32(stor102)
                                     gas gas_remaining wei
                                    args devFeePercentage * ext_call.return_data[0] / 100, 0, mem[488 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x826c16f1(?????), 
                                                    Mask(224, 0, stor154),
                                                    uint32(stor154),
                                                    receiptTokenAddress,
                                                    address(rewardTokenAddress),
                                                    this.address
                                    if not unknown_0x826c16f1(?????), Mask(224, 0, stor154):
                                        revert with 0, 32, 42, 0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                                    if devFeePercentage * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if address(assetTokenAddress) != address(rewardTokenAddress):
                                        require ext_code.size(address(rewardTokenAddress))
                                        call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_69acf133Address, ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        48,
                                                        0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                                        mem[540 len 16]
                                        if not sub_f830a87f.length:
                                            require ext_code.size(sub_69acf133Address)
                                            call sub_69acf133Address.0xbc697eb8 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length
                                        else:
                                            mem[588] = address(sub_f830a87f.field_0)
                                            idx = 588
                                            s = 0
                                            while (32 * sub_f830a87f.length) + 588 > idx + 32:
                                                mem[idx + 32] = sub_f830a87f[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(sub_69acf133Address)
                                            call sub_69acf133Address.0xbc697eb8 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length, mem[588 len 32 * sub_f830a87f.length]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(assetTokenAddress))
                                    staticcall address(assetTokenAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[620 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                    mem[808 len 4] = ext_call.return_data[20 len 4]
                                    delegate stakingPoolAddress with:
                                       funct uint32(this.address)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[780 len 4]
                                    if not return_data.size:
                                        if not delegate.return_code:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                        Mask(200, -512, ext_call.return_data[0 len 28]) << 512
                                    else:
                                        if not delegate.return_code:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                        mem[ceil32(return_data.size) + 728 len 25]
                                else:
                                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        if devFeePercentage * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if address(assetTokenAddress) == address(rewardTokenAddress):
                                            require ext_code.size(address(assetTokenAddress))
                                            staticcall address(assetTokenAddress).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[ceil32(return_data.size) + 621 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                            mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                            delegate stakingPoolAddress with:
                                               funct uint32(this.address)
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 781 len 4]
                                            if not return_data.size:
                                                if not delegate.return_code:
                                                    revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                            else:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                mem[(2 * ceil32(return_data.size)) + 729 len 25]
                                        else:
                                            require ext_code.size(address(rewardTokenAddress))
                                            call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_69acf133Address, ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 
                                                            32,
                                                            48,
                                                            0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                                            mem[ceil32(return_data.size) + 541 len 16]
                                            if not sub_f830a87f.length:
                                                require ext_code.size(sub_69acf133Address)
                                                call sub_69acf133Address.0xbc697eb8 with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(assetTokenAddress))
                                                staticcall address(assetTokenAddress).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 621 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                                mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                                delegate stakingPoolAddress with:
                                                   funct uint32(this.address)
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 781 len 4]
                                                if not return_data.size:
                                                    if not delegate.return_code:
                                                        revert with 0, 
                                                                    32,
                                                                    39,
                                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                    Mask(200, -512, ext_call.return_data[0 len 28]) << 512
                                                else:
                                                    if not delegate.return_code:
                                                        revert with 0, 
                                                                    32,
                                                                    39,
                                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                    mem[(2 * ceil32(return_data.size)) + 729 len 25]
                                            else:
                                                mem[ceil32(return_data.size) + 589] = address(sub_f830a87f.field_0)
                                                idx = ceil32(return_data.size) + 589
                                                s = 0
                                                while ceil32(return_data.size) + (32 * sub_f830a87f.length) + 589 > idx + 32:
                                                    mem[idx + 32] = sub_f830a87f[s].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                require ext_code.size(sub_69acf133Address)
                                                call sub_69acf133Address.0xbc697eb8 with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length, mem[ceil32(return_data.size) + 589 len 32 * sub_f830a87f.length]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(address(assetTokenAddress))
                                                staticcall address(assetTokenAddress).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(return_data.size) + 621 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                                mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                                delegate stakingPoolAddress with:
                                                   funct uint32(this.address)
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 781 len 4]
                                                if not return_data.size:
                                                    if not delegate.return_code:
                                                        revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                                else:
                                                    if not delegate.return_code:
                                                        revert with 0, 
                                                                    32,
                                                                    39,
                                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                    mem[(2 * ceil32(return_data.size)) + 729 len 25]
                                    else:
                                        require return_data.size >= 32
                                        if not mem[456]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 535 len 22]
                                        if devFeePercentage * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if address(assetTokenAddress) == address(rewardTokenAddress):
                                            require ext_code.size(address(assetTokenAddress))
                                            staticcall address(assetTokenAddress).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[ceil32(return_data.size) + 621 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                            mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                            delegate stakingPoolAddress with:
                                               funct uint32(this.address)
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 781 len 4]
                                            if not return_data.size:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                Mask(200, -512, ext_call.return_data[0 len 28]) << 512
                                            else:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                mem[(2 * ceil32(return_data.size)) + 729 len 25]
                                        else:
                                            require ext_code.size(address(rewardTokenAddress))
                                            call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args sub_69acf133Address, ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                revert with 0, 
                                                            32,
                                                            48,
                                                            0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                                            mem[ceil32(return_data.size) + 541 len 16]
                                            if not sub_f830a87f.length:
                                                require ext_code.size(sub_69acf133Address)
                                                call sub_69acf133Address.0xbc697eb8 with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length
                                            else:
                                                mem[ceil32(return_data.size) + 589] = address(sub_f830a87f.field_0)
                                                idx = ceil32(return_data.size) + 589
                                                s = 0
                                                while ceil32(return_data.size) + (32 * sub_f830a87f.length) + 589 > idx + 32:
                                                    mem[idx + 32] = sub_f830a87f[s].field_256
                                                    idx = idx + 32
                                                    s = s + 1
                                                    continue 
                                                require ext_code.size(sub_69acf133Address)
                                                call sub_69acf133Address.0xbc697eb8 with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length, mem[ceil32(return_data.size) + 589 len 32 * sub_f830a87f.length]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(assetTokenAddress))
                                            staticcall address(assetTokenAddress).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[ceil32(return_data.size) + 621 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                            mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                            delegate stakingPoolAddress with:
                                               funct uint32(this.address)
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 781 len 4]
                                            if not return_data.size:
                                                if not delegate.return_code:
                                                    revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                            else:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                mem[(2 * ceil32(return_data.size)) + 729 len 25]
                        ('bool', 'delegate.return_code')
            else:
                if not delegate.return_code:
                    revert with 0, 
                                32,
                                40,
                                0x65457874656e6465644261736553747261746567792e68616e646c65557064617465206661696c65,
                                mem[ceil32(return_data.size) + 369 len 24]
                if address(rewardTokenAddress):
                    require ext_code.size(address(rewardTokenAddress))
                    staticcall address(rewardTokenAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        if not devFeePercentage:
                            if address(assetTokenAddress) == address(rewardTokenAddress):
                                require ext_code.size(address(assetTokenAddress))
                                staticcall address(assetTokenAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[ceil32(return_data.size) + 457 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                mem[ceil32(return_data.size) + 645 len 4] = ext_call.return_data[20 len 4]
                                delegate stakingPoolAddress with:
                                   funct uint32(this.address)
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 617 len 4]
                                if not return_data.size:
                                    if not delegate.return_code:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                    Mask(200, -512, ext_call.return_data[0 len 28]) << 512
                                else:
                                    if not delegate.return_code:
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                    mem[(2 * ceil32(return_data.size)) + 565 len 25]
                            else:
                                require ext_code.size(address(rewardTokenAddress))
                                call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args sub_69acf133Address, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                48,
                                                0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                                mem[ceil32(return_data.size) + 377 len 16]
                                if not sub_f830a87f.length:
                                    require ext_code.size(sub_69acf133Address)
                                    call sub_69acf133Address.0xbc697eb8 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(assetTokenAddress))
                                    staticcall address(assetTokenAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(return_data.size) + 457 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                    mem[ceil32(return_data.size) + 645 len 4] = ext_call.return_data[20 len 4]
                                    delegate stakingPoolAddress with:
                                       funct uint32(this.address)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 617 len 4]
                                    if not return_data.size:
                                        if not delegate.return_code:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                        Mask(200, -512, ext_call.return_data[0 len 28]) << 512
                                    else:
                                        if not delegate.return_code:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                        mem[(2 * ceil32(return_data.size)) + 565 len 25]
                                else:
                                    mem[ceil32(return_data.size) + 425] = address(sub_f830a87f.field_0)
                                    idx = ceil32(return_data.size) + 425
                                    s = 0
                                    while ceil32(return_data.size) + (32 * sub_f830a87f.length) + 425 > idx + 32:
                                        mem[idx + 32] = sub_f830a87f[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(sub_69acf133Address)
                                    call sub_69acf133Address.0xbc697eb8 with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length, mem[ceil32(return_data.size) + 425 len 32 * sub_f830a87f.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(assetTokenAddress))
                                    staticcall address(assetTokenAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(return_data.size) + 457 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                    mem[ceil32(return_data.size) + 645 len 4] = ext_call.return_data[20 len 4]
                                    delegate stakingPoolAddress with:
                                       funct uint32(this.address)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 617 len 4]
                                    if not return_data.size:
                                        if not delegate.return_code:
                                            revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                    else:
                                        if not delegate.return_code:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                        mem[(2 * ceil32(return_data.size)) + 565 len 25]
                        else:
                            if ext_call.return_data[0]:
                                if devFeePercentage * ext_call.return_data[0] / ext_call.return_data[0] != devFeePercentage:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(address(rewardTokenAddress)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = 0, address(devAddress), Mask(224, 32, devFeePercentage * ext_call.return_data[0] / 100) >> 32
                                call address(rewardTokenAddress) with:
                                   funct uint32(stor102)
                                     gas gas_remaining wei
                                    args devFeePercentage * ext_call.return_data[0] / 100, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x826c16f1(?????), 
                                                    Mask(224, 0, stor154),
                                                    uint32(stor154),
                                                    receiptTokenAddress,
                                                    address(rewardTokenAddress),
                                                    this.address
                                    if not unknown_0x826c16f1(?????), Mask(224, 0, stor154):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                    if devFeePercentage * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if address(assetTokenAddress) == address(rewardTokenAddress):
                                        require ext_code.size(address(assetTokenAddress))
                                        staticcall address(assetTokenAddress).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 621 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                        mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                        delegate stakingPoolAddress with:
                                           funct uint32(this.address)
                                             gas gas_remaining wei
                                            args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[ceil32(return_data.size) + 781 len 4]
                                        if not return_data.size:
                                            if not delegate.return_code:
                                                revert with 0, 
                                                            32,
                                                            39,
                                                            0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                            Mask(200, -800, ext_call.return_data[0 len 28]) << 800
                                        else:
                                            if not delegate.return_code:
                                                revert with 0, 
                                                            32,
                                                            39,
                                                            0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                            mem[(2 * ceil32(return_data.size)) + 729 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25]
                                    else:
                                        require ext_code.size(address(rewardTokenAddress))
                                        call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_69acf133Address, ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        48,
                                                        0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                                        mem[ceil32(return_data.size) + 541 len 16]
                                        if not sub_f830a87f.length:
                                            require ext_code.size(sub_69acf133Address)
                                            call sub_69acf133Address.0xbc697eb8 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(assetTokenAddress))
                                            staticcall address(assetTokenAddress).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[ceil32(return_data.size) + 621 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                            mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                            delegate stakingPoolAddress with:
                                               funct uint32(this.address)
                                                 gas gas_remaining wei
                                                args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[ceil32(return_data.size) + 781 len 4]
                                            if not return_data.size:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                Mask(200, -800, ext_call.return_data[0 len 28]) << 800
                                            else:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                mem[(2 * ceil32(return_data.size)) + 729 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25]
                                        else:
                                            mem[ceil32(return_data.size) + 589] = address(sub_f830a87f.field_0)
                                            idx = ceil32(return_data.size) + 589
                                            s = 0
                                            while ceil32(return_data.size) + (32 * sub_f830a87f.length) + 589 > idx + 32:
                                                mem[idx + 32] = sub_f830a87f[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(sub_69acf133Address)
                                            call sub_69acf133Address.0xbc697eb8 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length, mem[ceil32(return_data.size) + 589 len 32 * sub_f830a87f.length]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(assetTokenAddress))
                                            staticcall address(assetTokenAddress).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[ceil32(return_data.size) + 621 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                            mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                            delegate stakingPoolAddress with:
                                               funct uint32(this.address)
                                                 gas gas_remaining wei
                                                args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[ceil32(return_data.size) + 781 len 4]
                                            if not return_data.size:
                                                if not delegate.return_code:
                                                    revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                            else:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                mem[(2 * ceil32(return_data.size)) + 729 len 25]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                                    if devFeePercentage * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if address(assetTokenAddress) != address(rewardTokenAddress):
                                        require ext_code.size(address(rewardTokenAddress))
                                        call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_69acf133Address, ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        48,
                                                        0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                                        mem[(2 * ceil32(return_data.size)) + 542 len 16]
                                        if not sub_f830a87f.length:
                                            require ext_code.size(sub_69acf133Address)
                                            call sub_69acf133Address.0xbc697eb8 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 590] = address(sub_f830a87f.field_0)
                                            idx = (2 * ceil32(return_data.size)) + 590
                                            s = 0
                                            while (2 * ceil32(return_data.size)) + (32 * sub_f830a87f.length) + 590 > idx + 32:
                                                mem[idx + 32] = sub_f830a87f[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(sub_69acf133Address)
                                            call sub_69acf133Address.0xbc697eb8 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0] - (devFeePercentage * ext_call.return_data[0] / 100), 0, 128, this.address, sub_f830a87f.length, mem[(2 * ceil32(return_data.size)) + 590 len 32 * sub_f830a87f.length]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(address(assetTokenAddress))
                                    staticcall address(assetTokenAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[(2 * ceil32(return_data.size)) + 622 len 160] = unknown_0xa7148194(?????), Mask(224, 0, stor154), uint32(stor154), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                    mem[(2 * ceil32(return_data.size)) + 810 len 4] = ext_call.return_data[20 len 4]
                                    delegate stakingPoolAddress with:
                                       funct uint32(this.address)
                                         gas gas_remaining wei
                                        args Mask(1248, -1024, ext_call.return_data[0 len 28]) << 1024, mem[(2 * ceil32(return_data.size)) + 782 len 4]
                                    if not return_data.size:
                                        if not delegate.return_code:
                                            revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                    else:
                                        if not delegate.return_code:
                                            revert with 0, 
                                                        32,
                                                        39,
                                                        0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 730 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25]
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 531 len 26]
                                if not ext_code.size(address(rewardTokenAddress)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 425 len 64] = 0, address(devAddress), 0
                                mem[ceil32(return_data.size) + 517 len 4] = 0
                                call address(rewardTokenAddress) with:
                                   funct uint32(stor102)
                                     gas gas_remaining wei
                                    args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x826c16f1(?????), 
                                                    Mask(224, 0, stor154),
                                                    uint32(stor154),
                                                    receiptTokenAddress,
                                                    address(rewardTokenAddress),
                                                    this.address
                                    if not unknown_0x826c16f1(?????), Mask(224, 0, stor154):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 535 len 22]
                                    if 0 > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if address(assetTokenAddress) == address(rewardTokenAddress):
                                        require ext_code.size(address(assetTokenAddress))
                                        staticcall address(assetTokenAddress).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 621 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                        mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                        delegate stakingPoolAddress with:
                                           funct uint32(this.address)
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 781 len 4]
                                        if not return_data.size:
                                            if not delegate.return_code:
                                                revert with 0, 
                                                            32,
                                                            39,
                                                            0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                            Mask(200, -512, ext_call.return_data[0 len 28]) << 512
                                        else:
                                            if not delegate.return_code:
                                                revert with 0, 
                                                            32,
                                                            39,
                                                            0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                            mem[(2 * ceil32(return_data.size)) + 729 len 25]
                                    else:
                                        require ext_code.size(address(rewardTokenAddress))
                                        call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_69acf133Address, ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        48,
                                                        0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                                        mem[ceil32(return_data.size) + 541 len 16]
                                        if not sub_f830a87f.length:
                                            require ext_code.size(sub_69acf133Address)
                                            call sub_69acf133Address.0xbc697eb8 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length
                                        else:
                                            mem[ceil32(return_data.size) + 589] = address(sub_f830a87f.field_0)
                                            idx = ceil32(return_data.size) + 589
                                            s = 0
                                            while ceil32(return_data.size) + (32 * sub_f830a87f.length) + 589 > idx + 32:
                                                mem[idx + 32] = sub_f830a87f[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(sub_69acf133Address)
                                            call sub_69acf133Address.0xbc697eb8 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length, mem[ceil32(return_data.size) + 589 len 32 * sub_f830a87f.length]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(address(assetTokenAddress))
                                        staticcall address(assetTokenAddress).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[ceil32(return_data.size) + 621 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                        mem[ceil32(return_data.size) + 809 len 4] = ext_call.return_data[20 len 4]
                                        delegate stakingPoolAddress with:
                                           funct uint32(this.address)
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[ceil32(return_data.size) + 781 len 4]
                                        if not return_data.size:
                                            if not delegate.return_code:
                                                revert with 0, 'eSingleAssetAccruingStrategy.work failengleAssetAccruingStrategy'
                                        else:
                                            if not delegate.return_code:
                                                revert with 0, 
                                                            32,
                                                            39,
                                                            0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                            mem[(2 * ceil32(return_data.size)) + 729 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25]
                                else:
                                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 457]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if 0 > ext_call.return_data[0]:
                                        revert with 0, 
                                                    'SafeMath: subtraction overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if address(assetTokenAddress) == address(rewardTokenAddress):
                                        require ext_code.size(address(assetTokenAddress))
                                        staticcall address(assetTokenAddress).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[(2 * ceil32(return_data.size)) + 622 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                        mem[(2 * ceil32(return_data.size)) + 810 len 4] = ext_call.return_data[20 len 4]
                                        delegate stakingPoolAddress with:
                                           funct uint32(this.address)
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4]
                                        if not return_data.size:
                                            if not delegate.return_code:
                                                revert with 0, 'eSingleAssetAccruingStrategy.work faileeSingleAssetAccruingStrategy.work faile'
                                        else:
                                            if not delegate.return_code:
                                                revert with 0, 
                                                            32,
                                                            39,
                                                            0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                            mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 730 len 25]
                                    else:
                                        require ext_code.size(address(rewardTokenAddress))
                                        call address(rewardTokenAddress).approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args sub_69acf133Address, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        48,
                                                        0x7453696e676c6541737365744163637275696e6753747261746567792e776f726b3a20617070726f7665206661696c65,
                                                        mem[(2 * ceil32(return_data.size)) + 542 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
                                        if not sub_f830a87f.length:
                                            require ext_code.size(sub_69acf133Address)
                                            call sub_69acf133Address.0xbc697eb8 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length, mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(assetTokenAddress))
                                            staticcall address(assetTokenAddress).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(2 * ceil32(return_data.size)) + 622 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                            mem[(2 * ceil32(return_data.size)) + 810 len 4] = ext_call.return_data[20 len 4]
                                            delegate stakingPoolAddress with:
                                               funct uint32(this.address)
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[(2 * ceil32(return_data.size)) + 782 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4]
                                            if not return_data.size:
                                                if not delegate.return_code:
                                                    revert with 0, 'eSingleAssetAccruingStrategy.work faileeSingleAssetAccruingStrategy.work faile'
                                            else:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 730 len 25]
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 590] = address(sub_f830a87f.field_0)
                                            idx = (2 * ceil32(return_data.size)) + 590
                                            s = 0
                                            while (2 * ceil32(return_data.size)) + (32 * sub_f830a87f.length) + 590 > idx + 32:
                                                mem[idx + 32] = sub_f830a87f[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            require ext_code.size(sub_69acf133Address)
                                            call sub_69acf133Address.0xbc697eb8 with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 128, this.address, sub_f830a87f.length, mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) + (32 * sub_f830a87f.length) - (2 * ceil32(return_data.size))]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(address(assetTokenAddress))
                                            staticcall address(assetTokenAddress).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[(2 * ceil32(return_data.size)) + 622 len 160] = 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28]
                                            mem[(2 * ceil32(return_data.size)) + 810 len 4] = ext_call.return_data[20 len 4]
                                            delegate stakingPoolAddress with:
                                               funct uint32(this.address)
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, address(assetTokenAddress), receiptTokenAddress, address(rewardTokenAddress), this.address, ext_call.return_data[0 len 28] >> 736, mem[(2 * ceil32(return_data.size)) + 782 len 4]
                                            if not return_data.size:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                Mask(200, -512, ext_call.return_data[0 len 28]) << 512
                                            else:
                                                if not delegate.return_code:
                                                    revert with 0, 
                                                                32,
                                                                39,
                                                                0x6553696e676c6541737365744163637275696e6753747261746567792e776f726b206661696c65,
                                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 730 len 25]
                        ('bool', 'delegate.return_code')
}



}
