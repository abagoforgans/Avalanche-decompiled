contract main {




// =====================  Runtime code  =====================


array of struct stor0;
mapping of uint8 stor1;
mapping of uint256 stor2;
array of struct stor3;
mapping of uint8 stor4;
mapping of uint256 stor5;
uint256 stor6;
uint256 stor8;
address stor10;
address stor11;
address stor13;
mapping of uint256 revenueFor;
array of struct stor15;
array of struct stor16;
mapping of uint256 stor17;
mapping of struct auction;
mapping of uint256 stor20;
mapping of address seller;
mapping of uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;

function isTeam(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor1[address(arg1)])
}

function getAuction(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    return auction[arg2 + arg1].field_0, 
           auction[arg2 + arg1].field_256,
           auction[arg2 + arg1].field_512,
           auction[arg2 + arg1].field_768,
           auction[arg2 + arg1].field_1024,
           bool(auction[arg2 + arg1].field_1280)
}

function revenueFor(address arg1) payable {
    require calldata.size - 4 >= 32
    return revenueFor[address(arg1)]
}

function isOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor4[address(arg1)])
}

function sellerAddressFor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return seller[arg1]
}

function isContractNFTWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor17[address(arg1)])
}

function _fallback() payable {
    revert
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setConsumersReceivedMainTokenLatestDate(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor11 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe4f70656e42695365613a206f6e6c79206d61696e20636f6e74726163742063616e2073656e642069,
                    mem[205 len 23]
    stor22[address(arg1)] = block.timestamp
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function getTeamAddresses() payable {
    if stor0.length:
        mem[128] = address(stor0.field_0)
        if (32 * stor0.length) + 32 > 64:
            mem[160] = address(stor0.field_256)
            idx = 160
            s = 1
            while (32 * stor0.length) + 96 > idx:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor0.length) + 128] = 32
    mem[(32 * stor0.length) + 160] = stor0.length
    mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
    return memory
      from (32 * stor0.length) + 128
       len (96 * stor0.length) + 64
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function setAuctionCreationFeeMultiplierAdmin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x645465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    stor8 = arg1
}

function whitelistContractCreator(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor11 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe4f70656e42695365613a206f6e6c79206d61696e20636f6e74726163742063616e2073656e642069,
                    mem[205 len 23]
    if arg2 + stor6 < stor6:
        revert with 0, 'SafeMath: addition overflow'
    stor6 += arg2
    if not stor17[address(arg1)]:
        stor15.length++
        stor15[stor15.length].field_0 = arg1
        stor15[stor15.length].field_160 = 0
        stor16.length++
        stor16[stor16.length].field_0 = arg1
        stor17[address(arg1)] = stor15.length
    emit 0xdff3fafa: arg1
}

function whitelistContractCreatorTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor11 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe4f70656e42695365613a206f6e6c79206d61696e20636f6e74726163742063616e2073656e642069,
                    mem[205 len 23]
    if arg2 + stor6 < stor6:
        revert with 0, 'SafeMath: addition overflow'
    stor6 += arg2
    if not stor17[address(arg1)]:
        stor15.length++
        stor15[stor15.length].field_0 = arg1
        stor15[stor15.length].field_160 = 0
        stor16.length++
        stor16[stor16.length].field_0 = arg1
        stor17[address(arg1)] = stor15.length
    emit 0xdff3fafa: arg1
}

function getOracleAddresses() payable {
    if not stor3.length:
        mem[(32 * stor3.length) + 128] = 32
        mem[(32 * stor3.length) + 160] = stor3.length
        mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
        return memory
          from (32 * stor3.length) + 128
           len (96 * stor3.length) + 64
    mem[128] = address(stor3.field_0)
    idx = 128
    s = 0
    while (32 * stor3.length) + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
    return Array(len=stor3.length, data=mem[128 len floor32(stor3.length)], mem[(32 * stor3.length) + floor32(stor3.length) + 192 len (32 * stor3.length) - floor32(stor3.length)]), 
}

