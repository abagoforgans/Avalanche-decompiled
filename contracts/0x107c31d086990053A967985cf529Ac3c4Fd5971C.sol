contract main {




// =====================  Runtime code  =====================


#
#  - buyNFT(uint256 arg1)
#
uint256 stor0;
address owner;
array of struct whitelistedCollection;
mapping of uint256 stor3;
array of struct whitelistedToken;
mapping of uint256 stor5;
array of uint256 categories;
mapping of uint256 creatorRate;
mapping of address creators;
mapping of uint256 collectionCategory;
array of struct sale;
address baseTokenAddress;
address sub_54b209a7Address;
uint256 sub_4e8924f6;
uint256 sub_7860b15b;
address sub_2bd2bfe0Address;
uint256 onSaleNftAmount;
uint256 categoryLength;
uint256 numCollections;

function creatorRate(address arg1) {
    require calldata.size - 4 >= 32
    return creatorRate[arg1]
}

function sub_2bd2bfe0(?) {
    return sub_2bd2bfe0Address
}

function sub_4e8924f6(?) {
    return sub_4e8924f6
}

function sub_54b209a7(?) {
    return sub_54b209a7Address
}

function sub_7860b15b(?) {
    return sub_7860b15b
}

function isWhitelistedCollection(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function owner() {
    return owner
}

function creators(address arg1) {
    require calldata.size - 4 >= 32
    return creators[arg1]
}

function getWhitelistedToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= whitelistedToken.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x21456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return whitelistedToken[arg1].field_0
}

function collectionCategory(address arg1) {
    require calldata.size - 4 >= 32
    return collectionCategory[arg1]
}

function isWhitelistedToken(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function onSaleNftAmount() {
    return onSaleNftAmount
}

function baseToken() {
    return baseTokenAddress
}

function getWhitelistedCollection(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= whitelistedCollection.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x21456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return whitelistedCollection[arg1].field_0
}

function categories(uint256 arg1) {
    return categories[arg1][0 len categories[arg1].length]
}

function getSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= sale.length:
        revert with 0, 'Out of array'
    if not sale[arg1].field_1280:
        revert with 0, 'This sale not active'
    require arg1 < sale.length
    return sale[arg1].field_0, 
           sale[arg1].field_512,
           sale[arg1].field_768,
           sale[arg1].field_1024,
           sale[arg1].field_1280,
           sale[arg1].field_1536,
           sale[arg1].field_256
}

function numCollections() {
    return numCollections
}

function categoryLength() {
    return categoryLength
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_513e7c39(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sale.length:
        revert with 0, 'Out of array'
    if not sale[arg1].field_1280:
        revert with 0, 'This sale not active'
    require arg1 < sale.length
    if sale[arg1].field_768 != baseTokenAddress:
        return sub_7860b15b
    return sub_4e8924f6
}

function sub_12be8ce4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 == sub_4e8924f6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x644e657720636f6d6d697373696f6e206d757374206265206469666665726e742066726f6d206f6c64206f6e,
                    mem[208 len 20]
    sub_4e8924f6 = arg1
}

function sub_b63ebc35(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 == sub_7860b15b:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x644e657720636f6d6d697373696f6e206d757374206265206469666665726e742066726f6d206f6c64206f6e,
                    mem[208 len 20]
    sub_7860b15b = arg1
}

function sub_6f143d0e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if sub_2bd2bfe0Address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x734e657720636f6d6d697373696f6e2074616b6572206d757374206265206469666665726e742066726f6d206f6c64206f6e,
                    mem[214 len 14]
    sub_2bd2bfe0Address = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateCreatorRate(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x79757064617465416d6f756e743a20636f6c6c656374696f6e206e6f742077686974656c69737465,
                    mem[204 len 24]
    creatorRate[address(arg1)] = arg2
}

function addNewCategory(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1.length:
        categories[stor17 + 1][] = Array(len=arg1.length, data=arg1[all])
    else:
        categories[stor17 + 1] = 0
        idx = 0
        while categories[stor17 + 1].length + 31 / 32 > idx:
            categories[stor17 + 1][idx] = 0
            idx = idx + 1
            continue 
    categoryLength++
}

function getCreatorRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= sale.length:
        revert with 0, 'Out of array'
    if not sale[arg1].field_1280:
        revert with 0, 'This sale not active'
    require arg1 < sale.length
    if sale[arg1].field_0 != sub_54b209a7Address:
        return creatorRate[stor10[arg1].field_0]
    require arg1 < sale.length
    require ext_code.size(sub_54b209a7Address)
    staticcall sub_54b209a7Address.0x4aedd26a with:
            gas gas_remaining wei
           args sale[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function removeNFT(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg1 >= sale.length:
        revert with 0, 'Out of array length'
    if sale[arg1].field_1280 != msg.sender:
        revert with 0, 'You must be seller of this NFT'
    require arg1 < sale.length
    require ext_code.size(sale[arg1].field_0)
    call sale[arg1].field_0.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, sale[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < sale.length
    sale[arg1].field_0 = 0
    sale[arg1].field_256 = 0
    sale[arg1].field_512 = 0
    sale[arg1].field_768 = 0
    sale[arg1].field_1024 = 0
    sale[arg1].field_1280 = 0
    sale[arg1].field_1536 = 0
    onSaleNftAmount--
    emit TokenRemovedFromSale(arg1);
    stor0 = 1
}

function removeWhitelistedToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x7772656d6f766557686974656c6973746564546f6b656e3a20546f6b656e206e6f742077686974656c69737465,
                    mem[209 len 19]
    if stor5[address(arg1)]:
        require whitelistedToken.length - 1 < whitelistedToken.length
        require stor5[address(arg1)] - 1 < whitelistedToken.length
        whitelistedToken[stor5[address(arg1)]].field_0 = whitelistedToken[whitelistedToken.length].field_0
        stor5[stor4[stor4.length].field_0] = stor5[address(arg1)]
        require whitelistedToken.length
        whitelistedToken[whitelistedToken.length].field_0 = 0
        whitelistedToken.length--
        stor5[address(arg1)] = 0
}

function addWhitelistedToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x7361646457686974656c6973746564546f6b656e3a20546f6b656e2063616e6e6f7420626520746865207a65726f20616464726573,
                    mem[217 len 11]
    if stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6c61646457686974656c6973746564546f6b656e3a20546f6b656e20616c72656164792077686974656c69737465,
                    mem[210 len 18]
    if not stor5[address(arg1)]:
        whitelistedToken.length++
        whitelistedToken[whitelistedToken.length].field_0 = arg1
        whitelistedToken[whitelistedToken.length].field_160 = 0
        stor5[address(arg1)] = whitelistedToken.length
}

function removeWhitelistedCollection(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x7272656d6f766557686974656c6973746564436f6c6c656374696f6e3a20636f6c6c656374696f6e206e6f742077686974656c69737465,
                    mem[219 len 9]
    if stor3[address(arg1)]:
        require whitelistedCollection.length - 1 < whitelistedCollection.length
        require stor3[address(arg1)] - 1 < whitelistedCollection.length
        whitelistedCollection[stor3[address(arg1)]].field_0 = whitelistedCollection[whitelistedCollection.length].field_0
        stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
        require whitelistedCollection.length
        whitelistedCollection[whitelistedCollection.length].field_0 = 0
        whitelistedCollection.length--
        stor3[address(arg1)] = 0
    creatorRate[address(arg1)] = 0
    collectionCategory[address(arg1)] = 0
    if 1 > numCollections:
        revert with 0, 'SafeMath: subtraction overflow'
    numCollections--
}

function addWhitelistedCollection(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    71,
                    0x6461646457686974656c6973746564436f6c6c656374696f6e3a20636f6c6c656374696f6e436f6e74726163742063616e6e6f7420626520746865207a65726f20616464726573,
                    mem[235 len 25]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    71,
                    0x6461646457686974656c6973746564436f6c6c656374696f6e3a20636f6c6c656374696f6e436f6e74726163742063616e6e6f7420626520746865207a65726f20616464726573,
                    mem[235 len 25]
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6561646457686974656c6973746564436f6c6c656374696f6e3a20636f6c6c656374696f6e20616c72656164792077686974656c69737465,
                    mem[220 len 8]
    if arg4 > categoryLength:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6461646457686974656c6973746564436f6c6c656374696f6e3a204e6f74206c69737465642063617465676f72,
                    mem[209 len 19]
    if not stor3[address(arg1)]:
        whitelistedCollection.length++
        whitelistedCollection[whitelistedCollection.length].field_0 = arg1
        whitelistedCollection[whitelistedCollection.length].field_160 = 0
        stor3[address(arg1)] = whitelistedCollection.length
    creators[address(arg1)] = arg2
    creatorRate[address(arg1)] = arg3
    collectionCategory[address(arg1)] = arg4
    if numCollections + 1 < numCollections:
        revert with 0, 'SafeMath: addition overflow'
    numCollections++
}

function saleNFT(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not stor3[address(arg1)]:
        if sub_54b209a7Address != arg1:
            revert with 0, 'Collection not whitelisted!'
    if not stor5[address(arg3)]:
        if arg3:
            revert with 0, 'Token not whitelisted!'
    require ext_code.size(arg1)
    staticcall arg1.getApproved(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    67,
                    0xfe4e6f20617070726f766520666f72206e667420666972737420796f75206e65656420746f206769766520617070726f766520746f207468697320636f6e7472616374,
                    mem[231 len 29]
    if arg5 > categoryLength:
        revert with 0, 'Not active category!'
    if arg4 <= 0:
        revert with 0, '_price amount must bigger than 0'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_54b209a7Address != arg1:
        sale.length++
        sale[sale.length].field_0 = arg1
        sale[sale.length].field_256 = creators[address(arg1)]
        sale[sale.length].field_512 = arg2
        sale[sale.length].field_768 = arg3
        sale[sale.length].field_1024 = arg4
        sale[sale.length].field_1280 = msg.sender
        if not stor3[address(arg1)]:
            sale[sale.length].field_1536 = arg5
            onSaleNftAmount++
            emit 0x9dc49d0c: msg.sender, address(arg1), creators[address(arg1)], arg2, address(arg3), arg4, arg5, sale.length - 1
        else:
            sale[sale.length].field_1536 = collectionCategory[address(arg1)]
            onSaleNftAmount++
            emit 0x9dc49d0c: msg.sender, address(arg1), creators[address(arg1)], arg2, address(arg3), arg4, collectionCategory[address(arg1)], sale.length - 1
    else:
        require ext_code.size(arg1)
        staticcall arg1.0xcd53d08e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sale.length++
        sale[sale.length].field_0 = arg1
        sale[sale.length].field_256 = address(ext_call.return_data[0])
        sale[sale.length].field_512 = arg2
        sale[sale.length].field_768 = arg3
        sale[sale.length].field_1024 = arg4
        sale[sale.length].field_1280 = msg.sender
        if not stor3[address(arg1)]:
            sale[sale.length].field_1536 = arg5
            onSaleNftAmount++
            emit 0x9dc49d0c: msg.sender, address(arg1), address(ext_call.return_data[0]), arg2, address(arg3), arg4, arg5, sale.length - 1
        else:
            sale[sale.length].field_1536 = collectionCategory[address(arg1)]
            onSaleNftAmount++
            emit 0x9dc49d0c: msg.sender, address(arg1), address(ext_call.return_data[0]), arg2, address(arg3), arg4, collectionCategory[address(arg1)], sale.length - 1
    stor0 = 1
}

function buyNFTwithAvax(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg1 >= sale.length:
        revert with 0, 'Out of array length'
    if sale[arg1].field_768:
        revert with 0, 'Nft must be sellign with AVAX'
    require arg1 < sale.length
    if sale[arg1].field_1024 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x644d6573736167652076616c7565206d75737420626520657175616c2070726963,
                    mem[197 len 31]
    require arg1 < sale.length
    if not sale[arg1].field_1280:
        revert with 0, 'This sale not active'
    require arg1 < sale.length
    if sale[arg1].field_0 != sub_54b209a7Address:
        if not sale[arg1].field_1024:
            if not sale[arg1].field_1024:
                if 0 > sale[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sale[arg1].field_1024 <= 0:
                    revert with 0, 'Seller amount must bigger than 0'
                call sale[arg1].field_1280 with:
                   value sale[arg1].field_1024 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if creatorRate[stor10[arg1].field_0] * sale[arg1].field_1024 / sale[arg1].field_1024 != creatorRate[stor10[arg1].field_0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                if 0 > sale[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if creatorRate[stor10[arg1].field_0] * sale[arg1].field_1024 / 100 > sale[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sale[arg1].field_1024 - (creatorRate[stor10[arg1].field_0] * sale[arg1].field_1024 / 100) <= 0:
                    revert with 0, 'Seller amount must bigger than 0'
                if not creatorRate[stor10[arg1].field_0] * sale[arg1].field_1024 / 100:
                    call sale[arg1].field_1280 with:
                       value sale[arg1].field_1024 - (creatorRate[stor10[arg1].field_0] * sale[arg1].field_1024 / 100) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call sale[arg1].field_256 with:
                       value creatorRate[stor10[arg1].field_0] * sale[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call sale[arg1].field_1280 with:
                       value sale[arg1].field_1024 - (creatorRate[stor10[arg1].field_0] * sale[arg1].field_1024 / 100) wei
                         gas 2300 * is_zero(value) wei
        else:
            if sub_7860b15b * sale[arg1].field_1024 / sale[arg1].field_1024 != sub_7860b15b:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
            if not sale[arg1].field_1024:
                if sub_7860b15b * sale[arg1].field_1024 / 100 > sale[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > sale[arg1].field_1024 - (sub_7860b15b * sale[arg1].field_1024 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if sale[arg1].field_1024 - (sub_7860b15b * sale[arg1].field_1024 / 100) <= 0:
                    revert with 0, 'Seller amount must bigger than 0'
                if sub_7860b15b * sale[arg1].field_1024 / 100:
                    call sub_2bd2bfe0Address with:
                       value sub_7860b15b * sale[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call sale[arg1].field_1280 with:
                   value sale[arg1].field_1024 - (sub_7860b15b * sale[arg1].field_1024 / 100) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if creatorRate[stor10[arg1].field_0] * sale[arg1].field_1024 / sale[arg1].field_1024 != creatorRate[stor10[arg1].field_0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                if sub_7860b15b * sale[arg1].field_1024 / 100 > sale[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if creatorRate[stor10[arg1].field_0] * sale[arg1].field_1024 / 100 > sale[arg1].field_1024 - (sub_7860b15b * sale[arg1].field_1024 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if sale[arg1].field_1024 - (sub_7860b15b * sale[arg1].field_1024 / 100) - (creatorRate[stor10[arg1].field_0] * sale[arg1].field_1024 / 100) <= 0:
                    revert with 0, 'Seller amount must bigger than 0'
                if sub_7860b15b * sale[arg1].field_1024 / 100:
                    call sub_2bd2bfe0Address with:
                       value sub_7860b15b * sale[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if not creatorRate[stor10[arg1].field_0] * sale[arg1].field_1024 / 100:
                    call sale[arg1].field_1280 with:
                       value sale[arg1].field_1024 - (sub_7860b15b * sale[arg1].field_1024 / 100) - (creatorRate[stor10[arg1].field_0] * sale[arg1].field_1024 / 100) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call sale[arg1].field_256 with:
                       value creatorRate[stor10[arg1].field_0] * sale[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call sale[arg1].field_1280 with:
                       value sale[arg1].field_1024 - (sub_7860b15b * sale[arg1].field_1024 / 100) - (creatorRate[stor10[arg1].field_0] * sale[arg1].field_1024 / 100) wei
                         gas 2300 * is_zero(value) wei
    else:
        require arg1 < sale.length
        require ext_code.size(sub_54b209a7Address)
        staticcall sub_54b209a7Address.0x4aedd26a with:
                gas gas_remaining wei
               args sale[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sale[arg1].field_1024:
            if not sale[arg1].field_1024:
                if 0 > sale[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sale[arg1].field_1024 <= 0:
                    revert with 0, 'Seller amount must bigger than 0'
                call sale[arg1].field_1280 with:
                   value sale[arg1].field_1024 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if ext_call.return_data[0] * sale[arg1].field_1024 / sale[arg1].field_1024 != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                if 0 > sale[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] * sale[arg1].field_1024 / 100 > sale[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sale[arg1].field_1024 - (ext_call.return_data[0] * sale[arg1].field_1024 / 100) <= 0:
                    revert with 0, 'Seller amount must bigger than 0'
                if not ext_call.return_data[0] * sale[arg1].field_1024 / 100:
                    call sale[arg1].field_1280 with:
                       value sale[arg1].field_1024 - (ext_call.return_data[0] * sale[arg1].field_1024 / 100) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call sale[arg1].field_256 with:
                       value ext_call.return_data[0] * sale[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call sale[arg1].field_1280 with:
                       value sale[arg1].field_1024 - (ext_call.return_data[0] * sale[arg1].field_1024 / 100) wei
                         gas 2300 * is_zero(value) wei
        else:
            if sub_7860b15b * sale[arg1].field_1024 / sale[arg1].field_1024 != sub_7860b15b:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
            if not sale[arg1].field_1024:
                if sub_7860b15b * sale[arg1].field_1024 / 100 > sale[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > sale[arg1].field_1024 - (sub_7860b15b * sale[arg1].field_1024 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if sale[arg1].field_1024 - (sub_7860b15b * sale[arg1].field_1024 / 100) <= 0:
                    revert with 0, 'Seller amount must bigger than 0'
                if sub_7860b15b * sale[arg1].field_1024 / 100:
                    call sub_2bd2bfe0Address with:
                       value sub_7860b15b * sale[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                call sale[arg1].field_1280 with:
                   value sale[arg1].field_1024 - (sub_7860b15b * sale[arg1].field_1024 / 100) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if ext_call.return_data[0] * sale[arg1].field_1024 / sale[arg1].field_1024 != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                if sub_7860b15b * sale[arg1].field_1024 / 100 > sale[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] * sale[arg1].field_1024 / 100 > sale[arg1].field_1024 - (sub_7860b15b * sale[arg1].field_1024 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if sale[arg1].field_1024 - (sub_7860b15b * sale[arg1].field_1024 / 100) - (ext_call.return_data[0] * sale[arg1].field_1024 / 100) <= 0:
                    revert with 0, 'Seller amount must bigger than 0'
                if sub_7860b15b * sale[arg1].field_1024 / 100:
                    call sub_2bd2bfe0Address with:
                       value sub_7860b15b * sale[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if not ext_call.return_data[0] * sale[arg1].field_1024 / 100:
                    call sale[arg1].field_1280 with:
                       value sale[arg1].field_1024 - (sub_7860b15b * sale[arg1].field_1024 / 100) - (ext_call.return_data[0] * sale[arg1].field_1024 / 100) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call sale[arg1].field_256 with:
                       value ext_call.return_data[0] * sale[arg1].field_1024 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call sale[arg1].field_1280 with:
                       value sale[arg1].field_1024 - (sub_7860b15b * sale[arg1].field_1024 / 100) - (ext_call.return_data[0] * sale[arg1].field_1024 / 100) wei
                         gas 2300 * is_zero(value) wei
    require ext_code.size(sale[arg1].field_0)
    call sale[arg1].field_0.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, sale[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < sale.length
    sale[arg1].field_0 = 0
    sale[arg1].field_256 = 0
    sale[arg1].field_512 = 0
    sale[arg1].field_768 = 0
    sale[arg1].field_1024 = 0
    sale[arg1].field_1280 = 0
    sale[arg1].field_1536 = 0
    onSaleNftAmount--
    emit TokenSold(msg.sender, arg1);
    stor0 = 1
}



}
