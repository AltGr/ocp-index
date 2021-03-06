(**************************************************************************)
(*                                                                        *)
(*  Copyright 2013 OCamlPro                                               *)
(*                                                                        *)
(*  All rights reserved.  This file is distributed under the terms of     *)
(*  the GNU Public License version 3.0.                                   *)
(*                                                                        *)
(*  This software is distributed in the hope that it will be useful,      *)
(*  but WITHOUT ANY WARRANTY; without even the implied warranty of        *)
(*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *)
(*  GNU General Public License for more details.                          *)
(*                                                                        *)
(**************************************************************************)


(** This module contains common command-line definitions for ocp-index or other
    tools using its API. Relies on Cmdliner. *)

(** The type for common command-line options *)
type t = {
  lib_info: LibIndex.t;
  color: bool;
  filter: LibIndex.info -> bool;
  project_root: string option;
}

(** The cmdliner term to get the common options and create the [LibIndex.t]
    structure *)
val common_opts : t Cmdliner.Term.t
