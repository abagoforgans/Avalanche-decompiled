contract main {




// =====================  Runtime code  =====================


const sub_c2d975a9(?) = 1000


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor101;
address stor151;
address sub_ad843fd2Address;
address vaultAddress;
uint256 stor154;
uint256 sub_eb013520;
uint256 minFee;
uint256 maxFee;
uint256 minLimitLiquidityBlocks;
uint256 maxLimitLiquidityBlocks;
address wethAddress;
mapping of address remoteToken;
mapping of uint256 sub_73f1fcbb;
mapping of address sub_ba980fb9;
mapping of struct underlyingReceipt;
mapping of uint8 stor165;
uint8 sub_1e01910b;
mapping of address sub_320f3bd4;

function maxLimitLiquidityBlocks() payable {
    return maxLimitLiquidityBlocks
}

function maxFee() payable {
    return maxFee
}

function minLimitLiquidityBlocks() payable {
    return minLimitLiquidityBlocks
}

function sub_1e01910b(?) payable {
    return bool(sub_1e01910b)
}

function minFee() payable {
    return minFee
}

function sub_2cf084cd(?) payable {
    return sub_ad843fd2Address
}

function sub_320f3bd4(?) payable {
    require calldata.size - 4 >= 32
    return sub_320f3bd4[arg1]
}

function wethAddress() payable {
    return wethAddress
}

function sub_73f1fcbb(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_73f1fcbb[arg1][arg2]
}

function owner() payable {
    return owner
}

function pausedNetwork(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor165[arg1])
}

function getUnderlyingReceiptAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return underlyingReceipt[address(arg1)].field_768
}

function sub_ad843fd2(?) payable {
    return sub_ad843fd2Address
}

function sub_ba980fb9(?) payable {
    require calldata.size - 4 >= 32
    return sub_ba980fb9[arg1]
}

function whitelistedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return underlyingReceipt[arg1].field_0, 
           underlyingReceipt[arg1].field_256,
           underlyingReceipt[arg1].field_512,
           underlyingReceipt[arg1].field_768
}

function sub_eb013520(?) payable {
    return sub_eb013520
}

function sub_f00fc9ff(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return underlyingReceipt[address(arg1)].field_512
}

function remoteTokenAddress(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return remoteToken[arg1][arg2]
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_78d2de14(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_eb013520 = arg1
}

function sub_81e4dbf7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_320f3bd4[arg1] = 0
}

function removeSupportedAMM(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ba980fb9[arg1] = 0
}

function sub_d0806f28(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1e01910b = uint8(bool(arg1))
}

function pauseNetwork(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor165[arg1] = 1
    emit PauseNetwork(msg.sender, arg1);
}

function generateId() payable {
    if vaultAddress != msg.sender:
        revert with 0, 'ERR: PERMISSIONS VAULT'
    if 1 > !stor154:
        revert with 0, 17
    stor154++
    return sha3(block.number, vaultAddress, stor154 + 1)
}

function unpauseNetwork(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor165[arg1] = 0
    emit UnpauseNetwork(msg.sender, arg1);
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Invalid address'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddress = arg1
}

function sub_bec3c809(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid address'
    stor151 = address(arg1)
}

function addSupportedAMM(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0, 'Invalid address'
    sub_ba980fb9[arg1] = arg2
}

function inTokenTransferLimits(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 < underlyingReceipt[address(arg1)].field_0:
        return arg2 >= underlyingReceipt[address(arg1)].field_0
    return arg2 <= underlyingReceipt[address(arg1)].field_256
}

function sub_f979adfc(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg2):
        revert with 0, 'Invalid address'
    sub_320f3bd4[arg1] = address(arg2)
    sub_1e01910b = 1
}

function sub_38e6eb85(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_73f1fcbb[arg2][address(arg1)]:
        revert with 0, 'Invalid amount'
    sub_73f1fcbb[arg2][address(arg1)] = arg3
}

function setMaxLimitLiquidityBlocks(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= minLimitLiquidityBlocks:
        revert with 0, 'ERR: MIN > MAX'
    maxLimitLiquidityBlocks = arg1
    emit MaxLiquidityBlockChanged(arg1);
}

function setMinLimitLiquidityBlocks(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= maxLimitLiquidityBlocks:
        revert with 0, 'ERR: MIN > MAX'
    minLimitLiquidityBlocks = arg1
    emit MinLiquidityBlockChanged(arg1);
}

function setMinFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 10000:
        revert with 0, 'ERR: MIN > FACTOR'
    if arg1 >= maxFee:
        revert with 0, 'ERR: MIN > MAX'
    minFee = arg1
    emit MinFeeChanged(arg1);
}

function setMaxFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 10000:
        revert with 0, 'ERR: MAX > FACTOR'
    if arg1 <= minFee:
        revert with 0, 'ERR: MIN > MAX'
    maxFee = arg1
    emit MaxFeeChanged(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function removeWhitelistedToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not underlyingReceipt[address(arg1)].field_512:
        revert with 0, 'ERR: NOT WHITELISTED'
    emit 0xacb00cc2: arg1
    underlyingReceipt[address(arg1)].field_0 = 0
    underlyingReceipt[address(arg1)].field_256 = 0
    underlyingReceipt[address(arg1)].field_512 = 0
    underlyingReceipt[address(arg1)].field_768 = 0
}

