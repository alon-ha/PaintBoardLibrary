using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Paint.Board.Library.RNPaintBoardLibrary
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNPaintBoardLibraryModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNPaintBoardLibraryModule"/>.
        /// </summary>
        internal RNPaintBoardLibraryModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNPaintBoardLibrary";
            }
        }
    }
}
