contract main {




// =====================  Runtime code  =====================


const BUYBACK_INTERVAL = (4 * 3600)

const BURN_ADDRESS = 57005


address owner;
address pangolinRouterAddress;
address AYIELDAddress;
uint16 stor4; offset 144
address USDCAddress;
uint256 startTime;
uint256 buybackAmount;
uint256 buybackCounter;
uint32 stor9;
address devaddr;
uint256 stor9;
uint256 lastBuybackIndex;
address _operatorAddress;

function getBuybackAmount() payable {
    return buybackAmount
}

function lastBuybackTime() payable {
    return lastBuybackIndex
}

function pangolinRouter() payable {
    return pangolinRouterAddress
}

function getLastBuybackIndex() payable {
    return lastBuybackIndex
}

function _operator() payable {
    return _operatorAddress
}

function startTime() payable {
    return startTime
}

function USDC() payable {
    return USDCAddress
}

function owner() payable {
    return owner
}

function devaddr() payable {
    return address(devaddr)
}

function getBuybackCounter() payable {
    return buybackCounter
}

function AYIELD() payable {
    return AYIELDAddress
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

function getUSDCLeft() payable {
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function withdrawFunds() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(USDCAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call USDCAddress with:
       funct uint32(stor9)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor9):
            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit 0x23ee1b87: ext_call.return_data[0], msg.sender
}

function buybackAndBurn() payable {
    if block.timestamp <= startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0xfe6275796261636b416e644275726e3a204275796261636b206f6e6c7920617661696c61626c65206f6e6365206661726d696e67207374617274,
                    mem[222 len 6]
    if block.timestamp >= lastBuybackIndex:
        require ext_code.size(USDCAddress)
        staticcall USDCAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(USDCAddress)
            call USDCAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args pangolinRouterAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(AYIELDAddress)
            call AYIELDAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args pangolinRouterAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[388 len 0] = None
            require ext_code.size(pangolinRouterAddress)
            call pangolinRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if buybackAmount < buybackAmount:
                revert with 0, 'SafeMath: addition overflow'
            if buybackCounter + 1 < buybackCounter:
                revert with 0, 'SafeMath: addition overflow'
            buybackCounter++
            require ext_code.size(AYIELDAddress)
            staticcall AYIELDAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
            if ext_code.size(AYIELDAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = unknown_0xa9059cbb(?????), 0, 0, ext_call.return_data[0 len 28]
            mem[420 len 0] = 0
            call AYIELDAddress.0xdead with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with stor4
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
            if block.timestamp + (4 * 3600) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            lastBuybackIndex = block.timestamp + (4 * 3600)
            emit BuybackAndBurn(0, buybackAmount, buybackCounter);
        else:
            require ext_call.return_data[0]
            if 6 * ext_call.return_data[0] / ext_call.return_data[0] != 6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(USDCAddress)
            call USDCAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args pangolinRouterAddress, 6 * ext_call.return_data[0] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(AYIELDAddress)
            call AYIELDAddress.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args pangolinRouterAddress, 6 * ext_call.return_data[0] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[388 len 0] = None
            require ext_code.size(pangolinRouterAddress)
            call pangolinRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 6 * ext_call.return_data[0] / 100, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if buybackAmount + (6 * ext_call.return_data[0] / 100) < buybackAmount:
                revert with 0, 'SafeMath: addition overflow'
            buybackAmount += 6 * ext_call.return_data[0] / 100
            if buybackCounter + 1 < buybackCounter:
                revert with 0, 'SafeMath: addition overflow'
            buybackCounter++
            require ext_code.size(AYIELDAddress)
            staticcall AYIELDAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
            if ext_code.size(AYIELDAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = unknown_0xa9059cbb(?????), 0, 0, ext_call.return_data[0 len 28]
            call AYIELDAddress with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with stor4
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
            if block.timestamp + (4 * 3600) < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            lastBuybackIndex = block.timestamp + (4 * 3600)
            emit BuybackAndBurn(6 * ext_call.return_data[0] / 100, buybackAmount, buybackCounter);
    else:
        if not lastBuybackIndex:
            require ext_code.size(USDCAddress)
            staticcall USDCAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(USDCAddress)
                call USDCAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pangolinRouterAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(AYIELDAddress)
                call AYIELDAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pangolinRouterAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[388 len 0] = None
                require ext_code.size(pangolinRouterAddress)
                call pangolinRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if buybackAmount < buybackAmount:
                    revert with 0, 'SafeMath: addition overflow'
                if buybackCounter + 1 < buybackCounter:
                    revert with 0, 'SafeMath: addition overflow'
                buybackCounter++
                require ext_code.size(AYIELDAddress)
                staticcall AYIELDAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(AYIELDAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), 0, 0, ext_call.return_data[0 len 28]
                mem[420 len 0] = 0
                call AYIELDAddress.0xdead with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with stor4
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
                if block.timestamp + (4 * 3600) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                lastBuybackIndex = block.timestamp + (4 * 3600)
                emit BuybackAndBurn(0, buybackAmount, buybackCounter);
            else:
                require ext_call.return_data[0]
                if 6 * ext_call.return_data[0] / ext_call.return_data[0] != 6:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(USDCAddress)
                call USDCAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pangolinRouterAddress, 6 * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(AYIELDAddress)
                call AYIELDAddress.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pangolinRouterAddress, 6 * ext_call.return_data[0] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[388 len 0] = None
                require ext_code.size(pangolinRouterAddress)
                call pangolinRouterAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 6 * ext_call.return_data[0] / 100, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if buybackAmount + (6 * ext_call.return_data[0] / 100) < buybackAmount:
                    revert with 0, 'SafeMath: addition overflow'
                buybackAmount += 6 * ext_call.return_data[0] / 100
                if buybackCounter + 1 < buybackCounter:
                    revert with 0, 'SafeMath: addition overflow'
                buybackCounter++
                require ext_code.size(AYIELDAddress)
                staticcall AYIELDAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if ext_code.size(AYIELDAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), 0, 0, ext_call.return_data[0 len 28]
                mem[420 len 0] = 0
                call AYIELDAddress.0xdead with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with stor4
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
                if block.timestamp + (4 * 3600) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                lastBuybackIndex = block.timestamp + (4 * 3600)
                emit BuybackAndBurn(6 * ext_call.return_data[0] / 100, buybackAmount, buybackCounter);
}



}