function contractsNFTWhitelisted() payable {
    if not stor16.length:
        mem[(32 * stor16.length) + 128] = 32
        mem[(32 * stor16.length) + 160] = stor16.length
        mem[(32 * stor16.length) + 192 len floor32(stor16.length)] = mem[128 len floor32(stor16.length)]
        return memory
          from (32 * stor16.length) + 128
           len (96 * stor16.length) + 64
    mem[128] = address(stor16.field_0)
    idx = 128
    s = 0
    while (32 * stor16.length) + 96 > idx:
        mem[idx + 32] = stor16[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor16.length) + 192 len floor32(stor16.length)] = mem[128 len floor32(stor16.length)]
    return Array(len=stor16.length, data=mem[128 len floor32(stor16.length)], mem[(32 * stor16.length) + floor32(stor16.length) + 192 len (32 * stor16.length) - floor32(stor16.length)]), 
}

function whitelistContractAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x645465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    if not stor17[address(arg1)]:
        stor15.length++
        stor15[stor15.length].field_0 = arg1
        stor15[stor15.length].field_160 = 0
        stor16.length++
        stor16[stor16.length].field_0 = arg1
        stor17[address(arg1)] = stor15.length
    emit 0xdff3fafa: arg1
}

function renounceOracle() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    if stor5[address(msg.sender)]:
        require stor3.length - 1 < stor3.length
        require stor5[address(msg.sender)] - 1 < stor3.length
        stor3[stor5[address(msg.sender)]].field_0 = stor3[stor3.length].field_0
        require stor3.length
        stor3[stor3.length].field_0 = 0
        stor3.length--
        stor5[address(msg.sender)] = 0
    stor4[address(msg.sender)] = 0
    emit OracleRemoved(msg.sender);
}

function addTeam(address arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x645465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    stor0.length++
    stor0[stor0.length].field_0 = arg1
    stor2[address(arg1)] = stor0.length
    emit TeamAdded(arg1);
}

function addOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x645465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor4[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor4[address(arg1)] = 1
    stor3.length++
    stor3[stor3.length].field_0 = arg1
    stor5[address(arg1)] = stor3.length
    emit OracleAdded(arg1);
}

function getNFTsAuctionList(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor19[address(arg1)].field_256:
        mem[(32 * stor19[address(arg1)].field_256) + 128] = 32
        mem[(32 * stor19[address(arg1)].field_256) + 160] = stor19[address(arg1)].field_256
        mem[(32 * stor19[address(arg1)].field_256) + 192 len floor32(stor19[address(arg1)].field_256)] = mem[128 len floor32(stor19[address(arg1)].field_256)]
        return memory
          from (32 * stor19[address(arg1)].field_256) + 128
           len (96 * stor19[address(arg1)].field_256) + 64
    mem[128] = stor19[address(arg1)][1].field_0
    idx = 128
    s = 0
    while (32 * stor19[address(arg1)].field_256) + 96 > idx:
        mem[idx + 32] = stor19[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor19[address(arg1)].field_256) + 192 len floor32(stor19[address(arg1)].field_256)] = mem[128 len floor32(stor19[address(arg1)].field_256)]
    return Array(len=stor19[address(arg1)].field_256, data=mem[128 len floor32(stor19[address(arg1)].field_256)], mem[(32 * stor19[address(arg1)].field_256) + floor32(stor19[address(arg1)].field_256) + 192 len (32 * stor19[address(arg1)].field_256) - floor32(stor19[address(arg1)].field_256)]), 
}

function deWhitelistContractAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x645465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    if stor17[address(arg1)]:
        require stor15.length - 1 < stor15.length
        require stor17[address(arg1)] - 1 < stor15.length
        stor15[stor17[address(arg1)]].field_0 = stor15[stor15.length].field_0
        require stor15.length
        stor15[stor15.length].field_0 = 0
        stor15.length--
        require stor15.length - 1 < stor16.length
        require stor17[address(arg1)] - 1 < stor16.length
        stor16[stor17[address(arg1)]].field_0 = stor16[stor15.length].field_0
        require stor16.length
        stor16[stor16.length].field_0 = 0
        stor16.length--
        stor17[stor15[stor15.length].field_0] = stor17[address(arg1)]
        stor17[arg1] = 0
    emit 0x6b4fd386: arg1
}

function renounceTeam() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x645465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    if stor2[address(msg.sender)]:
        require stor0.length - 1 < stor0.length
        require stor2[address(msg.sender)] - 1 < stor0.length
        stor0[stor2[address(msg.sender)]].field_0 = stor0[stor0.length].field_0
        require stor0.length
        stor0[stor0.length].field_0 = 0
        stor0.length--
        stor2[address(msg.sender)] = 0
    stor1[address(msg.sender)] = 0
    emit TeamRemoved(msg.sender);
}