function sub_3ef44a08(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'ERR: ZERO'
    if not address(arg1):
        revert with 0, 'Invalid address'
    if not remoteToken[arg2][address(arg1)]:
        revert with 0, 'ERR: NOT WHITELISTED NETWORK'
    remoteToken[arg2][address(arg1)] = 0
    sub_73f1fcbb[arg2][address(arg1)] = 0
    emit 0x5bbf76ee: address(arg1), arg2
}

function sub_8b111f66(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid address'
    if not address(arg2):
        revert with 0, 'Invalid address'
    if arg3 <= 0:
        revert with 0, 'ERR: ZERO'
    if not underlyingReceipt[address(arg1)].field_512:
        revert with 0, 'ERR: NOT WHITELISTED'
    remoteToken[arg3][address(arg1)] = address(arg2)
    sub_73f1fcbb[arg3][address(arg1)] = arg4
    emit 0xc4f13546: arg4, address(arg1), address(arg2), arg3
}

function sub_f533836b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid address'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if arg3 <= arg2:
        revert with 0, 'ERR: MAX > MIN'
    if underlyingReceipt[address(arg1)].field_512:
        revert with 0, 'ERR: ALREADY WHITELISTED'
    if not stor151:
        revert with 0, 'ERR: FACTORY INIT'
    if not vaultAddress:
        revert with 0, 'ERR: VAULT INIT'
    require ext_code.size(stor151)
    call stor151.createIOU(address arg1, string arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg1), 96, vaultAddress, 4, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor151)
    call stor151.createReceipt(address arg1, string arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg1), 96, vaultAddress, 2, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    underlyingReceipt[address(arg1)].field_512 = address(ext_call.return_data[0])
    underlyingReceipt[address(arg1)].field_768 = ext_call.return_data[12 len 20]
    emit TokenCreated(address(arg1));
    underlyingReceipt[address(arg1)].field_0 = arg2
    underlyingReceipt[address(arg1)].field_256 = arg3
    emit 0x34a8c02d: address(arg1), address(ext_call.return_data[0]), address(ext_call.return_data[0])
    stor101 = 1
}

function sub_03161d01(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid address'
    if wethAddress:
        if not underlyingReceipt[stor160].field_512:
            revert with 0, 'ERR: NOT WHITELISTED'
        emit 0xacb00cc2: wethAddress
        underlyingReceipt[stor160].field_0 = 0
        underlyingReceipt[stor160].field_256 = 0
        underlyingReceipt[stor160].field_512 = 0
        underlyingReceipt[stor160].field_768 = 0
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if arg3 <= arg2:
        revert with 0, 'ERR: MAX > MIN'
    if underlyingReceipt[address(arg1)].field_512:
        revert with 0, 'ERR: ALREADY WHITELISTED'
    if not stor151:
        revert with 0, 'ERR: FACTORY INIT'
    if not vaultAddress:
        revert with 0, 'ERR: VAULT INIT'
    require ext_code.size(stor151)
    call stor151.createIOU(address arg1, string arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg1), 96, vaultAddress, 4, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor151)
    call stor151.createReceipt(address arg1, string arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg1), 96, vaultAddress, 2, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    underlyingReceipt[address(arg1)].field_512 = address(ext_call.return_data[0])
    underlyingReceipt[address(arg1)].field_768 = ext_call.return_data[12 len 20]
    emit TokenCreated(address(arg1));
    underlyingReceipt[address(arg1)].field_0 = arg2
    underlyingReceipt[address(arg1)].field_256 = arg3
    emit 0x34a8c02d: address(arg1), address(ext_call.return_data[0]), address(ext_call.return_data[0])
    stor101 = 1
    wethAddress = address(arg1)
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0, 'ERR: HOLDING ADDRESS'
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor154 = 0
        minFee = 0
        maxFee = 500
        minLimitLiquidityBlocks = 1
        maxLimitLiquidityBlocks = 100
        sub_eb013520 = 24 * 3600
        sub_ad843fd2Address = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            stor154 = 0
            minFee = 0
            maxFee = 500
            minLimitLiquidityBlocks = 1
            maxLimitLiquidityBlocks = 100
            sub_eb013520 = 24 * 3600
            sub_ad843fd2Address = arg1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                stor154 = 0
                minFee = 0
                maxFee = 500
                minLimitLiquidityBlocks = 1
                maxLimitLiquidityBlocks = 100
                sub_eb013520 = 24 * 3600
                sub_ad843fd2Address = arg1
            else:
                uint16(stor0.field_0) = 257
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    stor154 = 0
                    minFee = 0
                    maxFee = 500
                    minLimitLiquidityBlocks = 1
                    maxLimitLiquidityBlocks = 100
                    sub_eb013520 = 24 * 3600
                    sub_ad843fd2Address = arg1
                else:
                    uint16(stor0.field_0) = 257
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    stor154 = 0
                    minFee = 0
                    maxFee = 500
                    minLimitLiquidityBlocks = 1
                    maxLimitLiquidityBlocks = 100
                    sub_eb013520 = 24 * 3600
                    sub_ad843fd2Address = arg1
                    uint8(stor0.field_8) = 0
}



}
