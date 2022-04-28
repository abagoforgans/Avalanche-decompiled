contract main {




// =====================  Runtime code  =====================


#
#  - liquidateVault(uint256 arg1)
#
uint8 stor0;
mapping of uint8 stor1;
mapping of uint32 ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor5;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
array of uint256 name;
array of uint256 symbol;
array of uint256 baseURI;
mapping of bool stor13;
array of uint256 uri;
address ethPriceSourceAddress;
uint256 sub_e5f4dc92;
uint256 vaultCount;
uint256 closingFee;
uint256 openingFee;
uint256 treasury;
uint256 tokenPeg;
mapping of struct vaultCollateral;
mapping of uint256 vaultDebt;
uint256 debtRatio;
uint256 gainRatio;
address stabilityPoolAddress;
address collateralAddress;
address sub_570b2b84Address;
uint256 sub_c71abb32;
uint256 totalBorrowed;
mapping of struct sub_b165ff0b;
address owner;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[Mask(32, 224, arg1)])
}

function stabilityPool() payable {
    return stabilityPoolAddress
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function closingFee() payable {
    return closingFee
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6b4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe455243373231456e756d657261626c653a206f776e657220696e646578206f7574206f6620626f756e64,
                    mem[207 len 21]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function gainRatio() payable {
    return gainRatio
}

function ethPriceSource() payable {
    return ethPriceSourceAddress
}

function totalBorrowed() payable {
    return totalBorrowed
}

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(address(ownerOf[arg1]))
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x64455243373231456e756d657261626c653a20676c6f62616c20696e646578206f7574206f6620626f756e64,
                    mem[208 len 20]
    return tokenByIndex[arg1]
}

function sub_570b2b84(?) payable {
    return sub_570b2b84Address
}

function treasury() payable {
    return treasury
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    return address(ownerOf[arg1])
}

function baseURI() payable {
    return baseURI[0 len baseURI.length]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6b4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return balanceOf[address(arg1)]
}

function openingFee() payable {
    return openingFee
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function getClosingFee() payable {
    return closingFee
}

function vaultCount() payable {
    return vaultCount
}

function getOpeningFee() payable {
    return openingFee
}

function sub_b165ff0b(?) payable {
    require calldata.size - 4 >= 32
    return sub_b165ff0b[arg1].field_0
}

function sub_c71abb32(?) payable {
    return sub_c71abb32
}

function tokenURI(uint256 arg1) payable {
    return uri[0 len uri.length]
}

function getTokenPriceSource() payable {
    return tokenPeg
}

function tokenPeg() payable {
    return tokenPeg
}

function debtRatio() payable {
    return debtRatio
}

function vaultDebt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vaultDebt[arg1]
}

function vaultCollateral(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vaultCollateral[arg1].field_0
}

function collateral() payable {
    return collateralAddress
}

function sub_e5f4dc92(?) payable {
    return sub_e5f4dc92
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function uri() payable {
    return uri[0 len uri.length]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDebtRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    debtRatio = arg1
}

function setGainRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    gainRatio = arg1
}

function setClosingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    closingFee = arg1
}

function setOpeningFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    openingFee = arg1
}

function setMinCollateralRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e5f4dc92 = arg1
}

function setStabilityPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stabilityPoolAddress = arg1
}

function changeEthPriceSource(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ethPriceSourceAddress = arg1
}