function cancelAuctionAdmin(address arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x645465616d526f6c653a2063616c6c657220646f6573206e6f74206861766520746865205465616d20726f6c,
                    mem[208 len 20]
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(arg1)
    if not arg3:
        call arg1.0x42842e0e with:
             gas gas_remaining wei
            args this.address, auction[arg2 + arg1].field_0, arg2
    else:
        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args 0, uint32(this.address), auction[arg2 + arg1].field_0, arg2, 1, 160, 3, 0x3078300000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x59c07ddb: arg2, auction[arg2 + arg1].field_1024, auction[arg2 + arg1].field_768, arg3, auction[arg2 + arg1].field_0, arg1
    auction[arg2 + arg1].field_0 = 0
    auction[arg2 + arg1].field_256 = 0
    auction[arg2 + arg1].field_512 = 0
    auction[arg2 + arg1].field_768 = 0
    auction[arg2 + arg1].field_1024 = 0
    auction[arg2 + arg1].field_1280 = 0
    if arg2 + auction[arg2 + arg1].field_0 < auction[arg2 + arg1].field_0:
        revert with 0, 'SafeMath: addition overflow'
    seller[arg2 + stor18[arg2 + arg1].field_0] = 0
    if stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0:
        require stor19[address(arg1)].field_0 - 1 < stor19[address(arg1)].field_0
        require stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0 - 1 < stor19[address(arg1)].field_0
        stor19[address(arg1)][stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0].field_0 = stor19[address(arg1)][stor19[address(arg1)].field_0].field_0
        require stor19[address(arg1)].field_0
        stor19[address(arg1)][stor19[address(arg1)].field_0].field_0 = 0
        stor19[address(arg1)].field_0--
        require stor19[address(arg1)].field_0 - 1 < stor19[address(arg1)].field_256
        require stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0 - 1 < stor19[address(arg1)].field_256
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_0].field_0
        require stor19[address(arg1)].field_256
        stor[stor19[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0 = 0
        stor19[address(arg1)].field_256--
        stor19[address(arg1)][2][stor19[address(arg1)][stor19[address(arg1)].field_0].field_0].field_0 = stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0
        stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0 = 0
}

function createAuction(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5, address arg6, bool arg7) payable {
    require calldata.size - 4 >= 224
    if stor11 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe4f70656e42695365613a206f6e6c79206d61696e20636f6e74726163742063616e2073656e642069,
                    mem[205 len 23]
    if not stor17[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x644f70656e42695365613a20636f6e7472616374206d7573742062652077686974656c69737465,
                    mem[203 len 25]
    if arg2 + arg6 < arg6:
        revert with 0, 'SafeMath: addition overflow'
    if stor19[address(arg1)][2][arg2 + arg6].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x744f70656e42695365613a2061756374696f6e20697320616c726561647920637265617465,
                    mem[201 len 27]
    if 10^18 * stor8 / 10^18 != stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18 * stor8 / 10000:
        revert with 0, 
                    32,
                    50,
                    0x6c4f70656e42695365613a20796f75206d75737420686176652031204f4253206f6e206163636f756e7420746f2073746172,
                    mem[278 len 14]
    require ext_code.size(arg1)
    if not arg5:
        call arg1.0x42842e0e with:
             gas gas_remaining wei
            args address(arg6), this.address, arg2
    else:
        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args 0, 0, this.address, arg2, 1, 160, 3, 0x3078300000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    auction[arg2 + arg1].field_0 = arg6
    auction[arg2 + arg1].field_256 = 0
    auction[arg2 + arg1].field_512 = 0
    auction[arg2 + arg1].field_512 = 0
    auction[arg2 + arg1].field_768 = arg4
    auction[arg2 + arg1].field_1024 = arg3
    auction[arg2 + arg1].field_1280 = uint8(arg7)
    if arg2 + arg6 < arg6:
        revert with 0, 'SafeMath: addition overflow'
    seller[arg2 + arg6] = arg6
    if not stor19[address(arg1)][2][arg2 + arg6].field_0:
        stor19[address(arg1)].field_0++
        stor19[address(arg1)][stor19[address(arg1)].field_0].field_0 = arg2 + arg6
        stor19[address(arg1)].field_256++
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_256].field_0 = arg2 + arg6
        stor19[address(arg1)][2][arg2 + arg6].field_0 = stor19[address(arg1)].field_0
    emit 0x1a0c83d7: arg2, arg3, arg4, arg5, address(arg6), arg7, arg1
}

function cancelAuction(address arg1, uint256 arg2, address arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if stor11 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe4f70656e42695365613a206f6e6c79206d61696e20636f6e74726163742063616e2073656e642069,
                    mem[205 len 23]
    if not stor17[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x644f70656e42695365613a20636f6e7472616374206d7573742062652077686974656c69737465,
                    mem[203 len 25]
    if arg2 + arg3 < arg3:
        revert with 0, 'SafeMath: addition overflow'
    if not stor19[address(arg1)][2][arg2 + arg3].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x734f70656e42695365613a2061756374696f6e206973206e6f7420637265617465,
                    mem[197 len 31]
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if auction[arg2 + arg1].field_0 != arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x644f70656e42695365613a206f6e6c792073656c6c65722063616e2063616e6365,
                    mem[197 len 31]
    require ext_code.size(arg1)
    if not arg4:
        call arg1.0x42842e0e with:
             gas gas_remaining wei
            args this.address, auction[arg2 + arg1].field_0, arg2
    else:
        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args 0, uint32(this.address), auction[arg2 + arg1].field_0, arg2, 1, 160, 3, 0x3078300000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x59c07ddb: arg2, auction[arg2 + arg1].field_1024, auction[arg2 + arg1].field_768, arg4, auction[arg2 + arg1].field_0, arg1
    auction[arg2 + arg1].field_0 = 0
    auction[arg2 + arg1].field_256 = 0
    auction[arg2 + arg1].field_512 = 0
    auction[arg2 + arg1].field_768 = 0
    auction[arg2 + arg1].field_1024 = 0
    auction[arg2 + arg1].field_1280 = 0
    if arg2 + auction[arg2 + arg1].field_0 < auction[arg2 + arg1].field_0:
        revert with 0, 'SafeMath: addition overflow'
    seller[arg2 + stor18[arg2 + arg1].field_0] = 0
    if stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0:
        require stor19[address(arg1)].field_0 - 1 < stor19[address(arg1)].field_0
        require stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0 - 1 < stor19[address(arg1)].field_0
        stor19[address(arg1)][stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0].field_0 = stor19[address(arg1)][stor19[address(arg1)].field_0].field_0
        require stor19[address(arg1)].field_0
        stor19[address(arg1)][stor19[address(arg1)].field_0].field_0 = 0
        stor19[address(arg1)].field_0--
        require stor19[address(arg1)].field_0 - 1 < stor19[address(arg1)].field_256
        require stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0 - 1 < stor19[address(arg1)].field_256
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_0].field_0
        require stor19[address(arg1)].field_256
        stor[stor19[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0 = 0
        stor19[address(arg1)].field_256--
        stor19[address(arg1)][2][stor19[address(arg1)][stor19[address(arg1)].field_0].field_0].field_0 = stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0
        stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0 = 0
}

function bid(address arg1, uint256 arg2, uint256 arg3, bool arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    if stor11 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe4f70656e42695365613a206f6e6c79206d61696e20636f6e74726163742063616e2073656e642069,
                    mem[205 len 23]
    if not stor17[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x644f70656e42695365613a20636f6e7472616374206d7573742062652077686974656c69737465,
                    mem[203 len 25]
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if not auction[arg2 + arg1].field_0:
        revert with 0, 'OpenBiSea: wrong seller address'
    if arg2 + auction[arg2 + arg1].field_0 < auction[arg2 + arg1].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if not stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x734f70656e42695365613a2061756374696f6e206973206e6f7420637265617465,
                    mem[197 len 31]
    if arg3 < auction[arg2 + arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x654f70656e42695365613a207072696365206d757374206265206d6f7265207468616e2070726576696f7573206269,
                    mem[211 len 17]
    if block.timestamp <= auction[arg2 + arg1].field_768:
        auction[arg2 + arg1].field_1024 = arg3
        auction[arg2 + arg1].field_256 = arg5
        auction[arg2 + arg1].field_512 = block.timestamp
        emit 0xe3d4bf61: arg2, arg3, auction[arg2 + arg1].field_768, arg4, arg5, auction[arg2 + arg1].field_0, 0, bool(auction[arg2 + arg1].field_1280), arg1
        if not auction[arg2 + arg1].field_256:
            return 0
        return 0, auction[arg2 + arg1].field_1024, auction[arg2 + arg1].field_256, bool(auction[arg2 + arg1].field_1280)
    require ext_code.size(arg1)
    if not arg4:
        call arg1.0x42842e0e with:
             gas gas_remaining wei
            args this.address, address(arg5), arg2
    else:
        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args 0, uint32(this.address), address(arg5), arg2, 1, 160, 3, 0x3078300000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not auction[arg2 + arg1].field_1280:
        if arg3 + stor6 < stor6:
            revert with 0, 'SafeMath: addition overflow'
        stor6 += arg3
        if arg3 + revenueFor[address(arg5)] < revenueFor[address(arg5)]:
            revert with 0, 'SafeMath: addition overflow'
        revenueFor[address(arg5)] += arg3
        if arg3 + revenueFor[stor18[arg2 + arg1].field_0] < revenueFor[stor18[arg2 + arg1].field_0]:
            revert with 0, 'SafeMath: addition overflow'
        revenueFor[stor18[arg2 + arg1].field_0] += arg3
        if not stor20[address(arg5)]:
            stor20[address(arg5)] = block.timestamp
        if not stor20[stor18[arg2 + arg1].field_0]:
            stor20[stor18[arg2 + arg1].field_0] = block.timestamp
        emit 0xe3d4bf61: arg2, arg3, auction[arg2 + arg1].field_768, arg4, arg5, auction[arg2 + arg1].field_0, 1, bool(auction[arg2 + arg1].field_1280), arg1
    else:
        require ext_code.size(stor13)
        staticcall stor13.0xe3bbb565 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x8e15f473 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not 10^uint8(ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] / 10^uint8(ext_call.return_data[32]):
            revert with 0, 'SafeMath: division by zero'
        if (arg3 / ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])) + stor6 < stor6:
            revert with 0, 'SafeMath: addition overflow'
        stor6 += arg3 / ext_call.return_data[0] / 10^uint8(ext_call.return_data[32])
        if arg3 + revenueFor[address(arg5)] < revenueFor[address(arg5)]:
            revert with 0, 'SafeMath: addition overflow'
        revenueFor[address(arg5)] += arg3
        if arg3 + revenueFor[stor18[arg2 + arg1].field_0] < revenueFor[stor18[arg2 + arg1].field_0]:
            revert with 0, 'SafeMath: addition overflow'
        revenueFor[stor18[arg2 + arg1].field_0] += arg3
        if not stor20[address(arg5)]:
            stor20[address(arg5)] = block.timestamp
        if not stor20[stor18[arg2 + arg1].field_0]:
            stor20[stor18[arg2 + arg1].field_0] = block.timestamp
        emit 0xe3d4bf61: arg2, arg3, auction[arg2 + arg1].field_768, arg4, address(arg5), auction[arg2 + arg1].field_0, 1, bool(auction[arg2 + arg1].field_1280), arg1
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    auction[arg2 + arg1].field_0 = 0
    auction[arg2 + arg1].field_256 = 0
    auction[arg2 + arg1].field_512 = 0
    auction[arg2 + arg1].field_768 = 0
    auction[arg2 + arg1].field_1024 = 0
    auction[arg2 + arg1].field_1280 = 0
    if arg2 + auction[arg2 + arg1].field_0 < auction[arg2 + arg1].field_0:
        revert with 0, 'SafeMath: addition overflow'
    seller[arg2 + stor18[arg2 + arg1].field_0] = 0
    if stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0:
        require stor19[address(arg1)].field_0 - 1 < stor19[address(arg1)].field_0
        require stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0 - 1 < stor19[address(arg1)].field_0
        stor19[address(arg1)][stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0].field_0 = stor19[address(arg1)][stor19[address(arg1)].field_0].field_0
        require stor19[address(arg1)].field_0
        stor19[address(arg1)][stor19[address(arg1)].field_0].field_0 = 0
        stor19[address(arg1)].field_0--
        require stor19[address(arg1)].field_0 - 1 < stor19[address(arg1)].field_256
        require stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0 - 1 < stor19[address(arg1)].field_256
        stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0].field_0 = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19))) + stor19[address(arg1)].field_0].field_0
        require stor19[address(arg1)].field_256
        stor[stor19[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0 = 0
        stor19[address(arg1)].field_256--
        stor19[address(arg1)][2][stor19[address(arg1)][stor19[address(arg1)].field_0].field_0].field_0 = stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0
        stor19[address(arg1)][2][arg2 + stor18[arg2 + arg1].field_0].field_0 = 0
    return 1, 0, auction[arg2 + arg1].field_0, bool(auction[arg2 + arg1].field_1280)
}

function checkTokensForClaim(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not revenueFor[address(arg1)]:
        return 0
    if arg2 * revenueFor[address(arg1)] / revenueFor[address(arg1)] != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg2 * revenueFor[address(arg1)]:
        return 0
    if stor20[address(arg1)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if 672 * 24 * 3600 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor22[address(arg1)] > block.timestamp - (672 * 24 * 3600):
        return 0, arg2 * revenueFor[address(arg1)], 0, block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args stor11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor6:
        if not stor23:
            if not stor24:
                if stor25:
                    if 10^18 * stor25 / stor25 != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            else:
                if 10^18 * stor24 / stor24 != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if 0 >= 10^18 * stor24:
                    if stor25:
                        if 10^18 * stor25 / stor25 != 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        else:
            if 10^18 * stor23 / stor23 != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if 0 >= 10^18 * stor23:
                if not stor24:
                    if stor25:
                        if 10^18 * stor25 / stor25 != 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                else:
                    if 10^18 * stor24 / stor24 != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if 0 >= 10^18 * stor24:
                        if stor25:
                            if 10^18 * stor25 / stor25 != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if arg2 * revenueFor[address(arg1)]:
            if 10000 * arg2 * revenueFor[address(arg1)] / arg2 * revenueFor[address(arg1)] != 10000:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        revert with 0, 'SafeMath: division by zero'
    if arg2 * stor6 / stor6 != arg2:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not stor23:
        if arg2 * stor6 < 0:
            if not arg2 * revenueFor[address(arg1)]:
                if not arg2 * stor6:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] / 10000:
                    return 0, arg2 * revenueFor[address(arg1)], 0 / arg2 * stor6, block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if 0 / arg2 * stor6 * ext_call.return_data[0] / 10000 / ext_call.return_data[0] / 10000 != 0 / arg2 * stor6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if block.timestamp - stor20[address(arg1)] >= 672 * 24 * 3600:
                    return 0 / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000, 
                           arg2 * revenueFor[address(arg1)],
                           0 / arg2 * stor6,
                           block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if not 0 / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000:
                    return 0, arg2 * revenueFor[address(arg1)], 0 / arg2 * stor6, block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if 11 * 0 / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000 / 0 / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000 != 11:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return 11 * 0 / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000 / 10, 
                       arg2 * revenueFor[address(arg1)],
                       0 / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 10000 * arg2 * revenueFor[address(arg1)] / arg2 * revenueFor[address(arg1)] != 10000:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not arg2 * stor6:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] / 10000:
                return 0, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10000 / ext_call.return_data[0] / 10000 != 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if block.timestamp - stor20[address(arg1)] >= 672 * 24 * 3600:
                return 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if not 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000:
                return 0, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 11 * 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000 / 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000 != 11:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return 11 * 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000 / 10, 
                   arg2 * revenueFor[address(arg1)],
                   10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                   block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
    else:
        if 10^18 * stor23 / stor23 != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if arg2 * stor6 < 10^18 * stor23:
            if not arg2 * revenueFor[address(arg1)]:
                if not arg2 * stor6:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] / 10000:
                    return 0, arg2 * revenueFor[address(arg1)], 0 / arg2 * stor6, block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if 0 / arg2 * stor6 * ext_call.return_data[0] / 10000 / ext_call.return_data[0] / 10000 != 0 / arg2 * stor6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if block.timestamp - stor20[address(arg1)] >= 672 * 24 * 3600:
                    return 0 / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000, 
                           arg2 * revenueFor[address(arg1)],
                           0 / arg2 * stor6,
                           block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if not 0 / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000:
                    return 0, arg2 * revenueFor[address(arg1)], 0 / arg2 * stor6, block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if 11 * 0 / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000 / 0 / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000 != 11:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return 11 * 0 / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000 / 10, 
                       arg2 * revenueFor[address(arg1)],
                       0 / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 10000 * arg2 * revenueFor[address(arg1)] / arg2 * revenueFor[address(arg1)] != 10000:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not arg2 * stor6:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] / 10000:
                return 0, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10000 / ext_call.return_data[0] / 10000 != 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if block.timestamp - stor20[address(arg1)] >= 672 * 24 * 3600:
                return 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if not 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000:
                return 0, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 11 * 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000 / 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000 != 11:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return 11 * 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10000 / 10000 / 10, 
                   arg2 * revenueFor[address(arg1)],
                   10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                   block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
    if not stor24:
        if arg2 * stor6 < 0:
            if not arg2 * revenueFor[address(arg1)]:
                if not arg2 * stor6:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] / 1000:
                    return 0, arg2 * revenueFor[address(arg1)], 0 / arg2 * stor6, block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if 0 / arg2 * stor6 * ext_call.return_data[0] / 1000 / ext_call.return_data[0] / 1000 != 0 / arg2 * stor6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if block.timestamp - stor20[address(arg1)] >= 672 * 24 * 3600:
                    return 0 / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000, 
                           arg2 * revenueFor[address(arg1)],
                           0 / arg2 * stor6,
                           block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if not 0 / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000:
                    return 0, arg2 * revenueFor[address(arg1)], 0 / arg2 * stor6, block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if 11 * 0 / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000 / 0 / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000 != 11:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return 11 * 0 / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000 / 10, 
                       arg2 * revenueFor[address(arg1)],
                       0 / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 10000 * arg2 * revenueFor[address(arg1)] / arg2 * revenueFor[address(arg1)] != 10000:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not arg2 * stor6:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] / 1000:
                return 0, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 1000 / ext_call.return_data[0] / 1000 != 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if block.timestamp - stor20[address(arg1)] >= 672 * 24 * 3600:
                return 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if not 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000:
                return 0, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 11 * 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000 / 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000 != 11:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return 11 * 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000 / 10, 
                   arg2 * revenueFor[address(arg1)],
                   10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                   block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
    else:
        if 10^18 * stor24 / stor24 != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if arg2 * stor6 < 10^18 * stor24:
            if not arg2 * revenueFor[address(arg1)]:
                if not arg2 * stor6:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] / 1000:
                    return 0, arg2 * revenueFor[address(arg1)], 0 / arg2 * stor6, block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if 0 / arg2 * stor6 * ext_call.return_data[0] / 1000 / ext_call.return_data[0] / 1000 != 0 / arg2 * stor6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if block.timestamp - stor20[address(arg1)] >= 672 * 24 * 3600:
                    return 0 / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000, 
                           arg2 * revenueFor[address(arg1)],
                           0 / arg2 * stor6,
                           block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if not 0 / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000:
                    return 0, arg2 * revenueFor[address(arg1)], 0 / arg2 * stor6, block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if 11 * 0 / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000 / 0 / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000 != 11:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return 11 * 0 / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000 / 10, 
                       arg2 * revenueFor[address(arg1)],
                       0 / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 10000 * arg2 * revenueFor[address(arg1)] / arg2 * revenueFor[address(arg1)] != 10000:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not arg2 * stor6:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] / 1000:
                return 0, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 1000 / ext_call.return_data[0] / 1000 != 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if block.timestamp - stor20[address(arg1)] >= 672 * 24 * 3600:
                return 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if not 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000:
                return 0, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 11 * 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000 / 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000 != 11:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return 11 * 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 1000 / 10000 / 10, 
                   arg2 * revenueFor[address(arg1)],
                   10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                   block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
    if not stor25:
        if arg2 * stor6 >= 0:
            if not arg2 * revenueFor[address(arg1)]:
                if not arg2 * stor6:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] / 10:
                    return 0, arg2 * revenueFor[address(arg1)], 0 / arg2 * stor6, block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if 0 / arg2 * stor6 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 0 / arg2 * stor6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if block.timestamp - stor20[address(arg1)] >= 672 * 24 * 3600:
                    return 0 / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000, 
                           arg2 * revenueFor[address(arg1)],
                           0 / arg2 * stor6,
                           block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if not 0 / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000:
                    return 0, arg2 * revenueFor[address(arg1)], 0 / arg2 * stor6, block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if 11 * 0 / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000 / 0 / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000 != 11:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return 11 * 0 / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000 / 10, 
                       arg2 * revenueFor[address(arg1)],
                       0 / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 10000 * arg2 * revenueFor[address(arg1)] / arg2 * revenueFor[address(arg1)] != 10000:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not arg2 * stor6:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] / 10:
                return 0, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if block.timestamp - stor20[address(arg1)] >= 672 * 24 * 3600:
                return 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if not 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000:
                return 0, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 11 * 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000 / 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000 != 11:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return 11 * 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000 / 10, 
                   arg2 * revenueFor[address(arg1)],
                   10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                   block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
    else:
        if 10^18 * stor25 / stor25 != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if arg2 * stor6 >= 10^18 * stor25:
            if not arg2 * revenueFor[address(arg1)]:
                if not arg2 * stor6:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] / 10:
                    return 0, arg2 * revenueFor[address(arg1)], 0 / arg2 * stor6, block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if 0 / arg2 * stor6 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 0 / arg2 * stor6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if block.timestamp - stor20[address(arg1)] >= 672 * 24 * 3600:
                    return 0 / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000, 
                           arg2 * revenueFor[address(arg1)],
                           0 / arg2 * stor6,
                           block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if not 0 / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000:
                    return 0, arg2 * revenueFor[address(arg1)], 0 / arg2 * stor6, block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
                if 11 * 0 / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000 / 0 / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000 != 11:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return 11 * 0 / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000 / 10, 
                       arg2 * revenueFor[address(arg1)],
                       0 / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 10000 * arg2 * revenueFor[address(arg1)] / arg2 * revenueFor[address(arg1)] != 10000:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not arg2 * stor6:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] / 10:
                return 0, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10 / ext_call.return_data[0] / 10 != 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if block.timestamp - stor20[address(arg1)] >= 672 * 24 * 3600:
                return 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if not 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000:
                return 0, 
                       arg2 * revenueFor[address(arg1)],
                       10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                       block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
            if 11 * 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000 / 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000 != 11:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return 11 * 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 10 / 10000 / 10, 
                   arg2 * revenueFor[address(arg1)],
                   10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
                   block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
    if not arg2 * revenueFor[address(arg1)]:
        if not arg2 * stor6:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0] / 30:
            return 0, arg2 * revenueFor[address(arg1)], 0 / arg2 * stor6, block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
        if 0 / arg2 * stor6 * ext_call.return_data[0] / 30 / ext_call.return_data[0] / 30 != 0 / arg2 * stor6:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if block.timestamp - stor20[address(arg1)] >= 672 * 24 * 3600:
            return 0 / arg2 * stor6 * ext_call.return_data[0] / 30 / 10000, 
                   arg2 * revenueFor[address(arg1)],
                   0 / arg2 * stor6,
                   block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
        if not 0 / arg2 * stor6 * ext_call.return_data[0] / 30 / 10000:
            return 0, arg2 * revenueFor[address(arg1)], 0 / arg2 * stor6, block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
        if 11 * 0 / arg2 * stor6 * ext_call.return_data[0] / 30 / 10000 / 0 / arg2 * stor6 * ext_call.return_data[0] / 30 / 10000 != 11:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        return 11 * 0 / arg2 * stor6 * ext_call.return_data[0] / 30 / 10000 / 10, 
               arg2 * revenueFor[address(arg1)],
               0 / arg2 * stor6,
               block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
    if 10000 * arg2 * revenueFor[address(arg1)] / arg2 * revenueFor[address(arg1)] != 10000:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not arg2 * stor6:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0] / 30:
        return 0, 
               arg2 * revenueFor[address(arg1)],
               10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
               block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
    if 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 30 / ext_call.return_data[0] / 30 != 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if block.timestamp - stor20[address(arg1)] >= 672 * 24 * 3600:
        return 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 30 / 10000, 
               arg2 * revenueFor[address(arg1)],
               10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
               block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
    if not 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 30 / 10000:
        return 0, 
               arg2 * revenueFor[address(arg1)],
               10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
               block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
    if 11 * 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 30 / 10000 / 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 30 / 10000 != 11:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    return 11 * 10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6 * ext_call.return_data[0] / 30 / 10000 / 10, 
           arg2 * revenueFor[address(arg1)],
           10000 * arg2 * revenueFor[address(arg1)] / arg2 * stor6,
           block.timestamp - stor20[address(arg1)] < 672 * 24 * 3600
}



}