function setTreasury(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(ownerOf[arg1]):
        revert with 0, 'Vault does not exist'
    treasury = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function getEthPriceSource() payable {
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[32]
}

function getDebtCeiling() payable {
    require ext_code.size(sub_570b2b84Address)
    staticcall sub_570b2b84Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setTokenURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uri[] = Array(len=arg1.length, data=arg1[all])
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_570b2b84Address)
    call sub_570b2b84Address.0xa9059cbb with:
         gas gas_remaining wei
        args 0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function createVault() payable {
    if vaultCount + 1 < vaultCount:
        revert with 0, 'SafeMath: addition overflow'
    vaultCount++
    require vaultCount <= vaultCount + 1
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if address(ownerOf[stor17]):
        revert with 0, 'ERC721: token already minted'
    address(ownerOf[stor17]) = msg.sender
    balanceOf[address(msg.sender)]++
    emit Transfer(0, msg.sender, vaultCount);
    stor7[stor17] = tokenOfOwnerByIndex[address(msg.sender)]
    tokenOfOwnerByIndex[address(msg.sender)]++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = vaultCount
    stor9[stor17] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = vaultCount
    emit CreateVault(vaultCount, msg.sender);
    return vaultCount
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if arg1 == address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x654552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                    mem[197 len 31]
    if address(ownerOf[arg2]) != msg.sender:
        if not stor5[address(stor2[arg2])][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x744552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[220 len 8]
    approved[arg2] = arg1
    emit Approval(address(ownerOf[arg2]), arg1, arg2);
}

function getPaid() payable {
    if not stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 0
    if not sub_b165ff0b[msg.sender].field_0:
        revert with 0, 'Don't have anything for you.'
    sub_b165ff0b[msg.sender].field_0 = 0
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(collateralAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, sub_b165ff0b[msg.sender].field_32
    call collateralAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args sub_b165ff0b[msg.sender].field_0, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    stor0 = 1
}

function depositCollateral(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(collateralAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[352 len 4] = uint32(arg2)
    call collateralAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(arg2),
                        mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            42,
                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
    if arg2 + vaultCollateral[arg1].field_0 < vaultCollateral[arg1].field_0:
        revert with 0, 'SafeMath: addition overflow'
    require arg2 + vaultCollateral[arg1].field_0 >= vaultCollateral[arg1].field_0
    vaultCollateral[arg1].field_0 += arg2
    emit DepositCollateral(arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if address(ownerOf[arg3]) != msg.sender:
        if not address(ownerOf[arg3]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[208 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[arg3])][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            49,
                            0x654552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[213 len 15]
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if address(ownerOf[arg3]) != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[205 len 23]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    if approved[arg3]:
        approved[arg3] = 0
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor7[arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function checkCollateralPercentage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
        revert with 0, 'Vault does not exist'
    if not vaultCollateral[arg1].field_0:
        return 0
    if not vaultDebt[arg1]:
        return 0
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[32]
    require tokenPeg
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_570b2b84Address)
    staticcall sub_570b2b84Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not vaultCollateral[arg1].field_0:
        require 0 >= vaultCollateral[arg1].field_0
        require vaultDebt[arg1]
        require tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if ext_call.return_data[32] * vaultCollateral[arg1].field_0 / vaultCollateral[arg1].field_0 != ext_call.return_data[32]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if not ext_call.return_data[32] * vaultCollateral[arg1].field_0:
        require 0 >= vaultCollateral[arg1].field_0
        require vaultDebt[arg1]
        require tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 10^0:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    require 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 >= vaultCollateral[arg1].field_0
    if not vaultDebt[arg1]:
        require 0 >= vaultDebt[arg1]
        if not 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
            if 0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
                revert with 0, 'SafeMath: division by zero'
        else:
            if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
                revert with 0, 'SafeMath: division by zero'
        revert
    if tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    require tokenPeg * vaultDebt[arg1] >= vaultDebt[arg1]
    if not 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
        require 0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
        if not tokenPeg * vaultDebt[arg1]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / tokenPeg * vaultDebt[arg1])
    if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 100:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    require 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
    if not tokenPeg * vaultDebt[arg1]:
        revert with 0, 'SafeMath: division by zero'
    return (100 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / tokenPeg * vaultDebt[arg1])
}

function checkLiquidation(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
        revert with 0, 'Vault does not exist'
    if not vaultCollateral[arg1].field_0:
        return 0
    if not vaultDebt[arg1]:
        return 0
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[32]
    require tokenPeg
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_570b2b84Address)
    staticcall sub_570b2b84Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not vaultCollateral[arg1].field_0:
        require 0 >= vaultCollateral[arg1].field_0
        require vaultDebt[arg1]
        require tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if ext_call.return_data[32] * vaultCollateral[arg1].field_0 / vaultCollateral[arg1].field_0 != ext_call.return_data[32]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if not ext_call.return_data[32] * vaultCollateral[arg1].field_0:
        require 0 >= vaultCollateral[arg1].field_0
        require vaultDebt[arg1]
        require tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 10^0:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    require 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 >= vaultCollateral[arg1].field_0
    if not vaultDebt[arg1]:
        require 0 >= vaultDebt[arg1]
        if not 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
            if 0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
                revert with 0, 'SafeMath: division by zero'
        else:
            if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
                revert with 0, 'SafeMath: division by zero'
        revert
    if tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    require tokenPeg * vaultDebt[arg1] >= vaultDebt[arg1]
    if not 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
        require 0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
        if not tokenPeg * vaultDebt[arg1]:
            revert with 0, 'SafeMath: division by zero'
        if 0 / tokenPeg * vaultDebt[arg1] >= sub_e5f4dc92:
            return 0
    else:
        if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        require 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
        if not tokenPeg * vaultDebt[arg1]:
            revert with 0, 'SafeMath: division by zero'
        if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / tokenPeg * vaultDebt[arg1] >= sub_e5f4dc92:
            return 0
    return 1
}

function destroyVault(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
        revert with 0, 'Vault does not exist'
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if address(ownerOf[arg1]) != msg.sender:
        revert with 0, 'Vault is not owned by you'
    if not stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 0
    if vaultDebt[arg1]:
        revert with 0, 'Vault has outstanding debt'
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if not vaultCollateral[arg1].field_0:
        if not address(ownerOf[arg1]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[205 len 23]
        if address(ownerOf[arg1]) != address(ownerOf[arg1]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x734552433732313a206275726e206f6620746f6b656e2074686174206973206e6f74206f77,
                        mem[201 len 27]
    else:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), vaultCollateral[arg1].field_32
        call collateralAddress with:
           funct uint32(ownerOf[arg1])
             gas gas_remaining wei
            args vaultCollateral[arg1].field_0, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                revert with 0, 32, 42, 0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
            if not address(ownerOf[arg1]):
                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[305 len 23]
            if not address(ownerOf[arg1]):
                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[305 len 23]
            if address(ownerOf[arg1]) != address(ownerOf[arg1]):
                revert with 0, 32, 37, 0x734552433732313a206275726e206f6620746f6b656e2074686174206973206e6f74206f77, mem[301 len 27]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
            if not address(ownerOf[arg1]):
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(return_data.size) + 306 len 23]
            if not address(ownerOf[arg1]):
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(return_data.size) + 306 len 23]
            if address(ownerOf[arg1]) != address(ownerOf[arg1]):
                revert with 0, 
                            32,
                            37,
                            0x734552433732313a206275726e206f6620746f6b656e2074686174206973206e6f74206f77,
                            mem[ceil32(return_data.size) + 302 len 27]
    ('eq', ('type', 160, ('stor', ('map', ('param', 'arg1'), ('name', 'ownerOf', 2)))), ('type', 160, ('stor', ('map', ('param', 'arg1'), ('name', 'ownerOf', 2)))))
    if approved[arg1]:
        approved[arg1] = 0
    if 1 > balanceOf[address(stor2[arg1])]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(stor2[arg1])]--
    address(ownerOf[arg1]) = 0
    emit Transfer(address(ownerOf[arg1]), 0, arg1);
    if 1 > tokenOfOwnerByIndex[address(stor2[arg1])]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[address(stor2[arg1])] - 1 != stor7[arg1]:
        require tokenOfOwnerByIndex[address(stor2[arg1])] - 1 < tokenOfOwnerByIndex[address(stor2[arg1])]
        require stor7[arg1] < tokenOfOwnerByIndex[address(stor2[arg1])]
        tokenOfOwnerByIndex[address(stor2[arg1])][stor7[arg1]] = tokenOfOwnerByIndex[address(stor2[arg1])][tokenOfOwnerByIndex[address(stor2[arg1])]]
        stor7[stor6[address(stor2[arg1])][stor6[address(stor2[arg1])]]] = stor7[arg1]
    tokenOfOwnerByIndex[address(stor2[arg1])]--
    if tokenOfOwnerByIndex[address(stor2[arg1])] > tokenOfOwnerByIndex[address(stor2[arg1])] - 1:
        idx = tokenOfOwnerByIndex[address(stor2[arg1])] - 1
        while tokenOfOwnerByIndex[address(stor2[arg1])] > idx:
            tokenOfOwnerByIndex[address(stor2[arg1])][idx] = 0
            idx = idx + 1
            continue 
    stor7[arg1] = 0
    if 1 > tokenByIndex.length:
        revert with 0, 'SafeMath: subtraction overflow'
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor9[arg1] < tokenByIndex.length
    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
    stor9[stor8[stor8.length]] = stor9[arg1]
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor9[arg1] = 0
    if Mask(255, 1, uint256(stor13[arg1]) and (256 * not bool(stor13[arg1])) - 1):
        uint256(stor13[arg1]) = 0
        if 31 < stor13[arg1].length:
            idx = 0
            while stor13[arg1].length + 31 / 32 > idx:
                uint256(stor13[arg1][idx]) = 0
                idx = idx + 1
                continue 
    vaultCollateral[arg1].field_0 = 0
    vaultDebt[arg1] = 0
    emit DestroyVault(arg1);
    stor0 = 1
}

function borrowToken(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not address(ownerOf[arg1]):
        revert with 0, 'Vault does not exist'
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if address(ownerOf[arg1]) != msg.sender:
        revert with 0, 'Vault is not owned by you'
    if arg2 <= 0:
        revert with 0, 'Must borrow non-zero amount'
    require ext_code.size(sub_570b2b84Address)
    staticcall sub_570b2b84Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e626f72726f77546f6b656e3a2043616e6e6f74206d696e74206f76657220617661696c61626c6520737570706c79,
                    mem[211 len 17]
    if arg2 + vaultDebt[arg1] < vaultDebt[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    require arg2 + vaultDebt[arg1] > vaultDebt[arg1]
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[32]
    require tokenPeg
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_570b2b84Address)
    staticcall sub_570b2b84Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not vaultCollateral[arg1].field_0:
        require 0 >= vaultCollateral[arg1].field_0
        require arg2 + vaultDebt[arg1]
        require (arg2 * tokenPeg) + (vaultDebt[arg1] * tokenPeg) / arg2 + vaultDebt[arg1] != tokenPeg
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if ext_call.return_data[32] * vaultCollateral[arg1].field_0 / vaultCollateral[arg1].field_0 != ext_call.return_data[32]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if not ext_call.return_data[32] * vaultCollateral[arg1].field_0:
        require 0 >= vaultCollateral[arg1].field_0
        require arg2 + vaultDebt[arg1]
        require (arg2 * tokenPeg) + (vaultDebt[arg1] * tokenPeg) / arg2 + vaultDebt[arg1] != tokenPeg
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 10^0:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    require 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 >= vaultCollateral[arg1].field_0
    if not arg2 + vaultDebt[arg1]:
        require 0 >= arg2 + vaultDebt[arg1]
        if not 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
            if 0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
                revert with 0, 'SafeMath: division by zero'
        else:
            if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
                revert with 0, 'SafeMath: division by zero'
        revert
    if (arg2 * tokenPeg) + (vaultDebt[arg1] * tokenPeg) / arg2 + vaultDebt[arg1] != tokenPeg:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    require (arg2 * tokenPeg) + (vaultDebt[arg1] * tokenPeg) >= arg2 + vaultDebt[arg1]
    if not 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
        require 0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
        if not (arg2 * tokenPeg) + (vaultDebt[arg1] * tokenPeg):
            revert with 0, 'SafeMath: division by zero'
        if sub_e5f4dc92 > 0 / (arg2 * tokenPeg) + (vaultDebt[arg1] * tokenPeg):
            revert with 0, 
                        32,
                        58,
                        0x6e426f72726f7720776f756c6420707574207661756c742062656c6f77206d696e696d756d20636f6c6c61746572616c2070657263656e746167,
                        mem[350 len 6]
    else:
        if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        require 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
        if not (arg2 * tokenPeg) + (vaultDebt[arg1] * tokenPeg):
            revert with 0, 'SafeMath: division by zero'
        if sub_e5f4dc92 > 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / (arg2 * tokenPeg) + (vaultDebt[arg1] * tokenPeg):
            revert with 0, 
                        32,
                        58,
                        0x6e426f72726f7720776f756c6420707574207661756c742062656c6f77206d696e696d756d20636f6c6c61746572616c2070657263656e746167,
                        mem[350 len 6]
    vaultDebt[arg1] += arg2
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_570b2b84Address):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(sub_570b2b84Address):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call sub_570b2b84Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
    if arg2 + totalBorrowed < totalBorrowed:
        revert with 0, 'SafeMath: addition overflow'
    totalBorrowed += arg2
    emit BorrowToken(arg1, arg2);
}

function checkCost(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not vaultCollateral[arg1].field_0:
        return 0
    if not vaultDebt[arg1]:
        return 0
    if not address(ownerOf[arg1]):
        revert with 0, 'Vault does not exist'
    if not vaultCollateral[arg1].field_0:
        return 0
    if not vaultDebt[arg1]:
        return 0
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[32]
    require tokenPeg
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_570b2b84Address)
    staticcall sub_570b2b84Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not vaultCollateral[arg1].field_0:
        require 0 >= vaultCollateral[arg1].field_0
        require vaultDebt[arg1]
        require tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if ext_call.return_data[32] * vaultCollateral[arg1].field_0 / vaultCollateral[arg1].field_0 != ext_call.return_data[32]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if not ext_call.return_data[32] * vaultCollateral[arg1].field_0:
        require 0 >= vaultCollateral[arg1].field_0
        require vaultDebt[arg1]
        require tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 10^0:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    require 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 >= vaultCollateral[arg1].field_0
    if not vaultDebt[arg1]:
        require 0 >= vaultDebt[arg1]
        if not 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
            if 0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
                revert with 0, 'SafeMath: division by zero'
        else:
            if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
                revert with 0, 'SafeMath: division by zero'
        revert
    if tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    require tokenPeg * vaultDebt[arg1] >= vaultDebt[arg1]
    if not 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
        require 0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
        if not tokenPeg * vaultDebt[arg1]:
            revert with 0, 'SafeMath: division by zero'
        if 0 / tokenPeg * vaultDebt[arg1] >= sub_e5f4dc92:
            return 0
    else:
        if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        require 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
        if not tokenPeg * vaultDebt[arg1]:
            revert with 0, 'SafeMath: division by zero'
        if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / tokenPeg * vaultDebt[arg1] >= sub_e5f4dc92:
            return 0
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[32]
    require tokenPeg
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_570b2b84Address)
    staticcall sub_570b2b84Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not vaultCollateral[arg1].field_0:
        require 0 >= vaultCollateral[arg1].field_0
        require vaultDebt[arg1]
        require tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if ext_call.return_data[32] * vaultCollateral[arg1].field_0 / vaultCollateral[arg1].field_0 != ext_call.return_data[32]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if not ext_call.return_data[32] * vaultCollateral[arg1].field_0:
        require 0 >= vaultCollateral[arg1].field_0
        require vaultDebt[arg1]
        require tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 10^0:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    require 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 >= vaultCollateral[arg1].field_0
    if not vaultDebt[arg1]:
        require 0 >= vaultDebt[arg1]
        if not 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
            if 0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
                return 0
        else:
            if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
                return 0
        revert
    if tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    require tokenPeg * vaultDebt[arg1] >= vaultDebt[arg1]
    if not 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
        require 0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
    else:
        if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        require 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
    if 0 == tokenPeg * vaultDebt[arg1]:
        return 0
    if not tokenPeg * vaultDebt[arg1]:
        revert with 0, 'SafeMath: division by zero'
    if not 10^sub_c71abb32:
        revert with 0, 'SafeMath: division by zero'
    if not debtRatio:
        revert with 0, 'SafeMath: division by zero'
    return (tokenPeg * vaultDebt[arg1] / 10^sub_c71abb32 / debtRatio)
}

function payBackToken(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_570b2b84Address)
    staticcall sub_570b2b84Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Token balance too low'
    if arg2 > vaultDebt[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x6c5661756c742064656274206c657373207468616e20616d6f756e7420746f2070617920626163,
                    mem[203 len 25]
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not ext_call.return_data[32]:
        if arg2:
            if closingFee * arg2 / arg2 != closingFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 31]
            if closingFee * arg2:
                if tokenPeg * closingFee * arg2 / closingFee * arg2 != tokenPeg:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 31]
        revert with 0, 'SafeMath: division by zero'
    if 10000 * ext_call.return_data[32] / ext_call.return_data[32] != 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 31]
    if not arg2:
        if not 10000 * ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_570b2b84Address):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(sub_570b2b84Address):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[416 len 4] = uint32(arg2)
        call sub_570b2b84Address with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if arg2 > vaultDebt[arg1]:
            revert with 0, 'SafeMath: subtraction overflow'
        vaultDebt[arg1] -= arg2
        if 0 / 10000 * ext_call.return_data[32] > vaultCollateral[arg1].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        vaultCollateral[arg1].field_0 -= 0 / 10000 * ext_call.return_data[32]
        if (0 / 10000 * ext_call.return_data[32]) + vaultCollateral[stor20].field_0 < vaultCollateral[stor20].field_0:
            revert with 0, 'SafeMath: addition overflow'
        vaultCollateral[stor20].field_0 += 0 / 10000 * ext_call.return_data[32]
        if arg2 > totalBorrowed:
            revert with 0, 'SafeMath: subtraction overflow'
        totalBorrowed -= arg2
        emit PayBackToken(arg1, arg2, 0 / 10000 * ext_call.return_data[32]);
    else:
        if closingFee * arg2 / arg2 != closingFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 31]
        if not closingFee * arg2:
            if not 10000 * ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_570b2b84Address):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(sub_570b2b84Address):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[416 len 4] = uint32(arg2)
            call sub_570b2b84Address with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            if arg2 > vaultDebt[arg1]:
                revert with 0, 'SafeMath: subtraction overflow'
            vaultDebt[arg1] -= arg2
            if 0 / 10000 * ext_call.return_data[32] > vaultCollateral[arg1].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            vaultCollateral[arg1].field_0 -= 0 / 10000 * ext_call.return_data[32]
            if (0 / 10000 * ext_call.return_data[32]) + vaultCollateral[stor20].field_0 < vaultCollateral[stor20].field_0:
                revert with 0, 'SafeMath: addition overflow'
            vaultCollateral[stor20].field_0 += 0 / 10000 * ext_call.return_data[32]
            if arg2 > totalBorrowed:
                revert with 0, 'SafeMath: subtraction overflow'
            totalBorrowed -= arg2
            emit PayBackToken(arg1, arg2, 0 / 10000 * ext_call.return_data[32]);
        else:
            if tokenPeg * closingFee * arg2 / closingFee * arg2 != tokenPeg:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 31]
            if not 10000 * ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_570b2b84Address):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(sub_570b2b84Address):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[416 len 4] = uint32(arg2)
            call sub_570b2b84Address with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 480, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            if arg2 > vaultDebt[arg1]:
                revert with 0, 'SafeMath: subtraction overflow'
            vaultDebt[arg1] -= arg2
            if tokenPeg * closingFee * arg2 / 10000 * ext_call.return_data[32] > vaultCollateral[arg1].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            vaultCollateral[arg1].field_0 -= tokenPeg * closingFee * arg2 / 10000 * ext_call.return_data[32]
            if (tokenPeg * closingFee * arg2 / 10000 * ext_call.return_data[32]) + vaultCollateral[stor20].field_0 < vaultCollateral[stor20].field_0:
                revert with 0, 'SafeMath: addition overflow'
            vaultCollateral[stor20].field_0 += tokenPeg * closingFee * arg2 / 10000 * ext_call.return_data[32]
            if arg2 > totalBorrowed:
                revert with 0, 'SafeMath: subtraction overflow'
            totalBorrowed -= arg2
            emit PayBackToken(arg1, arg2, tokenPeg * closingFee * arg2 / 10000 * ext_call.return_data[32]);
}

function withdrawCollateral(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not address(ownerOf[arg1]):
        revert with 0, 'Vault does not exist'
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if address(ownerOf[arg1]) != msg.sender:
        revert with 0, 'Vault is not owned by you'
    if not stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 0
    if arg2 > vaultCollateral[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x735661756c7420646f6573206e6f74206861766520656e6f75676820636f6c6c6174657261,
                    mem[201 len 27]
    if arg2 > vaultCollateral[arg1].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not vaultDebt[arg1]:
        vaultCollateral[arg1].field_0 -= arg2
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
        call collateralAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[324 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    else:
        require ext_code.size(ethPriceSourceAddress)
        staticcall ethPriceSourceAddress.0xfeaf968c with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[32]
        require tokenPeg
        require ext_code.size(collateralAddress)
        staticcall collateralAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_570b2b84Address)
        staticcall sub_570b2b84Address.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(ethPriceSourceAddress)
        staticcall ethPriceSourceAddress.0xfeaf968c with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if not vaultCollateral[arg1].field_0 - arg2:
            require 0 >= vaultCollateral[arg1].field_0 - arg2
            require vaultDebt[arg1]
            require tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        if (vaultCollateral[arg1].field_0 * ext_call.return_data[32]) - (arg2 * ext_call.return_data[32]) / vaultCollateral[arg1].field_0 - arg2 != ext_call.return_data[32]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        if not (vaultCollateral[arg1].field_0 * ext_call.return_data[32]) - (arg2 * ext_call.return_data[32]):
            require 0 >= vaultCollateral[arg1].field_0 - arg2
            require vaultDebt[arg1]
            require tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        if (vaultCollateral[arg1].field_0 * ext_call.return_data[32] * 10^0) - (arg2 * ext_call.return_data[32] * 10^0) / (vaultCollateral[arg1].field_0 * ext_call.return_data[32]) - (arg2 * ext_call.return_data[32]) != 10^0:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        require (vaultCollateral[arg1].field_0 * ext_call.return_data[32] * 10^0) - (arg2 * ext_call.return_data[32] * 10^0) >= vaultCollateral[arg1].field_0 - arg2
        if not vaultDebt[arg1]:
            require 0 >= vaultDebt[arg1]
            if not (vaultCollateral[arg1].field_0 * ext_call.return_data[32] * 10^0) - (arg2 * ext_call.return_data[32] * 10^0):
                if 0 > (vaultCollateral[arg1].field_0 * ext_call.return_data[32] * 10^0) - (arg2 * ext_call.return_data[32] * 10^0):
                    revert with 0, 'SafeMath: division by zero'
            else:
                if (100 * vaultCollateral[arg1].field_0 * ext_call.return_data[32] * 10^0) - (100 * arg2 * ext_call.return_data[32] * 10^0) / (vaultCollateral[arg1].field_0 * ext_call.return_data[32] * 10^0) - (arg2 * ext_call.return_data[32] * 10^0) != 100:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                if (100 * vaultCollateral[arg1].field_0 * ext_call.return_data[32] * 10^0) - (100 * arg2 * ext_call.return_data[32] * 10^0) > (vaultCollateral[arg1].field_0 * ext_call.return_data[32] * 10^0) - (arg2 * ext_call.return_data[32] * 10^0):
                    revert with 0, 'SafeMath: division by zero'
            revert
        if tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        require tokenPeg * vaultDebt[arg1] >= vaultDebt[arg1]
        if not (vaultCollateral[arg1].field_0 * ext_call.return_data[32] * 10^0) - (arg2 * ext_call.return_data[32] * 10^0):
            require 0 > (vaultCollateral[arg1].field_0 * ext_call.return_data[32] * 10^0) - (arg2 * ext_call.return_data[32] * 10^0)
            if not tokenPeg * vaultDebt[arg1]:
                revert with 0, 'SafeMath: division by zero'
            if sub_e5f4dc92 > 0 / tokenPeg * vaultDebt[arg1]:
                revert with 0, 
                            32,
                            62,
                            0x6e5769746864726177616c20776f756c6420707574207661756c742062656c6f77206d696e696d756d20636f6c6c61746572616c2070657263656e746167,
                            mem[418 len 2]
        else:
            if (100 * vaultCollateral[arg1].field_0 * ext_call.return_data[32] * 10^0) - (100 * arg2 * ext_call.return_data[32] * 10^0) / (vaultCollateral[arg1].field_0 * ext_call.return_data[32] * 10^0) - (arg2 * ext_call.return_data[32] * 10^0) != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            require (100 * vaultCollateral[arg1].field_0 * ext_call.return_data[32] * 10^0) - (100 * arg2 * ext_call.return_data[32] * 10^0) > (vaultCollateral[arg1].field_0 * ext_call.return_data[32] * 10^0) - (arg2 * ext_call.return_data[32] * 10^0)
            if not tokenPeg * vaultDebt[arg1]:
                revert with 0, 'SafeMath: division by zero'
            if sub_e5f4dc92 > (100 * vaultCollateral[arg1].field_0 * ext_call.return_data[32] * 10^0) - (100 * arg2 * ext_call.return_data[32] * 10^0) / tokenPeg * vaultDebt[arg1]:
                revert with 0, 
                            32,
                            62,
                            0x6e5769746864726177616c20776f756c6420707574207661756c742062656c6f77206d696e696d756d20636f6c6c61746572616c2070657263656e746167,
                            mem[418 len 2]
        vaultCollateral[arg1].field_0 -= arg2
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(collateralAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[388 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
        call collateralAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0x6e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
    emit WithdrawCollateral(arg1, arg2);
    stor0 = 1
}

function checkExtract(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not vaultCollateral[arg1].field_0:
        return 0
    if not address(ownerOf[arg1]):
        revert with 0, 'Vault does not exist'
    if not vaultCollateral[arg1].field_0:
        return 0
    if not vaultDebt[arg1]:
        return 0
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[32]
    require tokenPeg
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_570b2b84Address)
    staticcall sub_570b2b84Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not vaultCollateral[arg1].field_0:
        require 0 >= vaultCollateral[arg1].field_0
        require vaultDebt[arg1]
        require tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if ext_call.return_data[32] * vaultCollateral[arg1].field_0 / vaultCollateral[arg1].field_0 != ext_call.return_data[32]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if not ext_call.return_data[32] * vaultCollateral[arg1].field_0:
        require 0 >= vaultCollateral[arg1].field_0
        require vaultDebt[arg1]
        require tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 10^0:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    require 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 >= vaultCollateral[arg1].field_0
    if not vaultDebt[arg1]:
        require 0 >= vaultDebt[arg1]
        if not 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
            if 0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
                revert with 0, 'SafeMath: division by zero'
        else:
            if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
                revert with 0, 'SafeMath: division by zero'
        revert
    if tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    require tokenPeg * vaultDebt[arg1] >= vaultDebt[arg1]
    if not 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
        require 0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
        if not tokenPeg * vaultDebt[arg1]:
            revert with 0, 'SafeMath: division by zero'
        if 0 / tokenPeg * vaultDebt[arg1] >= sub_e5f4dc92:
            return 0
    else:
        if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        require 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
        if not tokenPeg * vaultDebt[arg1]:
            revert with 0, 'SafeMath: division by zero'
        if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / tokenPeg * vaultDebt[arg1] >= sub_e5f4dc92:
            return 0
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[32]
    require tokenPeg
    require ext_code.size(collateralAddress)
    staticcall collateralAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_570b2b84Address)
    staticcall sub_570b2b84Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(ext_call.return_data[0]) > uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not vaultCollateral[arg1].field_0:
        require 0 >= vaultCollateral[arg1].field_0
        require vaultDebt[arg1]
        require tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if ext_call.return_data[32] * vaultCollateral[arg1].field_0 / vaultCollateral[arg1].field_0 != ext_call.return_data[32]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if not ext_call.return_data[32] * vaultCollateral[arg1].field_0:
        require 0 >= vaultCollateral[arg1].field_0
        require vaultDebt[arg1]
        require tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 10^0:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    require 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 >= vaultCollateral[arg1].field_0
    if not vaultDebt[arg1]:
        require 0 >= vaultDebt[arg1]
        if not 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
            require 0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
        else:
            if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 100:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            require 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
        if not debtRatio:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / debtRatio:
            return 0
        require ext_code.size(ethPriceSourceAddress)
        staticcall ethPriceSourceAddress.0xfeaf968c with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if not 0 / debtRatio:
            if not ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[32])
        if gainRatio * 0 / debtRatio / 0 / debtRatio != gainRatio:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        if not ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        return (gainRatio * 0 / debtRatio / 1000 / ext_call.return_data[32])
    if tokenPeg * vaultDebt[arg1] / vaultDebt[arg1] != tokenPeg:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    require tokenPeg * vaultDebt[arg1] >= vaultDebt[arg1]
    if not 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0:
        require 0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
    else:
        if 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 / 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 != 100:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
        require 100 * 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0 > 10^0 * ext_call.return_data[32] * vaultCollateral[arg1].field_0
    if not debtRatio:
        revert with 0, 'SafeMath: division by zero'
    if not tokenPeg * vaultDebt[arg1] / debtRatio:
        return 0
    require ext_code.size(ethPriceSourceAddress)
    staticcall ethPriceSourceAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not tokenPeg * vaultDebt[arg1] / debtRatio:
        if not ext_call.return_data[32]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[32])
    if gainRatio * tokenPeg * vaultDebt[arg1] / debtRatio / tokenPeg * vaultDebt[arg1] / debtRatio != gainRatio:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
    if not ext_call.return_data[32]:
        revert with 0, 'SafeMath: division by zero'
    return (gainRatio * tokenPeg * vaultDebt[arg1] / debtRatio / 1000 / ext_call.return_data[32])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not address(ownerOf[arg3]):
        revert with 0, 32, 44, 0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not address(ownerOf[arg3]):
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if msg.sender == address(ownerOf[arg3]):
        if not address(ownerOf[arg3]):
            revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
        if address(ownerOf[arg3]) != arg1:
            revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[237 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
        if not approved[arg3]:
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            address(ownerOf[arg3]) = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if tokenOfOwnerByIndex[address(arg1)] - 1 != stor7[arg3]:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
            tokenOfOwnerByIndex[address(arg1)]--
            if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                idx = tokenOfOwnerByIndex[address(arg1)] - 1
                while tokenOfOwnerByIndex[address(arg1)] > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx] = 0
                    idx = idx + 1
                    continue 
            stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
            tokenOfOwnerByIndex[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
            if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                if ext_code.hash(arg2):
                    mem[452 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                    mem[640 len 4] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 800
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 571 len 14]
                    require return_data.size >= 32
                    if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 571 len 14]
        else:
            approved[arg3] = 0
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            address(ownerOf[arg3]) = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if tokenOfOwnerByIndex[address(arg1)] - 1 != stor7[arg3]:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
            tokenOfOwnerByIndex[address(arg1)]--
            if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        mem[452 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                        mem[640 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 800
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 571 len 14]
                        require return_data.size >= 32
                        if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 571 len 14]
            else:
                idx = tokenOfOwnerByIndex[address(arg1)] - 1
                while tokenOfOwnerByIndex[address(arg1)] > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx] = 0
                    idx = idx + 1
                    continue 
                stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        mem[452 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                        mem[640 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[612 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 571 len 14]
                        require return_data.size >= 32
                        if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 571 len 14]
    else:
        if not address(ownerOf[arg3]):
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
        if approved[arg3] == msg.sender:
            if not address(ownerOf[arg3]):
                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
            if address(ownerOf[arg3]) != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[237 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
            if not approved[arg3]:
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                address(ownerOf[arg3]) = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[452 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[640 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 800
                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args 0, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 800
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
            else:
                approved[arg3] = 0
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                address(ownerOf[arg3]) = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 != stor7[arg3]:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        mem[452 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                        mem[640 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 800
                        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 571 len 14]
                        require return_data.size >= 32
                        if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 571 len 14]
        else:
            if not stor5[address(stor2[arg3])][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x654552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[245 len 15]
            if not address(ownerOf[arg3]):
                revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
            if address(ownerOf[arg3]) != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[237 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
            if not approved[arg3]:
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                address(ownerOf[arg3]) = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 800
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args 0, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[452 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[640 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 800
                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
            else:
                approved[arg3] = 0
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                address(ownerOf[arg3]) = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args 0, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 'sERC721: transfer to non ERC721Receiver implementefer to non ERC'
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[452 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                                mem[640 len 4] = 0
                                call arg2.0x80 with:
                                     gas gas_remaining wei
                                    args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 800
                                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                                require return_data.size >= 32
                                if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[ceil32(return_data.size) + 571 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[452 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[640 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[612 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 800
                            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 571 len 14]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not address(ownerOf[arg3]):
        revert with 0, 
                    32,
                    44,
                    0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 240 len 20]
    if not address(ownerOf[arg3]):
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if msg.sender == address(ownerOf[arg3]):
        if not address(ownerOf[arg3]):
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 237 len 23]
        if address(ownerOf[arg3]) != arg1:
            revert with 0, 
                        32,
                        41,
                        0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                        mem[ceil32(arg4.length) + 237 len 23]
        if not arg2:
            revert with 0, 
                        32,
                        36,
                        0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[ceil32(arg4.length) + 232 len 28]
        if not approved[arg3]:
            mem[ceil32(arg4.length) + 128] = 30
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            address(ownerOf[arg3]) = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if tokenOfOwnerByIndex[address(arg1)] - 1 != stor7[arg3]:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
            tokenOfOwnerByIndex[address(arg1)]--
            if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                idx = tokenOfOwnerByIndex[address(arg1)] - 1
                while tokenOfOwnerByIndex[address(arg1)] > idx:
                    tokenOfOwnerByIndex[address(arg1)][idx] = 0
                    idx = idx + 1
                    continue 
            stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
            tokenOfOwnerByIndex[address(arg2)]++
            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
            if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                if ext_code.hash(arg2):
                    mem[ceil32(arg4.length) + 388] = 128
                    mem[ceil32(arg4.length) + 420] = arg4.length
                    mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                    if not arg4.length % 32:
                        mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                        mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                        call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                             gas gas_remaining wei
                            args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                        if not return_data.size:
                            if not ext_call.success:
                                if arg4.length:
                                    revert with arg4[all]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                            require arg4.length >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                        else:
                            mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                    else:
                        mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                        mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                        mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                        call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                             gas gas_remaining wei
                            args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                        if not return_data.size:
                            if not ext_call.success:
                                if arg4.length:
                                    revert with arg4[all]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                            require arg4.length >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                        else:
                            mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                            require return_data.size >= 32
                            if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
        else:
            approved[arg3] = 0
            mem[ceil32(arg4.length) + 128] = 30
            if 1 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)]--
            balanceOf[address(arg2)]++
            address(ownerOf[arg3]) = arg2
            emit Transfer(arg1, arg2, arg3);
            if 1 > tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
            else:
                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                tokenOfOwnerByIndex[address(arg1)]--
                if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                else:
                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                        idx = idx + 1
                        continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
    else:
        if not address(ownerOf[arg3]):
            revert with 0, 
                        32,
                        44,
                        0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 240 len 20]
        if approved[arg3] == msg.sender:
            if not address(ownerOf[arg3]):
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(arg4.length) + 237 len 23]
            if address(ownerOf[arg3]) != arg1:
                revert with 0, 
                            32,
                            41,
                            0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                            mem[ceil32(arg4.length) + 237 len 23]
            if not arg2:
                revert with 0, 
                            32,
                            36,
                            0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + 232 len 28]
            if not approved[arg3]:
                mem[ceil32(arg4.length) + 128] = 30
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                address(ownerOf[arg3]) = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
            else:
                approved[arg3] = 0
                mem[ceil32(arg4.length) + 128] = 30
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                address(ownerOf[arg3]) = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                    stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2):
                            mem[ceil32(arg4.length) + 388] = 128
                            mem[ceil32(arg4.length) + 420] = arg4.length
                            mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                            if not arg4.length % 32:
                                mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                else:
                                    mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                     gas gas_remaining wei
                                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if arg4.length:
                                            revert with arg4[all]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    require arg4.length >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                    require return_data.size >= 32
                                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
        else:
            if not stor5[address(stor2[arg3])][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x654552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 245 len 15]
            if not address(ownerOf[arg3]):
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(arg4.length) + 237 len 23]
            if address(ownerOf[arg3]) != arg1:
                revert with 0, 
                            32,
                            41,
                            0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                            mem[ceil32(arg4.length) + 237 len 23]
            if not arg2:
                revert with 0, 
                            32,
                            36,
                            0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + 232 len 28]
            if not approved[arg3]:
                mem[ceil32(arg4.length) + 128] = 30
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                address(ownerOf[arg3]) = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
            else:
                approved[arg3] = 0
                mem[ceil32(arg4.length) + 128] = 30
                if 1 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)]--
                balanceOf[address(arg2)]++
                address(ownerOf[arg3]) = arg2
                emit Transfer(arg1, arg2, arg3);
                if 1 > tokenOfOwnerByIndex[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenOfOwnerByIndex[address(arg1)] - 1 == stor7[arg3]:
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                else:
                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                    require stor7[arg3] < tokenOfOwnerByIndex[address(arg1)]
                    tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                    stor7[stor6[address(arg1)][stor6[address(arg1)]]] = stor7[arg3]
                    tokenOfOwnerByIndex[address(arg1)]--
                    if tokenOfOwnerByIndex[address(arg1)] <= tokenOfOwnerByIndex[address(arg1)] - 1:
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                    else:
                        idx = tokenOfOwnerByIndex[address(arg1)] - 1
                        while tokenOfOwnerByIndex[address(arg1)] > idx:
                            tokenOfOwnerByIndex[address(arg1)][idx] = 0
                            idx = idx + 1
                            continue 
                        stor7[arg3] = tokenOfOwnerByIndex[address(arg2)]
                        tokenOfOwnerByIndex[address(arg2)]++
                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                mem[ceil32(arg4.length) + 388] = 128
                                mem[ceil32(arg4.length) + 420] = arg4.length
                                mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                if not arg4.length % 32:
                                    mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
                                    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (2 * floor32(arg4.length + 164)) + -(arg4.length + 164 % 32) + -arg4.length + 124 len arg4.length + 164 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                                    else:
                                        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 571 len 14]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (2 * floor32(floor32(arg4.length) + 196)) + -(floor32(arg4.length) + 196 % 32) + -floor32(arg4.length) + 92 len floor32(arg4.length) + 196 % 32]
                                    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
                                         gas gas_remaining wei
                                        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if arg4.length:
                                                revert with arg4[all]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                        require arg4.length >= 32
                                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
                                        require return_data.size >= 32
                                        if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 
                                                        32,
                                                        50,
                                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 603 len 14]
}



}
